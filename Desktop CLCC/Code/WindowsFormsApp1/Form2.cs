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


//string
using System.Diagnostics;
using System.IO;

namespace WindowsFormsApp1
{
    public partial class Form2 : Form
    {
        private DataBase dbConnect;
        public string userp2;
        public string passwordp2;

        public Form2(string user2,string password)
        {
            InitializeComponent();

            dbConnect = new DataBase();//databaseconnection

            CustomizeDesing();//sousmenu

            userp2 = user2;
            passwordp2 = password;

        }

  

        private void button2_Click(object sender, EventArgs e)
        {
            Form3_AjouteSection f3 = new Form3_AjouteSection(userp2, passwordp2);
            f3.Show();
            this.Hide();
            //ADD PATIENT
        }

        private void button1_Click(object sender, EventArgs e)
        {//true
            label3_titrepage.Text = "Liste des patients";

            dataGridView1_NEWpatient.Visible = true;
            panel5_motpass.Visible = true;

            flowLayoutPanel3_manuSection.Visible = true;
            
            panel2_Cherche.Visible = true;
            //Clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
        }

        private void button4_Click(object sender, EventArgs e)
        {   //true
            label3_titrepage.Text = "Imprimé";
            //false
            dataGridView1_NEWpatient.Visible = false;
            panel2_Cherche.Visible = false;
            panel5_motpass.Visible = false;
            flowLayoutPanel3_manuSection.Visible = false;
            pictureBox3_centrelogo.Visible = true;
        }

        private void button5_Click(object sender, EventArgs e)
        {   //true
            label3_titrepage.Text = "Partagé";
            //false
            dataGridView1_NEWpatient.Visible = false;
            panel2_Cherche.Visible = false;
            panel5_motpass.Visible = false;
            flowLayoutPanel3_manuSection.Visible = false;
            pictureBox3_centrelogo.Visible = true;
        }

        private void button6_Click(object sender, EventArgs e)
        {   //true
            label3_titrepage.Text = "Paramètres";
            //panel5_motpass.Visible = true;
            //false
            dataGridView1_NEWpatient.Visible = false;
            panel2_Cherche.Visible = false;
            flowLayoutPanel3_manuSection.Visible = false;
            //opération
            showSubMenu(panel2_sousmenu);
            pictureBox3_centrelogo.Visible = false;

            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";

            //ADMIN

            if (dbConnect.Admin(userp2,passwordp2) == true) {
                button2_AjouteUser.Enabled = true;
                
                    }
          else { button2_AjouteUser.Enabled = false; }
        }

        private void button7_Click(object sender, EventArgs e)
        {
            Form1 f1 = new Form1();
            f1.Show();
            this.Hide();
        }
        //change password______________________________________________________________________________________________________________________________________________________________________________________________
        private void button9_Click(object sender, EventArgs e)
        {
            TextBox[] tabTextBox = {textBox6_changer1, textBox7_change2, textBox8_change3, textBox9_change4};
            dbConnect.ChangePassWord(tabTextBox);
            

        }
     //________________________________________afichage DES  sections __________________________________________________________________
        private void button11_S1_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Référence des patients";
            dbConnect.Load_affich("SELECT * FROM 1_reference_despatients", dataGridView1_NEWpatient);
        }

