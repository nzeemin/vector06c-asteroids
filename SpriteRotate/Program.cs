using System;
using System.Collections.Generic;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;
using System.Drawing.Text;
using System.IO;
using System.Linq;
using System.Text;
// ReSharper disable IdentifierTypo

namespace SpriteRotate
{
    class Program
    {
        static void Main(string[] args)
        {
            PrepareFont();
            //PrepareSpritesImage();
            PrepareSpritesText();
            PrepareTitleScreen();
            PrepareSineTable();
        }

        static void PrepareFont()
        {
            using (var writer = new StreamWriter("astrofont.asm"))
            {
                var bmp = new Bitmap(@"..\astrofont.png");

                writer.WriteLine("Font:");
                for (int row = 0; row < 4; row++)
                {
                    for (int col = 0; col < 16; col++)
                    {
                        int x = col * 8;
                        int y = row * 13;
                        var octets = new byte[12];
                        var ch = (char)(' ' + col + row * 16);

                        if (ch > '9' && ch <'A')
                            continue;

                        for (int i = 0; i < 12; i++)
                        {
                            int val = 0;
                            for (int b = 0; b < 8; b++)
                            {
                                Color c = bmp.GetPixel(x + b, y + i);
                                int v = (c.GetBrightness() > 0.5f) ? 0 : 1;
                                val |= (v << (7 - b));
                            }

                            octets[i] = (byte)val;
                        }

                        writer.Write($"  DB ");
                        for (int i = 0; i < 12; i++)
                        {
                            writer.Write($"${octets[i]:X2}");
                            if (i < 11) writer.Write(",");
                        }

                        writer.Write($"  ; {ch}");
                        writer.WriteLine();
                    }
                }

                Console.WriteLine("astrofont.asm saved");
            }
        }

        static void PrepareTitleScreen()
        {
            var bmp = new Bitmap(@"..\astrotscr.png");
            var palette = new Color[]
            {
                Color.FromArgb(0, 0, 0),
                Color.FromArgb(0, 0, 255),
                Color.FromArgb(255, 0, 0),
                Color.FromArgb(255, 0, 255),
                Color.FromArgb(0, 255, 0),
                Color.FromArgb(0, 255, 255),
                Color.FromArgb(255, 255, 0),
                Color.FromArgb(255, 255, 255),
            };

            var planes = new[] { new byte[8192], new byte[8192], new byte[8192] };

            for (int col = 0; col < 32; col++)
            {
                for (int row = 0; row < 256; row++)
                {
                    int b0 = 0, b1 = 0, b2 = 0;
                    for (int b = 0; b < 8; b++)
                    {
                        var color = bmp.GetPixel(col * 8 + b, 255 - row);

                        int index = -1;
                        for (int i = 0; i < 8; i++)
                        {
                            if (palette[i] == color)
                            {
                                index = i;
                                break;
                            }
                        }

                        if (index == -1)
                            Console.WriteLine($"Color not found: {color}");

                        b0 = b0 << 1;
                        b0 |= index & 1;
                        b1 = b1 << 1;
                        b1 |= (index & 2) >> 1;
                        b2 = b2 << 1;
                        b2 |= (index & 4) >> 2;
                    }

                    planes[0][col * 256 + row] = (byte)b0;
                    planes[1][col * 256 + row] = (byte)b1;
                    planes[2][col * 256 + row] = (byte)b2;
                }
            }

            //var rnd = new Random();
            //rnd.NextBytes(planes[0]);

            const string outfilename = "astrotscr.asm";
            using (var writer = new StreamWriter(outfilename))
            {
                writer.WriteLine("TitleScreen:");
                WriteByteArray(planes[2], writer);
                writer.WriteLine("TitleScreen1:");
                WriteByteArray(planes[1], writer);
                writer.WriteLine("TitleScreen0:");
                WriteByteArray(planes[0], writer);
            }

            Console.WriteLine($"{outfilename} saved");
        }

