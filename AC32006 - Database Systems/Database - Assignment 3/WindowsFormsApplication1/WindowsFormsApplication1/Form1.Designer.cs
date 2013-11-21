namespace WindowsFormsApplication1
{
    partial class MonthlyFee
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.childNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.placementTypeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.roomNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dailyChargeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.weeklyChargeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.teasDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.teaChargeDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.monthlyfeedetailsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this._12ac3d16DataSet3 = new WindowsFormsApplication1._12ac3d16DataSet3();
            this.monthlyfeedetailsTableAdapter = new WindowsFormsApplication1._12ac3d16DataSet3TableAdapters.monthlyfeedetailsTableAdapter();
            this.FinanceControl = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.dataGridView2 = new System.Windows.Forms.DataGridView();
            this.childNameDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.placementTypeDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.roomNameDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dailyChargeDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.weeklyChargeDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.teasDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.teaChargeDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.discountDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.payDateDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.lateFeesDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.monthlyinvoicedetailsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this._12ac3d16DataSet8 = new WindowsFormsApplication1._12ac3d16DataSet8();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.dataGridView3 = new System.Windows.Forms.DataGridView();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.monthlyinvoicedetailsTableAdapter = new WindowsFormsApplication1._12ac3d16DataSet8TableAdapters.monthlyinvoicedetailsTableAdapter();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.monthlyfeedetailsBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this._12ac3d16DataSet3)).BeginInit();
            this.FinanceControl.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.monthlyinvoicedetailsBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this._12ac3d16DataSet8)).BeginInit();
            this.tabPage3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView3)).BeginInit();
            this.SuspendLayout();
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox1.BackgroundImage = global::WindowsFormsApplication1.Properties.Resources.logo;
            this.pictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.pictureBox1.Location = new System.Drawing.Point(188, 22);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(790, 179);
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.childNameDataGridViewTextBoxColumn,
            this.placementTypeDataGridViewTextBoxColumn,
            this.roomNameDataGridViewTextBoxColumn,
            this.dailyChargeDataGridViewTextBoxColumn,
            this.weeklyChargeDataGridViewTextBoxColumn,
            this.teasDataGridViewTextBoxColumn,
            this.teaChargeDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.monthlyfeedetailsBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(25, 32);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(757, 369);
            this.dataGridView1.TabIndex = 2;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // childNameDataGridViewTextBoxColumn
            // 
            this.childNameDataGridViewTextBoxColumn.DataPropertyName = "Child Name";
            this.childNameDataGridViewTextBoxColumn.HeaderText = "Child Name";
            this.childNameDataGridViewTextBoxColumn.Name = "childNameDataGridViewTextBoxColumn";
            // 
            // placementTypeDataGridViewTextBoxColumn
            // 
            this.placementTypeDataGridViewTextBoxColumn.DataPropertyName = "PlacementType";
            this.placementTypeDataGridViewTextBoxColumn.HeaderText = "PlacementType";
            this.placementTypeDataGridViewTextBoxColumn.Name = "placementTypeDataGridViewTextBoxColumn";
            // 
            // roomNameDataGridViewTextBoxColumn
            // 
            this.roomNameDataGridViewTextBoxColumn.DataPropertyName = "RoomName";
            this.roomNameDataGridViewTextBoxColumn.HeaderText = "RoomName";
            this.roomNameDataGridViewTextBoxColumn.Name = "roomNameDataGridViewTextBoxColumn";
            // 
            // dailyChargeDataGridViewTextBoxColumn
            // 
            this.dailyChargeDataGridViewTextBoxColumn.DataPropertyName = "DailyCharge";
            this.dailyChargeDataGridViewTextBoxColumn.HeaderText = "DailyCharge";
            this.dailyChargeDataGridViewTextBoxColumn.Name = "dailyChargeDataGridViewTextBoxColumn";
            // 
            // weeklyChargeDataGridViewTextBoxColumn
            // 
            this.weeklyChargeDataGridViewTextBoxColumn.DataPropertyName = "WeeklyCharge";
            this.weeklyChargeDataGridViewTextBoxColumn.HeaderText = "WeeklyCharge";
            this.weeklyChargeDataGridViewTextBoxColumn.Name = "weeklyChargeDataGridViewTextBoxColumn";
            // 
            // teasDataGridViewTextBoxColumn
            // 
            this.teasDataGridViewTextBoxColumn.DataPropertyName = "Teas";
            this.teasDataGridViewTextBoxColumn.HeaderText = "Teas";
            this.teasDataGridViewTextBoxColumn.Name = "teasDataGridViewTextBoxColumn";
            // 
            // teaChargeDataGridViewTextBoxColumn
            // 
            this.teaChargeDataGridViewTextBoxColumn.DataPropertyName = "TeaCharge";
            this.teaChargeDataGridViewTextBoxColumn.HeaderText = "TeaCharge";
            this.teaChargeDataGridViewTextBoxColumn.Name = "teaChargeDataGridViewTextBoxColumn";
            // 
            // monthlyfeedetailsBindingSource
            // 
            this.monthlyfeedetailsBindingSource.DataMember = "monthlyfeedetails";
            this.monthlyfeedetailsBindingSource.DataSource = this._12ac3d16DataSet3;
            // 
            // _12ac3d16DataSet3
            // 
            this._12ac3d16DataSet3.DataSetName = "_12ac3d16DataSet3";
            this._12ac3d16DataSet3.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // monthlyfeedetailsTableAdapter
            // 
            this.monthlyfeedetailsTableAdapter.ClearBeforeFill = true;
            // 
            // FinanceControl
            // 
            this.FinanceControl.Controls.Add(this.tabPage1);
            this.FinanceControl.Controls.Add(this.tabPage2);
            this.FinanceControl.Controls.Add(this.tabPage3);
            this.FinanceControl.Location = new System.Drawing.Point(26, 226);
            this.FinanceControl.Name = "FinanceControl";
            this.FinanceControl.SelectedIndex = 0;
            this.FinanceControl.Size = new System.Drawing.Size(1078, 438);
            this.FinanceControl.TabIndex = 3;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.dataGridView1);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(1062, 465);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Monthly Fee";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.button3);
            this.tabPage2.Controls.Add(this.button2);
            this.tabPage2.Controls.Add(this.dataGridView2);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(1070, 412);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Monthly Invoice";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // dataGridView2
            // 
            this.dataGridView2.AllowUserToDeleteRows = false;
            this.dataGridView2.AutoGenerateColumns = false;
            this.dataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView2.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.childNameDataGridViewTextBoxColumn1,
            this.placementTypeDataGridViewTextBoxColumn1,
            this.roomNameDataGridViewTextBoxColumn1,
            this.dailyChargeDataGridViewTextBoxColumn1,
            this.weeklyChargeDataGridViewTextBoxColumn1,
            this.teasDataGridViewTextBoxColumn1,
            this.teaChargeDataGridViewTextBoxColumn1,
            this.discountDataGridViewTextBoxColumn,
            this.payDateDataGridViewTextBoxColumn,
            this.lateFeesDataGridViewTextBoxColumn});
            this.dataGridView2.DataSource = this.monthlyinvoicedetailsBindingSource;
            this.dataGridView2.Location = new System.Drawing.Point(3, 38);
            this.dataGridView2.Name = "dataGridView2";
            this.dataGridView2.Size = new System.Drawing.Size(1043, 282);
            this.dataGridView2.TabIndex = 0;
            // 
            // childNameDataGridViewTextBoxColumn1
            // 
            this.childNameDataGridViewTextBoxColumn1.DataPropertyName = "Child Name";
            this.childNameDataGridViewTextBoxColumn1.HeaderText = "Child Name";
            this.childNameDataGridViewTextBoxColumn1.Name = "childNameDataGridViewTextBoxColumn1";
            // 
            // placementTypeDataGridViewTextBoxColumn1
            // 
            this.placementTypeDataGridViewTextBoxColumn1.DataPropertyName = "Placement Type";
            this.placementTypeDataGridViewTextBoxColumn1.HeaderText = "Placement Type";
            this.placementTypeDataGridViewTextBoxColumn1.Name = "placementTypeDataGridViewTextBoxColumn1";
            // 
            // roomNameDataGridViewTextBoxColumn1
            // 
            this.roomNameDataGridViewTextBoxColumn1.DataPropertyName = "Room Name";
            this.roomNameDataGridViewTextBoxColumn1.HeaderText = "Room Name";
            this.roomNameDataGridViewTextBoxColumn1.Name = "roomNameDataGridViewTextBoxColumn1";
            // 
            // dailyChargeDataGridViewTextBoxColumn1
            // 
            this.dailyChargeDataGridViewTextBoxColumn1.DataPropertyName = "Daily Charge";
            this.dailyChargeDataGridViewTextBoxColumn1.HeaderText = "Daily Charge";
            this.dailyChargeDataGridViewTextBoxColumn1.Name = "dailyChargeDataGridViewTextBoxColumn1";
            // 
            // weeklyChargeDataGridViewTextBoxColumn1
            // 
            this.weeklyChargeDataGridViewTextBoxColumn1.DataPropertyName = "Weekly Charge";
            this.weeklyChargeDataGridViewTextBoxColumn1.HeaderText = "Weekly Charge";
            this.weeklyChargeDataGridViewTextBoxColumn1.Name = "weeklyChargeDataGridViewTextBoxColumn1";
            // 
            // teasDataGridViewTextBoxColumn1
            // 
            this.teasDataGridViewTextBoxColumn1.DataPropertyName = "Teas";
            this.teasDataGridViewTextBoxColumn1.HeaderText = "Teas";
            this.teasDataGridViewTextBoxColumn1.Name = "teasDataGridViewTextBoxColumn1";
            // 
            // teaChargeDataGridViewTextBoxColumn1
            // 
            this.teaChargeDataGridViewTextBoxColumn1.DataPropertyName = "Tea Charge";
            this.teaChargeDataGridViewTextBoxColumn1.HeaderText = "Tea Charge";
            this.teaChargeDataGridViewTextBoxColumn1.Name = "teaChargeDataGridViewTextBoxColumn1";
            // 
            // discountDataGridViewTextBoxColumn
            // 
            this.discountDataGridViewTextBoxColumn.DataPropertyName = "Discount";
            this.discountDataGridViewTextBoxColumn.HeaderText = "Discount";
            this.discountDataGridViewTextBoxColumn.Name = "discountDataGridViewTextBoxColumn";
            // 
            // payDateDataGridViewTextBoxColumn
            // 
            this.payDateDataGridViewTextBoxColumn.DataPropertyName = "Pay Date";
            this.payDateDataGridViewTextBoxColumn.HeaderText = "Pay Date";
            this.payDateDataGridViewTextBoxColumn.Name = "payDateDataGridViewTextBoxColumn";
            // 
            // lateFeesDataGridViewTextBoxColumn
            // 
            this.lateFeesDataGridViewTextBoxColumn.DataPropertyName = "Late Fees";
            this.lateFeesDataGridViewTextBoxColumn.HeaderText = "Late Fees";
            this.lateFeesDataGridViewTextBoxColumn.Name = "lateFeesDataGridViewTextBoxColumn";
            // 
            // monthlyinvoicedetailsBindingSource
            // 
            this.monthlyinvoicedetailsBindingSource.DataMember = "monthlyinvoicedetails";
            this.monthlyinvoicedetailsBindingSource.DataSource = this._12ac3d16DataSet8;
            // 
            // _12ac3d16DataSet8
            // 
            this._12ac3d16DataSet8.DataSetName = "_12ac3d16DataSet8";
            this._12ac3d16DataSet8.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // tabPage3
            // 
            this.tabPage3.BackColor = System.Drawing.Color.Transparent;
            this.tabPage3.Controls.Add(this.dataGridView3);
            this.tabPage3.Controls.Add(this.label10);
            this.tabPage3.Controls.Add(this.label9);
            this.tabPage3.Controls.Add(this.label8);
            this.tabPage3.Controls.Add(this.label7);
            this.tabPage3.Controls.Add(this.label6);
            this.tabPage3.Controls.Add(this.label5);
            this.tabPage3.Controls.Add(this.label4);
            this.tabPage3.Controls.Add(this.label3);
            this.tabPage3.Controls.Add(this.label2);
            this.tabPage3.Controls.Add(this.label1);
            this.tabPage3.Location = new System.Drawing.Point(4, 22);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Size = new System.Drawing.Size(1062, 465);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "Update Costs";
            // 
            // dataGridView3
            // 
            this.dataGridView3.AllowUserToAddRows = false;
            this.dataGridView3.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView3.Location = new System.Drawing.Point(289, 54);
            this.dataGridView3.Name = "dataGridView3";
            this.dataGridView3.Size = new System.Drawing.Size(141, 289);
            this.dataGridView3.TabIndex = 10;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(137, 330);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(93, 13);
            this.label10.TabIndex = 9;
            this.label10.Text = "Sibling Deduction:";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(137, 294);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(93, 13);
            this.label9.TabIndex = 8;
            this.label9.Text = "Council Vouchers:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(137, 248);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(79, 13);
            this.label8.TabIndex = 7;
            this.label8.Text = "Part Time (3-5):";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(137, 204);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(79, 13);
            this.label7.TabIndex = 6;
            this.label7.Text = "Part Time (0-2):";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(137, 161);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(76, 13);
            this.label6.TabIndex = 5;
            this.label6.Text = "Full Time (3-5):";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(137, 226);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(79, 13);
            this.label5.TabIndex = 4;
            this.label5.Text = "Part Time (2-3):";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(137, 139);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(76, 13);
            this.label4.TabIndex = 3;
            this.label4.Text = "Full Time (2-3):";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(137, 117);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(76, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Full Time (0-2):";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(137, 76);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(77, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Tea Cost (2-5):";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(137, 54);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(77, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Tea Cost (0-2):";
            // 
            // monthlyinvoicedetailsTableAdapter
            // 
            this.monthlyinvoicedetailsTableAdapter.ClearBeforeFill = true;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(1090, 13);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 4;
            this.button1.Text = "Payments";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(834, 9);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(100, 23);
            this.button2.TabIndex = 1;
            this.button2.Text = "Print Invoice";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(940, 9);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(106, 23);
            this.button3.TabIndex = 2;
            this.button3.Text = "Email Invoice";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // MonthlyFee
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::WindowsFormsApplication1.Properties.Resources.background;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1184, 750);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.FinanceControl);
            this.Controls.Add(this.pictureBox1);
            this.Name = "MonthlyFee";
            this.Text = "Monthly Fee";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.monthlyfeedetailsBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this._12ac3d16DataSet3)).EndInit();
            this.FinanceControl.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.monthlyinvoicedetailsBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this._12ac3d16DataSet8)).EndInit();
            this.tabPage3.ResumeLayout(false);
            this.tabPage3.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView3)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private _12ac3d16DataSet3 _12ac3d16DataSet3;
        private System.Windows.Forms.BindingSource monthlyfeedetailsBindingSource;
        private _12ac3d16DataSet3TableAdapters.monthlyfeedetailsTableAdapter monthlyfeedetailsTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn childNameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn placementTypeDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn roomNameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn dailyChargeDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn weeklyChargeDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn teasDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn teaChargeDataGridViewTextBoxColumn;
        private System.Windows.Forms.TabControl FinanceControl;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.DataGridView dataGridView2;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dataGridView3;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private _12ac3d16DataSet8 _12ac3d16DataSet8;
        private System.Windows.Forms.BindingSource monthlyinvoicedetailsBindingSource;
        private _12ac3d16DataSet8TableAdapters.monthlyinvoicedetailsTableAdapter monthlyinvoicedetailsTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn childNameDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn placementTypeDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn roomNameDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dailyChargeDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn weeklyChargeDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn teasDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn teaChargeDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn discountDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn payDateDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn lateFeesDataGridViewTextBoxColumn;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button2;
    }
}

