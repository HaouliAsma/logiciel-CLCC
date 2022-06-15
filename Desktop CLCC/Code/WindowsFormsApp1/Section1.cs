using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Collections.Generic; //list

namespace WindowsFormsApp1
{
    public partial class Section1 : Form
    {
        private DataBase dbConnect;
        public string userpS1;

        public Section1(String userS1)
        {
            InitializeComponent();
            dbConnect = new DataBase();
            userpS1 = userS1;
        }

        private void button8_Ajoute_Click_2(object sender, EventArgs e)
        {
           
        }

        private void Section1_Load(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
       {

       }

        private void button1_Add_Click(object sender, EventArgs e)
        {
            
            string nomS = "1_reference_despatients";
            
            //TAB REF
            int ndossier = Convert.ToInt32(textBox1ndossier.Text);
            string reff = Convert.ToString(textBox2refpat.Text);
            string nom = Convert.ToString(textBox3nom.Text);
            string prenom = Convert.ToString(textBox4prenom.Text);
            var date = dateTimePicker1datenaissance.Value.ToShortDateString();
            int age = Convert.ToInt32(textBox5Age.Text);
            string adresse = Convert.ToString(textBox6Adresse.Text);//
            //1
            List<string> stg_list = new List<string>() {reff, nom, prenom, date, adresse, nomS};
            List<int> int_list = new List<int>() { ndossier, age };
            dbConnect.Insert(DataBase.InsertReq(2, int_list, stg_list));//

            //table remplir 
            DateTime ADate = DateTime.Now;
            string sdate = ADate.ToString("dddd, dd MMMM yyyy HH:mm:ss");
            List<string> SRlist = new List<string>() { sdate,userpS1, nomS};
            dbConnect.Insert(DataBase.InsertReq(3, int_list, SRlist));//
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox2refpat_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox3nom_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox4prenom_TextChanged(object sender, EventArgs e)
        {

        }

        private void dateTimePicker1datenaissance_ValueChanged(object sender, EventArgs e)
        {

        }

        private void textBox5Age_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBox6Adresse_TextChanged(object sender, EventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
