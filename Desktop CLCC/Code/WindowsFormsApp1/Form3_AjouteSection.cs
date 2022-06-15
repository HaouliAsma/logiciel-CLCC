using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

//LIST
using System.Collections.Generic;


namespace WindowsFormsApp1
{
    public partial class Form3_AjouteSection : Form
    {
        private DataBase dbConnect;
        public string userp3;
        public string p;

        public Form3_AjouteSection(string user3,string passwordp3)
        {
            InitializeComponent();
            dbConnect = new DataBase();
            userp3 = user3;
            p = passwordp3;
        }
        private Form activeForm = null;
        private void openFilForm(Form filForm)
        {
            if (activeForm != null)
                activeForm.Close();
            activeForm = filForm;
            filForm.TopLevel = false;
            filForm.FormBorderStyle = FormBorderStyle.None;
            filForm.Dock = DockStyle.Fill;
            panel1_MenuAjouter.Controls.Add(filForm);
            panel1_MenuAjouter.Tag = filForm;
            filForm.BringToFront();
            filForm.Show(); }

        private void pictureBox1_Retour_Click(object sender, EventArgs e)
        {
            Form2 f2 = new Form2(userp3,p);
            f2.Show();
            this.Hide();
        }

        private void button11_S1_Click(object sender, EventArgs e)
        {
            label3_titrepage.Text = "Référance des patients";
            // open form1
            openFilForm(new Section1(userp3));

        }
        private void button12_S2_Click(object sender, EventArgs e)
        {
            label3_titrepage.Text = "Caractiristique";
            openFilForm(new Section2(userp3));
        }
      
        private void button13_S3_Click(object sender, EventArgs e)
        {

            openFilForm(new Section3());
        }
        private void button14_S4_Click(object sender, EventArgs e)
        {
            //panel4_MenuSection.Visible = true;

        }
        private void button15_S5_Click(object sender, EventArgs e)
        {
            // panel1.Visible = true;
            openFilForm(new Section5());

        }

        private void button16_S6_Click(object sender, EventArgs e)
        {
            
        }
    }
}
