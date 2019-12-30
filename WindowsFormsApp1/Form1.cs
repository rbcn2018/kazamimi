using System;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using System.Runtime.InteropServices;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {

        [DllImport("user32.dll", CallingConvention = CallingConvention.StdCall)]
        private static extern IntPtr WindowFromPoint(Point point);

        [DllImport("user32.dll")]
        public static extern IntPtr GetForegroundWindow();

        [DllImport("user32.dll", CharSet = CharSet.Auto, CallingConvention = CallingConvention.StdCall)]
        private static extern int GetWindowText(IntPtr hWnd, StringBuilder lpString, int nMaxCount);

        [DllImport("user32.dll", CharSet = CharSet.Auto, CallingConvention = CallingConvention.StdCall)]
        private static extern int GetClassName(IntPtr hWnd, StringBuilder lpClassName, int nMaxCount);

        [DllImport("user32.dll", CallingConvention = CallingConvention.StdCall)]
        private static extern uint GetWindowThreadProcessId(IntPtr hWnd, out uint ProcessId);

        [DllImport("kernel32.dll", CallingConvention = CallingConvention.StdCall)]
        private static extern IntPtr OpenProcess(ProcessAccessFlags dwDesiredAccess, bool bInheritHandle, uint dwProcessId);

        [DllImport("kernel32.dll", CharSet = CharSet.Auto, CallingConvention = CallingConvention.StdCall)]
        private static extern bool QueryFullProcessImageName(IntPtr hProcess, uint dwFlags, StringBuilder lpExeName, ref int lpdwSize);

        [DllImport("User32.dll", EntryPoint = "SendMessage")]
        private static extern long SendMessage(IntPtr hWnd, uint Msg, uint wParam, uint lParam);

        [DllImport("user32.dll")]
        private static extern bool ShowWindowAsync(IntPtr hWnd, int nCmdShow);

        [DllImport("user32.dll", SetLastError = true)]
        [return: MarshalAs(UnmanagedType.Bool)]
        private static extern bool SetWindowPos(IntPtr hWnd, int hWndInsertAfter, int x, int y, int cx, int cy, int uFlags);

        private const int SWP_NOSIZE = 0x0001;
        private const int SWP_NOMOVE = 0x0002;
        private const int SWP_SHOWWINDOW = 0x0040;

        private const int HWND_TOPMOST = -1;
        private const int HWND_NOTOPMOST = -2;

        private DateTime startDt = DateTime.Now;
        private TimeSpan ts1;

        private static readonly Timer timer = new Timer() { Interval = 100 };

        private static bool showstat = false;
        private static bool winstat = true;

        public string SettingUnderWindow(IntPtr hWnd2, IntPtr hWnd3, string exe, string title)
        {
            //label9.Text = hWnd3.ToString();
            bool ctl_stat = (ModifierKeys & Keys.Control) == Keys.Control;
            bool alt_stat = (ModifierKeys & Keys.Alt) == Keys.Alt;
            bool sft_stat = (ModifierKeys & Keys.Shift) == Keys.Shift;
            if (hWnd2 != IntPtr.Zero)
            {
                //対応可能ウィンドウ
                IntPtr hWnd = hWnd2;
                if (MouseButtons == MouseButtons.Left)
                {
                    if (ctl_stat & !alt_stat & !sft_stat)
                    {
                        //最前面固定
                        SetWindowPos(hWnd, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE | SWP_NOSIZE);
                    }
                    else if (!ctl_stat & alt_stat & !sft_stat)
                    {
                        //最前面解除
                        SetWindowPos(hWnd, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_SHOWWINDOW | SWP_NOMOVE | SWP_NOSIZE);
                    }
                }
                else if (MouseButtons == MouseButtons.Middle)
                {
                    if (!ctl_stat & !alt_stat & !sft_stat)
                    {
                        ts1 = DateTime.Now - startDt;
                        //label9.Text = ts1.TotalSeconds.ToString();
                        if (ts1.TotalSeconds > 0.3)
                        {
                            //閉じる
                            SendMessage(hWnd, WM_CLOSE, 0, 0);
                            startDt = DateTime.Now;
                        }
                    }
                    else if (ctl_stat & !alt_stat & !sft_stat)
                    {
                        //最小化
                        ShowWindowAsync(hWnd, SW_SHOWMINIMIZED);
                    }
                }
            }
            else if (hWnd3 != IntPtr.Zero)
            {
                //対応外ウィンドウ
                if (exe.EndsWith("sakura.exe"))
                {
                    //サクラエディタ
                    if (MouseButtons == MouseButtons.Left)
                    {
                        if (ctl_stat & !alt_stat & !sft_stat)
                        {
                            //最前面固定
                            SetWindowPos(hWnd3, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE | SWP_NOSIZE);
                        }
                        else if (!ctl_stat & alt_stat & !sft_stat)
                        {
                            //最前面解除
                            SetWindowPos(hWnd3, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_SHOWWINDOW | SWP_NOMOVE | SWP_NOSIZE);
                        }
                    }
                    else if (MouseButtons == MouseButtons.Middle)
                    {
                        if (ctl_stat & !alt_stat & !sft_stat)
                        {
                            //閉じる
                            SendKeys.Send("%({F4})");
                        }
                        else if (ctl_stat & alt_stat & !sft_stat)
                        {
                            //最小化
                            ShowWindowAsync(hWnd3, SW_SHOWMINIMIZED);
                        }
                    }
                }
                else if (exe.EndsWith("Code.exe") | exe.EndsWith("chrome.exe") | exe.EndsWith("firefox.exe"))
                {
                    //label9.Text = hWnd3.ToString();
                    //label10.Text = GetForegroundWindow().ToString();
                    // Vscode, Chrome, Firefox
                    //label9.Text = "vscode";
                    if (MouseButtons == MouseButtons.Left)
                    {
                        //左クリック
                        if (ctl_stat & !alt_stat & !sft_stat)
                        {
                            //最前面固定
                            SetWindowPos(hWnd3, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE | SWP_NOSIZE);
                        }
                        else if (!ctl_stat & alt_stat & !sft_stat)
                        {
                            //最前面解除
                            SetWindowPos(hWnd3, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_SHOWWINDOW | SWP_NOMOVE | SWP_NOSIZE);
                        }
                    }
                    else if (MouseButtons == MouseButtons.Middle)
                    {
                        if (ctl_stat & !alt_stat & !sft_stat)
                        {
                            //閉じる
                            SendMessage(hWnd3, WM_CLOSE, 0, 0);
                        }
                        else if (ctl_stat & alt_stat & !sft_stat)
                        {
                            //最小化
                            ShowWindowAsync(hWnd3, SW_SHOWMINIMIZED);
                        }
                    }
                }
                else if (exe.EndsWith("explorer.exe"))
                {
                    //エクスプローラ ファイルリスト部分
                    if (MouseButtons == MouseButtons.Middle)
                    {
                        if (!ctl_stat & alt_stat & !sft_stat)
                        {
                            //1つ上の階層に移動
                            SendKeys.Send("{UP}");
                        }
                    }
                }
                else if (exe.EndsWith("maya.exe"))
                {
                    //maya メインウィンドウ以外
                    if (MouseButtons == MouseButtons.Middle)
                    {
                        if(title != "mayaLayoutInternalWidgetWindow")
                        {
                            if (ctl_stat & !alt_stat & !sft_stat)
                            {
                                //閉じる
                                SendMessage(hWnd3, WM_CLOSE, 0, 0);
                            }
                        }
                    }
                }
                else if (exe.EndsWith("motionbuilder.exe"))
                {
                    //motionbuilder
                    if (MouseButtons == MouseButtons.Left)
                    {
                        if (ctl_stat & alt_stat & !sft_stat)
                        {
                            //最前面固定
                            SetWindowPos(hWnd3, HWND_TOPMOST, 0, 0, 0, 0, SWP_NOMOVE | SWP_NOSIZE);
                        }
                        else if (ctl_stat & alt_stat & sft_stat)
                        {
                            //最前面解除
                            SetWindowPos(hWnd3, HWND_NOTOPMOST, 0, 0, 0, 0, SWP_SHOWWINDOW | SWP_NOMOVE | SWP_NOSIZE);
                        }
                    }
                    else if (MouseButtons == MouseButtons.Middle)
                    {
                        if (ctl_stat & !alt_stat & !sft_stat)
                        {
                            //閉じる
                            SendMessage(hWnd3, WM_CLOSE, 0, 0);
                        }
                        else if (ctl_stat & alt_stat & !sft_stat)
                        {
                            //最小化
                            ShowWindowAsync(hWnd3, SW_SHOWMINIMIZED);
                        }
                    }
                }
                else if (exe.EndsWith("Screenpresso.exe"))
                {
                    //label9.Text = "other";
                    //Screenpresso
                    if (MouseButtons == MouseButtons.Middle)
                    {
                        if (!ctl_stat & !alt_stat & !sft_stat)
                        {
                            //閉じる
                            //label9.Text = "close";
                            SendKeys.Send("%({F4})");
                        }
                    }
                }

            }
            return "";
        }


        public static string QueryFullProcessImageName(IntPtr hProcess)
        {
            int capacity = 1024;
            StringBuilder text = new StringBuilder(capacity);
            if (QueryFullProcessImageName(hProcess, 0, text, ref capacity))
            {
                return text.ToString(0, capacity);
            }
            else
            {
                return null;
            }
        }

        public enum ProcessAccessFlags : uint
        {
            VMRead = 0x00000010,
            QueryInformation = 0x00000400,
        }

        public Form1()
        {
            InitializeComponent();
            timer.Tick += new EventHandler(CheckTimer);
            timer.Enabled = true;
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            notifyIcon1.Visible = false;
            timer.Enabled = false;
        }

        private void Form1_Resize(object sender, EventArgs e)
        {
            if (WindowState == FormWindowState.Minimized)
            {
                //最小化されてればフォームを非表示
                Hide();
                showstat = false;
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            ShowInTaskbar = false;
            Activate();
            showstat = true;
        }

        public const uint WM_CLOSE = 0x10;
        public const uint WM_CHAR = 0x0102;
        public const uint WM_KEYDOWN = 0x0100;
        public const uint WM_KEYUP = 0x0101;
        public const uint WM_SYSKEYDOWN = 0x0104;
        public const uint WM_SYSKEYUP = 0x0105;

        //private const int SW_SHOWNORMAL = 1;
        private const int SW_SHOWMINIMIZED = 2;
        //private const int SW_SHOWMAXIMIZED = 3;


        private static readonly string[] wnd_lst_2 = { "kazamimi.exe", "xnview.exe", "slack.exe", "p4v.exe", "Everything.exe", "WinMergeU.exe" };
        private static readonly string[] wnd_lst_3 = { "chrome.exe", "firefox.exe", "sakura.exe", "Screenpresso.exe", "motionbuilder.exe"};

        private void CheckTimer(object sender, EventArgs e)
        {
            bool sft_stat = (ModifierKeys & Keys.Shift) == Keys.Shift;

            //ウィンドウハンドル
            IntPtr hWnd = WindowFromPoint(MousePosition);
            if (hWnd == IntPtr.Zero){return;}

            //タイトル名
            StringBuilder titlename = new StringBuilder(1048);
            GetWindowText(hWnd, titlename, 1024);
            string title = titlename.ToString();

            //クラス名
            StringBuilder clsname = new StringBuilder(1048);
            GetClassName(hWnd, clsname, 1024);
            string cls = clsname.ToString();

            //実行ファイル名
            GetWindowThreadProcessId(hWnd, out uint processID);
            IntPtr hProcess = OpenProcess(ProcessAccessFlags.QueryInformation | ProcessAccessFlags.VMRead, false, processID);
            string exe = QueryFullProcessImageName(hProcess);
            if(exe == null){return;}

            Control control = FromHandle(hWnd);
            string ctlcls = "";
            if (control != null)
            {
                if (control.GetType() != null)
                {
                    ctlcls = control.GetType().ToString();
                }
            }

            if (!checkBox1.Checked | (checkBox1.Checked & sft_stat))
            {
                int x = Cursor.Position.X;
                label2.Text = x.ToString();
                int y = Cursor.Position.Y;
                label3.Text = y.ToString();
                textBox1.Text = title;
                textBox2.Text = cls;
                textBox3.Text = exe;
                textBox4.Text = ctlcls;
            }

            IntPtr hWnd2 = IntPtr.Zero;
            IntPtr hWnd3 = IntPtr.Zero;
            if (exe.EndsWith("explorer.exe"))
            {
                //エクスプローラ
                if (cls == "CabinetWClass")
                {
                    hWnd2 = hWnd;
                }
                else if (cls == "DirectUIHWND")
                {
                    hWnd3 = hWnd;
                }
            }
            else if (cls == "PeggyWindowClass" & exe.EndsWith("peggy.exe"))
            {
                //peggy
                hWnd2 = hWnd;
            }
            else if (exe.Contains("Microsoft VS Code") & exe.EndsWith("Code.exe"))
            {
                //vscode
                hWnd3 = GetForegroundWindow();
                //hWnd3 = hWnd;
            }
            else if (cls == "Qt5QWindowIcon" & exe.EndsWith("maya.exe"))
            {
                //maya
                if (title.StartsWith("Autodesk Maya"))
                {
                    //メインウィンドウ
                    hWnd2 = hWnd;
                }
                else
                {
                    hWnd3 = GetForegroundWindow();
                    //hWnd3 = hWnd;
                }
            }
            else if (cls == "Notepad" & exe.EndsWith("notepad.exe"))
            {
                //メモ帳
                hWnd2 = hWnd;
            }
            else if (title.StartsWith("DF - ") & exe.EndsWith("DF.exe"))
            {
                //DF
                hWnd2 = hWnd;
            }
            else if (cls == "" & title.StartsWith("NetUIHWND") & exe.EndsWith("EXCEL.EXE"))
            {
                //エクセル
                hWnd2 = hWnd;
            }
            winstat = true;
            foreach (string wnd_2 in wnd_lst_2)
            {
                if (exe.EndsWith(wnd_2))
                {
                    hWnd2 = hWnd;
                    winstat = false;
                    break;
                }
            }
            if (winstat)
            {
                foreach (string wnd_3 in wnd_lst_3)
                {
                    if (exe.EndsWith(wnd_3))
                    {
                        //IntPtr hWnd = GetForegroundWindow();
                        hWnd3 = GetForegroundWindow();
                        //hWnd3 = hWnd;
                        break;
                    }
                }
            }

            if (hWnd2 != IntPtr.Zero | hWnd3 != IntPtr.Zero)
            {
                SettingUnderWindow(hWnd2, hWnd3, exe, title);
            }
        }

        private void ToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void ToolStripMenuItem3_Click(object sender, EventArgs e)
        {
            Hide();
            showstat = false;
        }

        private void ToolStripMenuItem4_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void ToolStripMenuItem5_Click(object sender, EventArgs e)
        {
            Show();
            showstat = true;
            WindowState = FormWindowState.Normal;
            ShowInTaskbar = false;
        }

        private void NotifyIcon1_DoubleClick(object sender, EventArgs e)
        {
            if(showstat)
            {
                Hide();
                showstat = false;
            }
            else
            {
                Show();
                showstat = true;
                WindowState = FormWindowState.Normal;
                ShowInTaskbar = false;
            }
        }

        private void ToolStripMenuItem2_Click_1(object sender, EventArgs e)
        {
            Hide();
            showstat = false;
        }
    }
}

