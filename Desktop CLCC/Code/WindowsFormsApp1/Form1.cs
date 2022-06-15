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

namespace WindowsFormsApp1
{
    
    public partial class Form1 : Form
    {
        private DataBase dbConnect;
        public string poste;
        public Form1()
        {
            InitializeComponent();
            dbConnect = new DataBase();;
        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }
        //login__________________________________________________________________________________________________________________________________________________________________________________________
        private void button1_Click(object sender, EventArgs e)
        {
            String user = textBox1_usename.Text;
            String paswod = textBox2_password.Text;
            if (dbConnect.Login(textBox1_usename, textBox2_password, user,paswod) == true) { this.Hide(); }
            
        }


        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            MessageBox.Show("Contacter médecin admin");
        }

        private void label2_aide_Click(object sender, EventArgs e)
        {
            //true
            label1_aide_text.Visible = true;
            pictureBox5.Visible = true;
            //false
            label2_aide.Visible = false;
            pictureBox2.Visible = false;
            pictureBox3.Visible = false;
            pictureBox4.Visible = false;
            button1.Visible = false;
            panel1.Visible = false;
            panel2.Visible = false;
            textBox1_usename.Visible = false;
            textBox2_password.Visible = false;
            linkLabel1.Visible = false;

        }

        private void pictureBox5_Click(object sender, EventArgs e)
        {
            //false
            label1_aide_text.Visible = false;
            pictureBox5.Visible = false;
            label1.Visible = false;
            comboBox1.Visible = false;
            button2_sp.Visible = false;
            //true
            label2_aide.Visible = true;
            pictureBox2.Visible = true;
            pictureBox3.Visible = true;
            pictureBox4.Visible = true;
            button1.Visible = true;
            panel1.Visible = true;
            panel2.Visible = true;
            textBox1_usename.Visible = true;
            textBox2_password.Visible = true;
            linkLabel1.Visible = true;
        }

        private void pictureBox4_Click(object sender, EventArgs e)
        {
            //true
            label1.Visible = true;
            pictureBox5.Visible = true;
            comboBox1.Visible = true;
            button2_sp.Visible = true;
            //false
            label2_aide.Visible = false;
            pictureBox2.Visible = false;
            pictureBox3.Visible = false;
            pictureBox4.Visible = false;
            button1.Visible = false;
            panel1.Visible = false;
            panel2.Visible = false;
            textBox1_usename.Visible = false;
            textBox2_password.Visible = false;
            linkLabel1.Visible = false;

        }
         public void button2_Click(object sender, EventArgs e)
        {
            if (comboBox1.Text == "poste serveur")
            {
                this.poste = "localhost";
                MessageBox.Show("Médcine admine");
            }
            else if (comboBox1.Text == "poste client")
            {
                this.poste = "192.168.0.1";
                MessageBox.Show("Médcine tritant");
            }
           //dbConnect = new DataBase(poste);
        }
       
        private void label1_aide_text_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }
    }
}
