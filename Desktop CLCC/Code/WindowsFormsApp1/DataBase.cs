using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Windows.Forms;
using System.Diagnostics;
using System.IO;

using MySql.Data.MySqlClient;

//LIST
using System.Collections.Generic;
//datatable
using System.Data;

namespace WindowsFormsApp1
{
    internal class DataBase
    {
        private MySqlConnection connection;
       


        public DataBase()
        {
            Initialize();

        }
//************************************************connection avec la base de donnée**********************************************
          public void Initialize()
          {
            string connectionstring;
         connectionstring = "SERVER=localhost;DATABASE=logicielclcc;UID= ASMA;PASSWORD=CLCC2022; convert zero datetime=True";
            connection = new MySqlConnection(connectionstring);
          }
        
        //**************************************************Open Connection*******************************************************
        private bool OpenConenction()
        {
            try
            {
                connection.Open();
                return true;

            }
            catch (MySqlException ex)
            {

                switch (ex.Number)
                {
                    case 0:
                        MessageBox.Show("Cannot connect to server.  Contact administrator");
                        break;

                    case 1045:
                        MessageBox.Show("Invalid usrname/password, Please try again");

                        break;
                }

            }
            return false;
        }
//__**********************************************Close Connection*******************************************************************
        private bool CloseConnection()
        {
            try
            {
                connection.Close();
                return true;

            }
            catch (MySqlException ex)
            {

                MessageBox.Show(ex.Message);
                return false;
            }

        }
  //_____________________________________________________________insert____________________________________________________________
        public void Insert(string x)
        {
            if (this.OpenConenction() == true)
            {
                //create command and assign the query and connection from the constructor
                MySqlCommand cmd = new MySqlCommand(x, connection);

                //Execute command
                //probeleme
                cmd.ExecuteNonQuery();

                MessageBox.Show("Save Successful");
                this.CloseConnection();
            }
        }
//________________________________________________LOAd_________________________________________________________________________
        public void Load_affich(string x, DataGridView dgv)
        {
            if (this.OpenConenction() == true)
            {
                //create command and assign the query and connection from the constructor
                MySqlCommand cmd = new MySqlCommand(x, connection);
                //Execute command
                //C il y a un probeleme
                cmd.ExecuteNonQuery();
                //tab
                DataTable dt = new DataTable();
                MySqlDataAdapter da = new MySqlDataAdapter(cmd);
                da.Fill(dt);
                dgv.DataSource = dt;
                this.CloseConnection();
            }
        }
//________________________________________________LOAd_COMBOBOX________________________________________________________________________
        public void Load_Combo(string x, ComboBox cmb)
        {
            if (this.OpenConenction() == true)
            {
                //create command and assign the query and connection from the constructor
                MySqlCommand cmd = new MySqlCommand(x, connection);
                //Execute command
                //C il y a un probeleme
                cmd.ExecuteNonQuery();
                //combo
                MySqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                     cmb.Items.Add(dr.GetString(0));
                }
                this.CloseConnection();
            }
        }

        //__________________________________________UPDATA_________________________________________________________________________________________________
        public void Updata(string tb)
        {
            //  if (this.OpenConenction() == true)
            //  this.CloseConnection();
            //Je ne vais pas les utiliser ici
            //parce que je vais les appeler à la fonction ChangePassWord
            //et il va y en avoir deux là aussi.

            //create command and assign the query and connection from the constructor
            MySqlCommand cmd = new MySqlCommand(tb, connection);
            //Execute command,probeleme
            cmd.ExecuteNonQuery();
            MessageBox.Show("Save Successful");
        }

        //_________________________________________________DELET______________________________________________________________________________