        static void PrepareSineTable()
        {
            const string outfilename = "astrosine.asm";
            const double SineMax = 52.0;

            using (var writer = new StreamWriter(outfilename))
            {
                writer.WriteLine("SineTbl:");
                for (int dir = 0; dir < 32; dir++)
                {
                    if (dir % 16 == 0)
                        writer.Write("  db\t");
                    var v = Math.Round(Math.Sin(Math.PI / 16.0 * dir) * SineMax, MidpointRounding.AwayFromZero);
                    if (dir % 16 > 0)
                        writer.Write(",");
                    writer.Write(v);
                    if (dir % 16 == 15)
                        writer.WriteLine();
                }
            }

            Console.WriteLine($"{outfilename} saved");
        }

        static byte GetNextValue(byte[] bytes, int index, byte x1skip = 0, byte x2skip = 0)
        {
            for (int n = index; n < bytes.Length; n++)
            {
                byte b = bytes[n];
                if (b == 0 || b == x1skip || b == x2skip)
                    continue;
                return b;
            }

            return 0;
        }

        static void WriteSpriteCodeSkipRows(int skiprows, bool order, StreamWriter writer)
        {
            if (skiprows > 4)
            {
                writer.WriteLine("  ld a,l");
                writer.WriteLine("  " + (order ? "sub " : "add a,") + $"${skiprows:X2}\t\t; skip {skiprows} rows");
                writer.WriteLine("  ld l,a");
            }
            else
            {
                for (int i = 0; i < skiprows; i++)
                    writer.WriteLine("  " + (order ? "dec l" : "inc l")); // next row
            }
        }

        static bool IsAllZeroes(byte[] octets, int idx, int len)
        {
            for (int i = idx; i < idx + len; i++)
            {
                if (octets[i] != 0)
                    return false;
            }
            return true;
        }

        static void WriteSprite32x32Code(byte[] octets, StreamWriter writer)
        {
            const int cols = 4;
            const int rows = 32;

            // First, unroll the snake into linear order
            byte[] bytes = new byte[octets.Length];
            for (int n = 0; n < cols * rows; n++)
            {
                int col = n / rows;
                bool order = (col % 2) == 0;
                if (order)
                    bytes[n] = octets[n];
                else
                    bytes[n] = octets[col * rows + rows - 1 - (n - col * rows)];
            }

            // Now write the code
            byte b = 0, c = 0, d = 0, e = 0, skiprows = 0;
            for (int n = 0; n < cols * rows; n++)
            {
                int col = n / rows;
                bool order = (col % 2) == 0;
                int nrow = n - col * rows;  // 0..31
                int row = order ? nrow : rows - 1 - nrow;

                if (nrow == 0 && col > 0) // it's the first row, not the first column
                {
                    bool lastColumnIsEmpty = (col == 3 && IsAllZeroes(octets, 3 * rows, rows));
                    if (!lastColumnIsEmpty)
                    {
                        if (skiprows > 0)
                        {
                            if (bytes[n] == 0) // the new column has zero byte at the column start
                            {
                                skiprows--;
                                if (skiprows > 0)
                                    WriteSpriteCodeSkipRows(skiprows, !order, writer);
                                writer.WriteLine("  \t\t\t; skipping zero byte");
                                writer.WriteLine($"  call NextColumn\t; col {col}");
                                writer.WriteLine("  \t\t\t; skipping zero byte");
                                skiprows = 0;
                                continue; // skipping this zero byte at the column start
                            }

                            WriteSpriteCodeSkipRows(skiprows, !order, writer);
                            skiprows = 0;
                        }

                        writer.WriteLine($"  call NextColumn\t; col {col}");
                    }
                }

                byte a = bytes[n];

                if (a == 0 && nrow < 31)
                    skiprows++;

                if (a != 0)
                {
                    if (skiprows > 0)
                    {
                        WriteSpriteCodeSkipRows(skiprows, order, writer);
                        skiprows = 0;
                    }

                    if (a != b && a != c && a != d && a != e)
                    {
                        byte v1 = GetNextValue(bytes, n);
                        byte v2 = GetNextValue(bytes, n, v1);
                        byte v3 = GetNextValue(bytes, n, v1, v2);
                        //TODO: check for zeroes
                        if (b == 0 && c == 0)
                        {
                            b = v2; c = v1;
                            writer.WriteLine($"  ld bc,${v2:X2}{v1:X2}");
                        }
                        else if (d == 0 && e == 0)
                        {
                            d = v2; e = v1;
                            writer.WriteLine($"  ld de,${v2:X2}{v1:X2}");
                        }
                        else if (v2 != 0 && (d == v2 || e == v2))
                        {
                            b = v3; c = v1;
                            writer.WriteLine($"  ld bc,${v3:X2}{v1:X2}");
                        }
                        else if (v2 != 0 && (b == v2 || c == v2))
                        {
                            d = v3; e = v1;
                            writer.WriteLine($"  ld de,${v3:X2}{v1:X2}");
                        }
                        else
                        {
                            d = v2; e = v1;
                            writer.WriteLine($"  ld de,${v2:X2}{v1:X2}");
                        }
                    }

                    if (a == b)
                        writer.WriteLine("  ld a,b");
                    else if (a == c)
                        writer.WriteLine("  ld a,c");
                    else if (a == d)
                        writer.WriteLine("  ld a,d");
                    else if (a == e)
                        writer.WriteLine("  ld a,e");
                    writer.WriteLine("  xor (hl)");
                    writer.WriteLine($"  ld (hl),a\t\t; col {col} row {row} = ${a:X2}");

                    if (nrow < 31)
                        skiprows = 1;
                }
            }

            writer.WriteLine("  ret");
        }

