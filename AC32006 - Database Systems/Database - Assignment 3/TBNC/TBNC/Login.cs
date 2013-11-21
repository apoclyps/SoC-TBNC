using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using TBNC.Controller;

namespace TBNC
{
    public partial class Login : Form
    {
        DBConnect loginConnectionCheck = new DBConnect();
        AES Encrypt = new AES();

        private string password = null;
        private string encrypted = null;

        public Login()
        {
            InitializeComponent();
        }

        private void Login_Load(object sender, EventArgs e)
        {
            if (loginConnectionCheck.TestConnection())
            {
                lblStatus.Text = "Available";
            }
            else
            {
                lblStatus.Text = "Unavailable";
            }
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
           // password = txtPassword.Text;
           // encrypted = Encrypt.DecryptString(password);
           // txtPassword.Text = encrypted;
            loginConnectionCheck.selectUser("12ac3u16");
        }

    }
}
