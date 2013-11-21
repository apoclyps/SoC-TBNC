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
    public partial class Notifications : Form
    {
        public Notifications()
        {
            InitializeComponent();
        }

        private void Notifications_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the '_12ac3d16DataSet7.overduedetails1' table. You can move, or remove it, as needed.
            this.overduedetails1TableAdapter.Fill(this._12ac3d16DataSet7.overduedetails1);
            // TODO: This line of code loads data into the '_12ac3d16DataSet6.roomchangedetails' table. You can move, or remove it, as needed.
            this.roomchangedetailsTableAdapter.Fill(this._12ac3d16DataSet6.roomchangedetails);
            // TODO: This line of code loads data into the '_12ac3d16DataSet4.monthlyfeedetails' table. You can move, or remove it, as needed.
            

        }

    }
}
