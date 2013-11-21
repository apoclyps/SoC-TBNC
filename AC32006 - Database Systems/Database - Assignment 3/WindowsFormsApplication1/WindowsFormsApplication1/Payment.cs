using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace WindowsFormsApplication1
{
    public partial class Payment : Form
    {
        public Payment()
        {
            InitializeComponent();
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            String paid = null;

            if (radioButton1.Checked == true)
            
                {
                    paid = "True";
                }
                else if (radioButton2.Checked == true)
                {
                    paid = "False";
                }

            if (textBox3.Text == "" || textBox1.Text == "" || textBox4.Text == "" || radioButton1.Checked == false && radioButton2.Checked == false)
            {
                MessageBox.Show("Please make sure all the boxes have been filled");
            }
            else
            {
                MessageBox.Show("ALL INFORMATION ADDED TO PAYMENT HISTORY");
            }
            /*
            string connectionSQL = "server=arlia.computing.dundee.ac.uk;database=12ac3d16;uid=12ac3u16;password=111aaa;";
            MySqlConnection conn = new MySqlConnection(connectionSQL);
            String query = "INSERT INTO paymenthistory(Payee, Paid, PaymentType, PaymentOther, DateDue, DatePaid, AmountDue) VALUES ('" + textBox3.Text + "', '" + paid + "', '" + listBox1.Text + "', '" + textBox1.Text + "', '" + this.dateTimePicker1.Text + "', '" + this.dateTimePicker2.Text + "', '" + textBox4.Text + "')";
            try
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand (query , conn);
                cmd.ExecuteNonQuery();
                conn.Close();
                Console.Write(query);
            }

            catch (MySqlException ex)
            {

                MessageBox.Show("Can't connect to database\n" + ex.ToString());
            }
            }*/
        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            textBox1.Clear();
            textBox3.Clear();
            textBox4.Clear();
            listBox1.ClearSelected();
            radioButton1.Checked = false;
            radioButton2.Checked = false;
            dateTimePicker1.ResetText();
            dateTimePicker2.ResetText();
            dateTimePicker2.Hide();
        }

        private void Payment_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the '_12ac3d16DataSet5.payhistorydetails' table. You can move, or remove it, as needed.
            this.payhistorydetailsTableAdapter.Fill(this._12ac3d16DataSet5.payhistorydetails);

        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton1.Checked == true)
            {
                label6.Show();
                dateTimePicker2.Show();
            }
            else if (radioButton1.Checked == false)
            {
                label6.Hide();
                dateTimePicker2.Hide();
            }
        }

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            if (radioButton2.Checked == true)
            {
                label6.Hide();
                dateTimePicker2.Hide();
            }
            else if (radioButton2.Checked == false)
            {
                label6.Show();
                dateTimePicker2.Show();
            }
        }

        private void tabPage1_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            this.Hide();
            Notifications form = new Notifications();
            form.Show();
        }
    }
}
