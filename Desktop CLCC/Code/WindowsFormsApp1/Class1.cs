using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form2 : Form
    {
        private bdd dbConnect;
        //dans le constructeur ajouter 
       // dbConnect =  new Class1();
        public Form2()
        {
            InitializeComponent();
            dbConnect = new bdd();
        }

        private void panel4_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void Form2_Load(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
            panel4.Visible = true;
            label3.Text = "Ajouter patient";
           
        }

        private void button1_Click(object sender, EventArgs e)
        {
            panel4.Visible = false;
            label3.Text = "Liste des patients";
        }

        private void button3_Click(object sender, EventArgs e)
        {
            panel4.Visible = false;
            label3.Text = "Active section";
           
        }

        private void button4_Click(object sender, EventArgs e)
        {
            panel4.Visible = false;
            label3.Text = "Imprimé";
        }

        private void button5_Click(object sender, EventArgs e)
        {
            panel4.Visible = false;
            label3.Text = "Partagé";
        }

        private void button6_Click(object sender, EventArgs e)
        {
            panel4.Visible = false;
            label3.Text = "Paramtre";
        }

        private void button7_Click(object sender, EventArgs e)
        {
            Form1 f1 = new Form1();
            f1.Show();
            this.Hide();
        }

        private void Button8_Click(object sender, EventArgs e)
        {
            int ref;
            String nom, prenom;
            ref= textBox1;
            nom = textBox2;
            prenom = textBox3;
            dbConnect.Insert(nom, prenom, ref);



        }
    }
}
