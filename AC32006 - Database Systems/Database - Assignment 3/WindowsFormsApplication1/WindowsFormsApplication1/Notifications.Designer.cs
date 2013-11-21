namespace WindowsFormsApplication1
{
    partial class Notifications
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
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.dataGridView2 = new System.Windows.Forms.DataGridView();
            this._12ac3d16DataSet6 = new WindowsFormsApplication1._12ac3d16DataSet6();
            this.roomchangedetailsBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.roomchangedetailsTableAdapter = new WindowsFormsApplication1._12ac3d16DataSet6TableAdapters.roomchangedetailsTableAdapter();
            this.childNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.roomNameDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.roomVacancyDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this._12ac3d16DataSet7 = new WindowsFormsApplication1._12ac3d16DataSet7();
            this.overduedetails1BindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.overduedetails1TableAdapter = new WindowsFormsApplication1._12ac3d16DataSet7TableAdapters.overduedetails1TableAdapter();
            this.childNameDataGridViewTextBoxColumn1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.dateDueDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.daysOverdueDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.lateFeesDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.totalOverdueDataGridViewTextBoxColumn = new System.Windows.Forms.DataGridViewTextBoxColumn();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.tabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this._12ac3d16DataSet6)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.roomchangedetailsBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this._12ac3d16DataSet7)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.overduedetails1BindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox1.BackgroundImage = global::WindowsFormsApplication1.Properties.Resources.logo;
            this.pictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.pictureBox1.Location = new System.Drawing.Point(12, 12);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(766, 199);
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Location = new System.Drawing.Point(12, 240);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(1053, 416);
            this.tabControl1.TabIndex = 1;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.dataGridView1);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(1045, 390);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Room Changes";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToDeleteRows = false;
            this.dataGridView1.AutoGenerateColumns = false;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.childNameDataGridViewTextBoxColumn,
            this.roomNameDataGridViewTextBoxColumn,
            this.roomVacancyDataGridViewTextBoxColumn});
            this.dataGridView1.DataSource = this.roomchangedetailsBindingSource;
            this.dataGridView1.Location = new System.Drawing.Point(18, 30);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(342, 267);
            this.dataGridView1.TabIndex = 0;
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.dataGridView2);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(1078, 440);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Overdue Fees";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // dataGridView2
            // 
            this.dataGridView2.AllowUserToDeleteRows = false;
            this.dataGridView2.AutoGenerateColumns = false;
            this.dataGridView2.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView2.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.childNameDataGridViewTextBoxColumn1,
            this.dateDueDataGridViewTextBoxColumn,
            this.daysOverdueDataGridViewTextBoxColumn,
            this.lateFeesDataGridViewTextBoxColumn,
            this.totalOverdueDataGridViewTextBoxColumn});
            this.dataGridView2.DataSource = this.overduedetails1BindingSource;
            this.dataGridView2.Location = new System.Drawing.Point(17, 21);
            this.dataGridView2.Name = "dataGridView2";
            this.dataGridView2.Size = new System.Drawing.Size(547, 224);
            this.dataGridView2.TabIndex = 0;
            // 
            // _12ac3d16DataSet6
            // 
            this._12ac3d16DataSet6.DataSetName = "_12ac3d16DataSet6";
            this._12ac3d16DataSet6.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // roomchangedetailsBindingSource
            // 
            this.roomchangedetailsBindingSource.DataMember = "roomchangedetails";
            this.roomchangedetailsBindingSource.DataSource = this._12ac3d16DataSet6;
            // 
            // roomchangedetailsTableAdapter
            // 
            this.roomchangedetailsTableAdapter.ClearBeforeFill = true;
            // 
            // childNameDataGridViewTextBoxColumn
            // 
            this.childNameDataGridViewTextBoxColumn.DataPropertyName = "Child Name";
            this.childNameDataGridViewTextBoxColumn.HeaderText = "Child Name";
            this.childNameDataGridViewTextBoxColumn.Name = "childNameDataGridViewTextBoxColumn";
            // 
            // roomNameDataGridViewTextBoxColumn
            // 
            this.roomNameDataGridViewTextBoxColumn.DataPropertyName = "Room Name";
            this.roomNameDataGridViewTextBoxColumn.HeaderText = "Room Name";
            this.roomNameDataGridViewTextBoxColumn.Name = "roomNameDataGridViewTextBoxColumn";
            // 
            // roomVacancyDataGridViewTextBoxColumn
            // 
            this.roomVacancyDataGridViewTextBoxColumn.DataPropertyName = "Room Vacancy";
            this.roomVacancyDataGridViewTextBoxColumn.HeaderText = "Room Vacancy";
            this.roomVacancyDataGridViewTextBoxColumn.Name = "roomVacancyDataGridViewTextBoxColumn";
            // 
            // _12ac3d16DataSet7
            // 
            this._12ac3d16DataSet7.DataSetName = "_12ac3d16DataSet7";
            this._12ac3d16DataSet7.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // overduedetails1BindingSource
            // 
            this.overduedetails1BindingSource.DataMember = "overduedetails1";
            this.overduedetails1BindingSource.DataSource = this._12ac3d16DataSet7;
            // 
            // overduedetails1TableAdapter
            // 
            this.overduedetails1TableAdapter.ClearBeforeFill = true;
            // 
            // childNameDataGridViewTextBoxColumn1
            // 
            this.childNameDataGridViewTextBoxColumn1.DataPropertyName = "Child Name";
            this.childNameDataGridViewTextBoxColumn1.HeaderText = "Child Name";
            this.childNameDataGridViewTextBoxColumn1.Name = "childNameDataGridViewTextBoxColumn1";
            // 
            // dateDueDataGridViewTextBoxColumn
            // 
            this.dateDueDataGridViewTextBoxColumn.DataPropertyName = "Date Due";
            this.dateDueDataGridViewTextBoxColumn.HeaderText = "Date Due";
            this.dateDueDataGridViewTextBoxColumn.Name = "dateDueDataGridViewTextBoxColumn";
            // 
            // daysOverdueDataGridViewTextBoxColumn
            // 
            this.daysOverdueDataGridViewTextBoxColumn.DataPropertyName = "Days Overdue";
            this.daysOverdueDataGridViewTextBoxColumn.HeaderText = "Days Overdue";
            this.daysOverdueDataGridViewTextBoxColumn.Name = "daysOverdueDataGridViewTextBoxColumn";
            // 
            // lateFeesDataGridViewTextBoxColumn
            // 
            this.lateFeesDataGridViewTextBoxColumn.DataPropertyName = "Late Fees";
            this.lateFeesDataGridViewTextBoxColumn.HeaderText = "Late Fees";
            this.lateFeesDataGridViewTextBoxColumn.Name = "lateFeesDataGridViewTextBoxColumn";
            // 
            // totalOverdueDataGridViewTextBoxColumn
            // 
            this.totalOverdueDataGridViewTextBoxColumn.DataPropertyName = "Total Overdue";
            this.totalOverdueDataGridViewTextBoxColumn.HeaderText = "Total Overdue";
            this.totalOverdueDataGridViewTextBoxColumn.Name = "totalOverdueDataGridViewTextBoxColumn";
            // 
            // Notifications
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::WindowsFormsApplication1.Properties.Resources.background;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1184, 750);
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.pictureBox1);
            this.Name = "Notifications";
            this.Text = "Notifications";
            this.Load += new System.EventHandler(this.Notifications_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.tabPage2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this._12ac3d16DataSet6)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.roomchangedetailsBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this._12ac3d16DataSet7)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.overduedetails1BindingSource)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.DataGridView dataGridView2;
        private _12ac3d16DataSet6 _12ac3d16DataSet6;
        private System.Windows.Forms.BindingSource roomchangedetailsBindingSource;
        private _12ac3d16DataSet6TableAdapters.roomchangedetailsTableAdapter roomchangedetailsTableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn childNameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn roomNameDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn roomVacancyDataGridViewTextBoxColumn;
        private _12ac3d16DataSet7 _12ac3d16DataSet7;
        private System.Windows.Forms.BindingSource overduedetails1BindingSource;
        private _12ac3d16DataSet7TableAdapters.overduedetails1TableAdapter overduedetails1TableAdapter;
        private System.Windows.Forms.DataGridViewTextBoxColumn childNameDataGridViewTextBoxColumn1;
        private System.Windows.Forms.DataGridViewTextBoxColumn dateDueDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn daysOverdueDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn lateFeesDataGridViewTextBoxColumn;
        private System.Windows.Forms.DataGridViewTextBoxColumn totalOverdueDataGridViewTextBoxColumn;
    }
}