        //Seul un complément à la recherche scientifique
        //ne sera pas utilisé dans ce projet pour des raisons qui seront expliquées
        //lors de la soumission du projet au Comité
        public void Delet(string tb)
        {
            if (this.OpenConenction() == true)
            {
                MySqlCommand cmd = new MySqlCommand(tb, connection);

                cmd.ExecuteNonQuery();

                MessageBox.Show("Save Successful");
                this.CloseConnection();
            }
        }
//___________________________________________________________LOGIN_______________________________________________________________________________________
        public bool Login(TextBox tb, TextBox tb1, String nuser,string paswad)
        {
            if (this.OpenConenction() == true)
            {
                MySqlDataAdapter sda = new MySqlDataAdapter("Select Count(*) From utilisateur where nomutilisateur='" + tb.Text + "' and  mot_de_passe='" + tb1.Text + "' ", connection);

                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows[0][0].ToString() == "1")
                {
                    Form2 f2 = new Form2(nuser,paswad);
                    f2.Show();
                   this.CloseConnection();
                    return true;
                }
                else
                {
                    MessageBox.Show("Veuillez vérifier votre nom d'utilisateur et votre mot de pass");
                    tb.Clear();
                    tb1.Clear();
                    tb.Focus();
                   this.CloseConnection();
                    return false;
                }
              // this.CloseConnection();
            }
            else { MessageBox.Show("Erreur au connection"); }
            return false;
        }
   //_________________________________________________________________________________________Véréfication admin___________________________________________________
        public bool Admin(string tb, string tb1)
        {
            int Ad = 1;
            string x = $"Select Count(*) From utilisateur where nomutilisateur='{tb}' and  mot_de_passe='{tb1}' and  Admin='{Ad}' ";
            if (this.OpenConenction() == true)
            {
                MySqlDataAdapter sda = new MySqlDataAdapter(x, connection);

                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows[0][0].ToString() == "1")
                {
                    this.CloseConnection();
                    return true;
                }
                else
                {
                    this.CloseConnection();
                    return false;
                }
            }
            return false;
        }
    //_________________________________________________________Change password_________________________________________________________________
        public void ChangePassWord(TextBox[] tabText) {
               if(this.OpenConenction()==true)
            {
                MySqlDataAdapter sda = new MySqlDataAdapter("Select Count(*) From utilisateur where nomutilisateur='" + tabText[0].Text + "' and mot_de_passe= '" + tabText[1].Text + "'", connection);
                DataTable dt = new DataTable();//utilisateur where nomutilisateur='" + tb.Text + "' and  mot_de_passe='" + tb1.Text + "' ", connection
                sda.Fill(dt);
                List<int> in_list = new List<int>() { };
                List<string> str_list = new List<string>() { tabText[2].Text, tabText[0].Text };
                if (dt.Rows[0][0].ToString() == "1")
                {

                    if (tabText[2].Text == tabText[3].Text)
                    {
                        Updata(DataBase.Updatareqt(0, 1, in_list, str_list));
                        //Il va être vraiment développé.
                        MessageBox.Show("Votre mot de passe a été modifié");
                    }
                    else
                    {
                        MessageBox.Show("Mot de passe non valide, veuillez réessayer");
                    }
                }
                else { MessageBox.Show("Votre mot de passe / nom d'utilisateur est non valide, veuillez réessayer"); }
                this.CloseConnection();
            }
           
        }
        //  _____________________________________________________________________les requet______________________________________________________________________________________________________________________________________________


        public static string InsertReq(int requet, List<int> Ilist, List<string> Slist)
        {
            string req;
            switch (requet)

            {
                case 0: return req = $"INSERT INTO utilisateur (IDutilisateur,nomutilisateur ,mot_de_passe,Admin) VALUES('','{Slist[0]}','{Slist[1]}','{Ilist[0]}')";
                //REF
               case 2: return req = $"INSERT INTO 1_reference_despatients (Ndossier,reference_despatients,Nom,prenom,date_de_naissance,age,adresse,IdSection) VALUES('{Ilist[0]}','{Slist[0]}','{Slist[1]}','{Slist[2]}','{Slist[3]}','{Ilist[1]}','{Slist[4]}',(SELECT IdSection FROM section WHERE nomsection='{Slist[5]}'))";
                    //REMPLIR
                    
                case 3: return req = $"INSERT INTO remplir (IDremplir,Dateheure,IDutilisateur,IdSection,Ndossier) VALUES('','{Slist[0]}',(SELECT IDutilisateur FROM utilisateur WHERE nomutilisateur='{Slist[1]}'),(SELECT IdSection FROM section WHERE nomsection='{Slist[2]}'),(SELECT Ndossier FROM 1_reference_despatients WHERE Ndossier='{Ilist[0]}'))";

                case 4: return req = $"INSERT INTO 2_caracteristique_sosciodemographique (idsection2,Ndossier,habitat,telephone,etat_marital,profession,niveau_socio_econo,niveau_scolaire,IdSection) VALUES('',(SELECT Ndossier FROM 1_reference_despatients WHERE Ndossier='{Ilist[0]}'),'{Slist[0]}','{Slist[1]}','{Slist[2]}','{Slist[3]}','{Slist[4]}','{Slist[5]}',(SELECT IdSection FROM section WHERE nomsection='{Slist[6]}'))";
                default:
                    return req = "F";

            }
            if (req == "F") { MessageBox.Show("Tu as une erreur insert"); }

        }
        //  ________________________________________________________________________________________________________________________________
        public static string Updatareqt(int requet, int cle, List<int> int_list, List<string> string_list)
        {
            string req;
            switch (requet)
            {
                case 0: return req = $"Update utilisateur Set mot_de_passe='{string_list[0]}' Where nomutilisateur ='{string_list[1]}' ; ";
               
                default:
                    return req = "F";

            }
            if (req == "F") { MessageBox.Show("Tu as une erreur updata"); }
        }
        // _______________________________________________________________________________________________________________________
       
    }
}    