        static byte[] PrepareSpriteArray(Bitmap bmp, int x, int y, int cols, int rows)
        {
            var octets = new byte[cols * rows];
            for (int col = 0; col < cols; col++)
            {
                for (int row = 0; row < rows; row++)
                {
                    int val = 0;
                    for (int b = 0; b < 8; b++)
                    {
                        Color c = bmp.GetPixel(x + col * 8 + b, y + row);
                        int v = (c.GetBrightness() > 0.5f) ? 0 : 1;
                        val |= (v << (7 - b));
                    }

                    octets[col * rows + row] = (byte)val;
                }
            }

            return octets;
        }

        static byte[] PrepareSpriteArrayEvenRows(Bitmap bmp, int x, int y, int cols, int rows)
        {
            var octets = new byte[cols * rows];
            for (int col = 0; col < cols; col++)
            {
                for (int row = 0; row < rows; row++)
                {
                    int val = 0;
                    for (int b = 0; b < 8; b++)
                    {
                        Color c = bmp.GetPixel(x + col * 8 + b, y + row * 2);
                        int v = (c.GetBrightness() > 0.5f) ? 0 : 1;
                        val |= (v << (7 - b));
                    }

                    octets[col * rows + row] = (byte)val;
                }
            }

            return octets;
        }

        static void WriteByteArray(byte[] octets, StreamWriter writer)
        {
            int cnt = 0;
            for (int i = 0; i < octets.Length; i++)
            {
                if (cnt == 0)
                {
                    writer.Write("  DB ");
                }
                else
                {
                    writer.Write(",");
                }

                writer.Write($"${octets[i]:X2}");

                cnt++;
                if (cnt >= 16)
                {
                    writer.WriteLine();
                    cnt = 0;
                }
            }
            if (cnt != 0)
                writer.WriteLine();
        }

        static void PrepareSprite(Bitmap bmp, int x, int y, int cols, int rows, StreamWriter writer)
        {
            var octets = PrepareSpriteArray(bmp, x, y, cols, rows);
            WriteByteArray(octets, writer);
        }

        static void ShiftByteArray(byte[] octets, int cols, int rows)
        {
            for (int r = 0; r < rows; r++)
            {
                bool carry = false;
                for (int c = 0; c < cols; c++)
                {
                    int index = c * rows + r;

                    byte b = octets[index];
                    bool newcarry = (b & 1) != 0;
                    b = (byte) (b >> 1);
                    if (carry) b = (byte) (b | 0x80);
                    octets[index] = b;

                    carry = newcarry;
                }
            }
        }

        static void PrepareSpriteWithAllShifts(Bitmap bmp, int x, int y, int cols, int rows, string name, StreamWriter writer)
        {
            var octets = PrepareSpriteArray(bmp, x, y, cols, rows);

            writer.WriteLine($"{name}S0:");
            WriteByteArray(octets, writer);

            for (int j = 1; j < 8; j++)
            {
                ShiftByteArray(octets, cols, rows);
                writer.WriteLine($"{name}S{j}:");
                WriteByteArray(octets, writer);
            }
        }

