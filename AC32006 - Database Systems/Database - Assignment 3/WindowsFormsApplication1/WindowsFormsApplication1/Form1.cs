using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace WindowsFormsApplication1
{
    public partial class MonthlyFee : Form
    {
        public MonthlyFee()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the '_12ac3d16DataSet8.monthlyinvoicedetails' table. You can move, or remove it, as needed.
            this.monthlyinvoicedetailsTableAdapter.Fill(this._12ac3d16DataSet8.monthlyinvoicedetails);
         

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }


        private void button1_Click(object sender, EventArgs e)
        {
            this.Hide();
            Payment frm2 = new Payment();
            frm2.Show();
        }
    }
}