        private void button12_S2_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Caracteristique sosciodemographique";
            dbConnect.Load_affich("SELECT * FROM 2_caracteristique_sosciodemographique", dataGridView1_NEWpatient);
        }

        private void button13_S3_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Donnees anamnestique atcdspersonneles";
            dbConnect.Load_affich("SELECT * FROM 3_donnees_anamnestique_atcdspersonneles", dataGridView1_NEWpatient);
        }

        private void button14_S4_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Atcd familliaux cancer";
            dbConnect.Load_affich("SELECT * FROM 4_atcd_familliaux_cancer", dataGridView1_NEWpatient);
        }

        private void button15_S5_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "IMC";
            dbConnect.Load_affich("SELECT * FROM 5_imc", dataGridView1_NEWpatient);
        }

        private void button16_S6_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Habitude toxique";
            dbConnect.Load_affich("SELECT * FROM 6_habitude_toxique", dataGridView1_NEWpatient);
        }

        private void button17_S7_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "étude génétique";
            dbConnect.Load_affich("SELECT * FROM 7_etude_genetique", dataGridView1_NEWpatient);
        }

        private void button18_S8_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Circonctances de decouverte";
            dbConnect.Load_affich("SELECT * FROM 9_circonctances_de_decouverte", dataGridView1_NEWpatient);
        }

        private void button19_S9_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Donnees clinique";
            dbConnect.Load_affich("SELECT * FROM 10_donnees_clinique", dataGridView1_NEWpatient);
        }

        private void button20_S10_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "La mammographie";
            dbConnect.Load_affich("SELECT * FROM 11_la_mammographie", dataGridView1_NEWpatient);
        }

        private void button21_S11_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "IRM mammaire";
            dbConnect.Load_affich("SELECT * FROM 12_irm_mammaire", dataGridView1_NEWpatient);
        }

        private void button22_S12_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Donnees anatomapathologique typehistologique";
            dbConnect.Load_affich("SELECT * FROM 13_donnees_anatomapathologique_typehistologique", dataGridView1_NEWpatient);
        }

        private void button23_S13_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Donnes annatomopatologiebiopsy initial facteurspronostique";
            dbConnect.Load_affich("SELECT * FROM 14_donnes_annatomopatologiebiopsy_initial_facteurspronostique", dataGridView1_NEWpatient);
        }

        private void button24_S14_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Donnes annatomopatologiebiopsy initial typehistologique IHC";
            dbConnect.Load_affich("SELECT * FROM 15_donnes_annatomopatologiebiopsy_initial_typehistologique_ihc", dataGridView1_NEWpatient);
        }

        private void button25_S15_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Billan dextension";
            dbConnect.Load_affich("SELECT * FROM 16_billan_dextension", dataGridView1_NEWpatient);
        }

        private void button26_S16_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Metastase synchrone";
            dbConnect.Load_affich("SELECT * FROM 17_metastase_synchrone", dataGridView1_NEWpatient);
        }

        private void button27_S17_Click(object sender, EventArgs e)
        {//clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Classifications";
            dbConnect.Load_affich("SELECT * FROM 18_classifications", dataGridView1_NEWpatient);
        }

        private void button28_S18_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Bilan biologique initial";
            dbConnect.Load_affich("SELECT * FROM 19_bilan_biologique_initial", dataGridView1_NEWpatient);
        }

        private void button29_S19_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Pec yherapeut";
            dbConnect.Load_affich("SELECT * FROM 20_pec_yherapeut", dataGridView1_NEWpatient);
        }

        private void button30_S20_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Pec chirurgicale";
            dbConnect.Load_affich("SELECT * FROM 21_pec_chirurgicale", dataGridView1_NEWpatient);
        }

        private void button31_S21_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Donnees anatomopathologique de la chirurgie";
            dbConnect.Load_affich("SELECT * FROM 22_donnees_anatomopathologique_de_la_chirurgie", dataGridView1_NEWpatient);
        }

        private void button32_S22_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Donnesannatomopatologiebiopsy initial typehistologique";
            dbConnect.Load_affich("SELECT * FROM 23_donnesannatomopatologiebiopsy_initial_typehistologique", dataGridView1_NEWpatient);
        }

        private void button33_S23_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Autres donnees anatomapathologique de la chirurgie";
            dbConnect.Load_affich("SELECT * FROM 24_autres_donnees_anatomapathologique_de_la_chirurgie", dataGridView1_NEWpatient);
        }

        private void button34_S24_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Classification histologique";
            dbConnect.Load_affich("SELECT * FROM 25_classification_histologique", dataGridView1_NEWpatient);
        }

        private void button35_S25_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Autresdonnees anatomopatologie de la chirurgie";
            dbConnect.Load_affich("SELECT * FROM 26_autresdonnees_anatomopatologie_delachirurgie", dataGridView1_NEWpatient);
        }

        private void button36_S26_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "IHC_sur piece operatoire";
            dbConnect.Load_affich("SELECT * FROM 27_ihc_sur_piece_operatoire", dataGridView1_NEWpatient);
        }

        private void button37_S27_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Chimiotherapie adjuvante cta";
            dbConnect.Load_affich("SELECT * FROM 28_chimiotherapie_adjuvante_cta", dataGridView1_NEWpatient);
        }

        private void button38_S28_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Toxicite de la cta";
            dbConnect.Load_affich("SELECT * FROM 29_toxicite_de_la_cta", dataGridView1_NEWpatient);
        }

        private void button39_S29_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Chimiotherapie neoadjuvante cna";
            dbConnect.Load_affich("SELECT * FROM 30_chimiotherapie_neoadjuvante_cna", dataGridView1_NEWpatient);
        }

        private void button40_S30_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Toxicite de la ctna";
            dbConnect.Load_affich("SELECT * FROM 31_toxicite_de_la_ctna", dataGridView1_NEWpatient);
        }

        private void button41_S31_Click(object sender, EventArgs e)
        { 
            //clear
        textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Evaluation_ctna";
            dbConnect.Load_affich("SELECT * FROM 32_evaluation_ctna", dataGridView1_NEWpatient);
        }

        private void button42_S32_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Hormonotherapie_htadjuvante";
            dbConnect.Load_affich("SELECT * FROM 33_hormonotherapie_htadjuvante", dataGridView1_NEWpatient);
        }

        private void button43_S33_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Trastuzumab en adjuvant";
            dbConnect.Load_affich("SELECT * FROM 34_trastuzumab_en_adjuvant", dataGridView1_NEWpatient);
        }

        private void button44_S34_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Radiotherapiert enadjuvant";
            dbConnect.Load_affich("SELECT * FROM 35_radiotherapiert_enadjuvant", dataGridView1_NEWpatient);
        }

        private void button45_S35_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Recidive controlatele locale";
            dbConnect.Load_affich("SELECT * FROM 36_recidive_controlatele_locale", dataGridView1_NEWpatient);
        }

        private void button46_S36_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Recrechute M";
            dbConnect.Load_affich("SELECT * FROM 37_recrechute_m", dataGridView1_NEWpatient);
        }

        private void button47_S37_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "IHC dela rechute";
            dbConnect.Load_affich("SELECT * FROM 38_ihc_dela_rechute", dataGridView1_NEWpatient);
        }

        private void button48_S38_Click(object sender, EventArgs e)
        {//clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "chimiotherapie de la recidive";
            dbConnect.Load_affich("SELECT * FROM 39_chimiotherapie_de_la_recidive", dataGridView1_NEWpatient);
        }

        private void button49_S39_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "XT recidive";
            dbConnect.Load_affich("SELECT * FROM 40_xt_recidive", dataGridView1_NEWpatient);
        }

        private void button50_S40_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Chimiotherapie1er ligne metastique";
            dbConnect.Load_affich("SELECT * FROM 41_chimiotherapie1er_ligne_metastique", dataGridView1_NEWpatient);
        }

        private void button51_S41_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Toxicite g3 g4 chimio 1ere ligne m";
            dbConnect.Load_affich("SELECT * FROM 42_toxicite_g3_g4chimio1erelignem", dataGridView1_NEWpatient);
        }

        private void button52_S42_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "chimiotherapie 2eme ligne";
            dbConnect.Load_affich("SELECT * FROM 43_chimiotherapie2em_ligne", dataGridView1_NEWpatient);
        }

        private void button53_S43_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Toxicite chmiothrapie 2em ligne m";
            dbConnect.Load_affich("SELECT * FROM 44_toxicite_chmiothrapie2em_lignem", dataGridView1_NEWpatient);
        }

        private void button54_S44_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Chimio 3em ligne";
            dbConnect.Load_affich("SELECT * FROM 45_chimio_3emligne", dataGridView1_NEWpatient);
        }

        private void button55_S45_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Maintenance partrastuzumab";
            dbConnect.Load_affich("SELECT * FROM 46_maintenance_partrastuzumab", dataGridView1_NEWpatient);
        }

        private void button56_S46_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Flash RT";
            dbConnect.Load_affich("SELECT * FROM 47_flash_rt", dataGridView1_NEWpatient);
        }

        private void button57_S47_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Maintenance parhormonotherapieht";
            dbConnect.Load_affich("SELECT * FROM 48_maintenance_parhormonotherapieht", dataGridView1_NEWpatient);
        }

        private void button58_S48_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Hormonotherapie ht 1ere ligne m";
            dbConnect.Load_affich("SELECT * FROM 49_hormonotherapie_ht_1ereligne_m", dataGridView1_NEWpatient);
        }

        private void button59_S49_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Hormonotherapie ht 2em ligne m";
            dbConnect.Load_affich("SELECT * FROM 50_hormonotherapie_2em_ligne_m", dataGridView1_NEWpatient);
        }

        private void button60_S50_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "ht 3 ligne m";
            dbConnect.Load_affich("SELECT * FROM 51_ht_3ligne_m", dataGridView1_NEWpatient);
        }

        private void button61_S51_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Grossesse apres trt";
            dbConnect.Load_affich("SELECT * FROM 52_grossesse_apres_trt", dataGridView1_NEWpatient);
        }

        private void button62_S52_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Devenir";
            dbConnect.Load_affich("SELECT * FROM 53_devenir", dataGridView1_NEWpatient);
        }

        private void button63_S53_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Datededernier controle";
            dbConnect.Load_affich("SELECT * FROM 54_datededernier_controle", dataGridView1_NEWpatient);
        }

        private void button64_S54_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "Osteodensitometrie";
            dbConnect.Load_affich("SELECT * FROM 55_osteodensitometrie", dataGridView1_NEWpatient);
        }

        private void button65_S55_Click(object sender, EventArgs e)
        {
            //clear
            textBox1_Recherche.Clear();
            label2_resalt.Text = "Répétition";
            label3_titrepage.Text = "section8";
            dbConnect.Load_affich("SELECT * FROM 8_section8", dataGridView1_NEWpatient);
        }
        //SOUS MENU
        private void CustomizeDesing()
        {
            panel2_sousmenu.Visible = false;
        }
        private void hideSubMenu()
        {
            if(panel2_sousmenu.Visible == true)
                panel2_sousmenu.Visible = false;
        }
        private void showSubMenu(Panel submenu)
        {
            if (submenu.Visible == false)
            {
                hideSubMenu();
                submenu.Visible = true;
            }
            else
                submenu.Visible = false;
        }
        //_______________________________________________________________________________________________________________

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }
        #region list paramtre
        private void button1_CHangePassword_Click(object sender, EventArgs e)
        {
            label3_titrepage.Text = "Changer le mot de passe";
            panel2_CouleurParamtre.Visible = false;
            panel5_couleurmotpass.Visible = true;
            hideSubMenu();
        }

        private void button2_AjouteUser_Click(object sender, EventArgs e)
        {
            label3_titrepage.Text = "  Ajoute utlisateur";
            panel2_CouleurParamtre.Visible = true;
            panel5_couleurmotpass.Visible = true;
            hideSubMenu();
        }
        #endregion
        private void panel5_motpass_Paint(object sender, PaintEventArgs e)
        {

        }
        private void panel2_AJOUTERPATIENT_Paint(object sender, PaintEventArgs e)
        {

        }
        private void button1_Click_1(object sender, EventArgs e)
        {

            int admin = 0;
            if (radioButton1_admin.Checked)
            {
                admin = 1;
            }
            else if (radioButton2_traitant.Checked)
            {
                admin = 0;
            }
            string nom = Convert.ToString(textBox4_usernameNew.Text);
            string password = Convert.ToString(textBox3_passwordNew.Text);
            List<string> stg_list = new List<string>() { nom, password };
            List<int> int_list = new List<int>() { admin };
            dbConnect.Insert(DataBase.InsertReq(0, int_list, stg_list));
            textBox4_usernameNew.Clear();
            textBox3_passwordNew.Clear();
            textBox4_usernameNew.Focus();
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            label3_titrepage.Text = "Historique";
            panel2_CouleurParamtre.Visible = false;
            panel5_couleurmotpass.Visible = false;
            //TRUE
            dataGridView1_NEWpatient.Visible = true;
            panel2_Cherche.Visible = true;
            //join 3 table
            string X = "SELECT remplir.Dateheure, remplir.Ndossier, utilisateur.nomutilisateur, section.nomsection FROM remplir JOIN utilisateur ON remplir.IDutilisateur=utilisateur.IDutilisateur JOIN section ON remplir.IdSection=section.IdSection";
            dbConnect.Load_affich(X, dataGridView1_NEWpatient);
            hideSubMenu();
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        private void radioButton1_CheckedChanged_1(object sender, EventArgs e)
        {

        }

        private void panel2_CouleurParamtre_Paint(object sender, PaintEventArgs e)
        {

        }

        private void dataGridView1_NEWpatient_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void button1_Recherche_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < dataGridView1_NEWpatient.Rows.Count; i++)
            {
                foreach (DataGridViewCell cell in dataGridView1_NEWpatient.Rows[i].Cells)
                {
                    cell.Style.BackColor = Color.White;
                }
            }
                    int nbrFois = 0;
            int index = 0;

            if (dataGridView1_NEWpatient != null)
            {
                for(int i = 0; i < dataGridView1_NEWpatient.Rows.Count; i++)//ligne
                {
                    foreach (DataGridViewCell cell in dataGridView1_NEWpatient.Rows[i].Cells)//colones de i eme ligne
                    {
                        if (cell.Value != null && (cell.Value.ToString().IndexOf(textBox1_Recherche.Text.ToString())) >= 0)
                        {
                            nbrFois += 1;
                           cell.Style.BackColor = Color.LightYellow;
                        }
                    }
                }
            }
            label2_resalt.Text = nbrFois.ToString();
        }

        private void button7_deconcte_Click(object sender, EventArgs e)
        {
            Form1 f1 = new Form1();
            f1.Show();
            this.Hide();
        }
    }
}