        static void PrepareSpriteEvenRowsWithAllShifts(Bitmap bmp, int x, int y, int cols, int rows, string name, StreamWriter writer)
        {
            var octets = PrepareSpriteArrayEvenRows(bmp, x, y, cols, rows);

            writer.WriteLine($"{name}S0:");
            WriteByteArray(octets, writer);

            for (int j = 1; j < 8; j++)
            {
                ShiftByteArray(octets, cols, rows);
                writer.WriteLine($"{name}S{j}:");
                WriteByteArray(octets, writer);
            }
        }

        static void PrepareSpritesText()
        {
            var bmp = new Bitmap(@"..\astrosprs.png");

            using (var writer = new StreamWriter("astrosprs.asm"))
            {
                // Ship
                for (int i = 0; i < 17; i++)
                {
                    PrepareSpriteWithAllShifts(bmp, 7 + i * 24, 24, 3, 16, $"Ship{i:00}", writer);
                }

                // Ship + flame
                for (int i = 0; i < 17; i++)
                {
                    PrepareSpriteWithAllShifts(bmp, 7 + i * 24, 40, 3, 16, $"ShipF{i:00}", writer);
                }

                // UFO
                PrepareSpriteWithAllShifts(bmp, 8, 64, 3, 16, "Ufo", writer);

                // Shrapnel
                PrepareSpriteEvenRowsWithAllShifts(bmp, 72, 64, 3, 8, "Shrapnel", writer);

                // Debris
                PrepareSpriteWithAllShifts(bmp, 144, 64, 2, 8, "Debris1", writer);
                PrepareSpriteWithAllShifts(bmp, 144, 72, 2, 8, "Debris2", writer);

                // Rocks
                for (int i = 0; i < 4; i++)
                {
                    PrepareSpriteWithAllShifts(bmp, 16 + 16 * i, 88, 2, 8, $"RockS{i}", writer);
                }
                for (int i = 0; i < 4; i++)
                {
                    PrepareSpriteWithAllShifts(bmp, 16 + 24 * i, 104, 3, 16, $"RockM{i}", writer);
                }

                Console.WriteLine("astrosprs.asm saved");
            }

            using (var writer = new StreamWriter("astrosprt.asm"))
            {
                for (int i = 0; i < 4; i++)
                {
                    var octets = PrepareSpriteArray(bmp, 16 + 32 * i, 128, 4, 32);

                    writer.WriteLine($"DrawRockL{i}S0:");
                    WriteSprite32x32Code(octets, writer);

                    for (int j = 1; j < 8; j++)
                    {
                        ShiftByteArray(octets, 4, 32);
                        writer.WriteLine($"DrawRockL{i}S{j}:");
                        WriteSprite32x32Code(octets, writer);
                    }
                }
            }

            Console.WriteLine("astrosprt.asm saved");
        }

        static Graphics _g = null;
        static Brush _brush = new SolidBrush(Color.Black);
        static Pen _pen = new Pen(Color.Black, 1f);
        static float xc = 0, yc = 0;
        static float _scale = 1f;
        static float _dotsize = 1f;

        static void DrawShipEast(bool flames)
        {
            DrawSVEC(2, 0, -3, -2);
            DrawSVEC(3, 12, 0, 2);
            DrawSVEC(3, 11, -1, 1);
            DrawVEC(6, 12, 768, -256);
            DrawVEC(6, 12, -768, -256);
            DrawSVEC(3, 11, 1, 1);
            if (flames)
            {
                DrawSVEC(3, 12, -2, 1);
                DrawSVEC(3, 12, 2, 1);
            }
        }
        static void DrawShipNorth()
        {
            DrawSVEC(2, 0, 2, -3);
            DrawSVEC(3, 12, -2, 0);
            DrawSVEC(3, 12, -1, -1);
            DrawVEC(6, 12, 256, 768);
            DrawVEC(6, 12, 256, -768);
            DrawSVEC(3, 12, -1, 1);
        }
        static void DrawUfo()
        {
            DrawSVEC(2, 0, -1, 1);
            DrawSVEC(3, 12, 2, 0);
            DrawSVEC(2, 0, 3, -2);
            DrawVEC(6, 13, -640, 0);
            DrawSVEC(2, 13, 3, -2);
            DrawSVEC(3, 12, 2, 0);
            DrawSVEC(2, 13, 3, 2);
            DrawSVEC(2, 13, -3, 2);
            DrawSVEC(2, 12, -1, 2);
            DrawSVEC(3, 12, -1, 0);
            DrawSVEC(2, 12, -1, -2);
            DrawSVEC(2, 13, -3, -2);
        }

