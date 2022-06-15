using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using System.Collections.Generic;

namespace WindowsFormsApp1
{
    public partial class Section2 : Form
    {
        private DataBase dbConnect;
        public string userpS2;

        public Section2(string userS2)
        {
            InitializeComponent();
            dbConnect = new DataBase();
            userpS2 = userS2;
            string x = " SELECT Ndossier from 1_reference_despatients";
            dbConnect.Load_Combo(x, comboBox1_ndossier);
        }

        private void Section2_Load(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
        private void button1_Add_Click(object sender, EventArgs e)
        {
            List<int> Ilist = new List<int>() { };

            //TAB REF
            int ndossier = Convert.ToInt32(comboBox1_ndossier.Text);
            string habitat = Convert.ToString(comboBox1_habitat.Text);
            string telephone = Convert.ToString(textBox5_telephone.Text);
            string etatmarital = Convert.ToString(comboBox2_etatMarital.Text);
            string profession = Convert.ToString(textBox6_profession.Text);
            string NiveauSocio = Convert.ToString(comboBox3_NiveauSocio.Text);
            string niveauScolaire = Convert.ToString(comboBox4_niveauScolaire.Text);
            string nomS = "2_caracteristique_sosciodemographique";
            //1
            List<string> stg_list = new List<string>() { habitat, telephone, etatmarital, profession, NiveauSocio, niveauScolaire, nomS};
            List<int> int_list = new List<int>() { ndossier };
            dbConnect.Insert(DataBase.InsertReq(4, int_list, stg_list));

            //table remplir 
            DateTime ADate = DateTime.Now;
            string sdate = ADate.ToString("dddd, dd MMMM yyyy HH:mm:ss");
            List<string> SRlist = new List<string>() { sdate, userpS2, nomS };

             dbConnect.Insert(DataBase.InsertReq(3, int_list, SRlist));
        }

        private void comboBox4_niveauScolaire_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
