using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    static class Program
    {
        /// <summary>
        /// アプリケーションのメイン エントリ ポイントです。
        /// </summary>
        static readonly bool winstat = true;

        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            if(winstat)
            {
                Form1 fm = new Form1();
                //fm.ShowInTaskbar = false;
                //fm.FormBorderStyle = FormBorderStyle.FixedToolWindow;
                Application.Run();
                fm.Close();
            }
            else
            {
                Application.Run(new Form1());
            }
        }
    }
}