        static void DrawRock1()
        {
            DrawSVEC(3, 0, 0, 1);
            DrawSVEC(3, 7, 1, 1);
            DrawSVEC(3, 7, 1, -1);
            DrawSVEC(2, 7, -1, -2);
            DrawSVEC(2, 7, 1, -2);
            DrawSVEC(2, 8, -3, -2);
            DrawSVEC(2, 8, -3, 0);
            DrawSVEC(3, 7, -1, 1);
            DrawSVEC(3, 7, 0, 2);
            DrawSVEC(3, 7, 1, 1);
            DrawSVEC(3, 7, 1, -1);
        }
        static void DrawRock2()
        {
            DrawSVEC(2, 0, 2, 1);
            DrawSVEC(2, 7, 2, 1);
            DrawSVEC(3, 7, -1, 1);
            DrawSVEC(2, 7, -2, -1);
            DrawSVEC(2, 7, -2, 1);
            DrawSVEC(3, 7, -1, -1);
            DrawSVEC(2, 7, 1, -2);
            DrawSVEC(2, 7, -1, -2);
            DrawSVEC(3, 7, 1, -1);
            DrawSVEC(2, 7, 1, 1);
            DrawSVEC(2, 8, 3, -1);
            DrawSVEC(2, 8, 2, 3);
            DrawSVEC(3, 7, -1, 1);
        }
        static void DrawRock3()
        {
            DrawSVEC(3, 0, -1, 0);
            DrawSVEC(2, 7, -2, -1);
            DrawSVEC(2, 7, 2, -3);
            DrawSVEC(2, 7, 2, 3);
            DrawSVEC(2, 7, 0, -3);
            DrawSVEC(3, 7, 1, 0);
            DrawSVEC(2, 7, 2, 3);
            DrawSVEC(3, 7, 0, 1);
            DrawSVEC(2, 7, -2, 3);
            DrawSVEC(2, 7, -3, 0);
            DrawSVEC(2, 7, -3, -3);
            DrawSVEC(2, 7, 2, -1);
        }
        static void DrawRock4()
        {
            DrawSVEC(2, 0, 1, 0);
            DrawSVEC(2, 7, 3, 1);
            DrawSVEC(2, 6, 0, 1);
            DrawSVEC(2, 7, -3, 2);
            DrawSVEC(2, 7, -3, 0);
            DrawSVEC(2, 6, 1, -2);
            DrawSVEC(2, 7, -3, 0);
            DrawSVEC(2, 7, 0, -3);
            DrawSVEC(2, 7, 2, -3);
            DrawSVEC(2, 7, 3, 1);
            DrawSVEC(2, 6, 1, -1);
            DrawSVEC(3, 6, 1, 1);
            DrawSVEC(2, 7, -3, 2);
        }

        static void DrawShrapnel()
        {
            DrawSVEC(3, 0, -1, 0);
            DrawSVEC(3, 7, 0, 0);
            DrawSVEC(3, 0, -1, -1);
            DrawSVEC(3, 7, 0, 0);
            DrawSVEC(3, 0, 1, -1);
            DrawSVEC(3, 7, 0, 0);
            DrawSVEC(2, 0, 3, 1);
            DrawSVEC(3, 7, 0, 0);
            DrawSVEC(2, 0, 2, -1);
            DrawSVEC(3, 7, 0, 0);
            DrawSVEC(3, 0, 0, 1);
            DrawSVEC(3, 7, 0, 0);
            DrawSVEC(2, 0, 1, 3);
            DrawSVEC(3, 7, 0, 0);
            DrawSVEC(2, 0, -1, 3);
            DrawSVEC(3, 7, 0, 0);
            DrawSVEC(2, 0, -4, -1);
            DrawSVEC(3, 7, 0, 0);
            DrawSVEC(2, 0, -3, 1);
            DrawSVEC(3, 7, 0, 0);
        }

