using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Forms;
using System.Diagnostics;
using System.IO;

using MySql.Data.MySqlClient;

// Dans La Class Form Ajouter deux lignes suivantes 
//private Class1 dbConnect
//dans le constructeur ajouter 
//dbConnect = new Class1(); 

namespace searchofpictures
{
    class bdd
    {
        private MySqlConnection connection;

        public bdd()
        {

            initialize();
        }

        public void initialize()
        {
            string connectionstring;
            connectionstring = "SERVER=172.0.0.1;DATABASE=logiciellcc;UID= root;PASSWORD=;";
            connection = new MySqlConnection(connectionstring);
        }
        // Open Connection
        private bool OpenConenction()
        {
            try
            {
                connection.Open();
		return true;

            }
            catch (MySqlException ex)
            {

                switch(ex.Number)
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
        //Close Connection
        private bool CloseConnection()
        {
            try
            {
                connection.Close();
                return true;

            }
            catch(MySqlException ex)
            {

                MessageBox.Show(ex.Message);
                return false;
            }

        }
    }
}