        static void SetTransform(int x, int y, float scale, float rotate = 0f)
        {
            _g.ResetTransform();
            _g.TranslateTransform(x, y);
            //_g.ScaleTransform(scale, scale);
            _g.ScaleTransform(scale / 4f * 3f, scale);  // Vector06c aspect ratio correction
            if (Math.Abs(rotate) > 0.0001)
                _g.RotateTransform(rotate);
            xc = 0; yc = 0;
        }

        static void PrepareSpritesImage()
        {
            using (var bmp = new Bitmap(420, 200))
            {
                _g = Graphics.FromImage(bmp);
                _g.PixelOffsetMode = PixelOffsetMode.Half;

                // Draw chess squares
                using (var blackBrush = new SolidBrush(Color.FromArgb(255, 250, 250, 250)))
                using (var whiteBrush = new SolidBrush(Color.FromArgb(255, 240, 240, 240)))
                {
                    for (int i = 0; i < bmp.Width / 8; i++)
                    {
                        for (int j = 0; j < bmp.Height / 8; j++)
                        {
                            if ((j % 2 == 0 && i % 2 == 0) || (j % 2 != 0 && i % 2 != 0))
                                _g.FillRectangle(blackBrush, i * 8, j * 8, 8, 8);
                            else if ((j % 2 == 0 && i % 2 != 0) || (j % 2 != 0 && i % 2 == 0))
                                _g.FillRectangle(whiteBrush, i * 8, j * 8, 8, 8);
                        }
                    }
                }

                const float shipScale = 0.146f;
                for (int i = 0; i < 17; i++)
                {
                    SetTransform(16 + i * 24, 32, shipScale, -90f / 8 * (16 - i));
                    DrawShipEast(false);

                    SetTransform(16 + i * 24, 48, shipScale, -90f / 8 * (16 - i));
                    DrawShipEast(true);
                }

                SetTransform(15, 71, 0.25f);
                DrawUfo();

                SetTransform(96, 72, 0.22f);
                _dotsize = 8f / _scale;
                DrawShrapnel();
                _dotsize = 1f;

                var rockScales = new float[] { 0.11f, 0.235f, 0.47f };
                var rockOffsets = new int[] { 0, 16, 44 };
                var size = 8;
                for (int i = 0; i < 3; i++)
                {
                    var scale = rockScales[i];
                    var yoffset = rockOffsets[i] + 88;
                    SetTransform(16 + 0 * (size + 8) + size / 2, yoffset + size / 2, scale);
                    DrawRock1();
                    SetTransform(16 + 1 * (size + 8) + size / 2, yoffset + size / 2, scale);
                    DrawRock2();
                    SetTransform(16 + 2 * (size + 8) + size / 2, yoffset + size / 2, scale);
                    DrawRock3();
                    SetTransform(16 + 3 * (size + 8) + size / 2, yoffset + size / 2, scale);
                    DrawRock4();
                    size += 8;
                }

                _g = null;

                bmp.Save("sprites.png");
            }
        }

        static void DrawSVEC(int scale, int br, int dx, int dy)
        {
            DrawVEC(2 - scale, br, dx, dy);
        }
        static void DrawVEC(int scale, int br, int dx, int dy)
        {
            float fscale = _scale * (float)Math.Pow(2, 3 - scale);
            float dotsize = _dotsize;
            if (br > 0)
            {
                _g.FillEllipse(_brush, xc - dotsize / 2, -yc - dotsize / 2, dotsize, dotsize);
                _g.DrawLine(_pen, xc, -yc, xc + dx * fscale, -(yc + dy * fscale));
                _g.FillEllipse(_brush, xc - dotsize / 2 + dx * fscale, -(yc + dy * fscale) - dotsize / 2, dotsize, dotsize);
            }

            xc += dx * fscale;
            yc += dy * fscale;

            //Console.WriteLine($"{scale}\t{dx}\t{dy}\t{dx * fscale:000.0000}\t{dy * fscale:000.0000}\t{xc}\t{yc}");
        }
    }
}
