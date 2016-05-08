using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebExamProj
{
    public partial class Default : System.Web.UI.Page
    {
        //Данная переменная выводится на странице с помощью выражения <%= output %> 
        public string parse_output;
        public string error_auth;

        // PageLoad - обработчик события Load(загрузки страницы). Событие срабатывает при каждой загрузке страницы
        protected void Page_Load(object sender, EventArgs e)
        {
            //Обновление текста в серверном элементе управления.
            Output.Text = "Hello World! Time on server: " + DateTime.Now.ToLongTimeString();


            // Создаем парсер данных из файла:

            //С помощью метода Server.MapPath() - виртуальный путь "localhost" можно преобразовать
            // в физический(подобие вида "C//user//etc/").
            // Преобразованный путь "App_Data\\AlphaTest.txt" преобразуется в: 
            // подобный: "C:\wwwroot\mysite\App_Data\AlphaTest.txt"
            string filename = Server.MapPath(@"App_Data\AlphaTest.txt");
            parse_output = File.ReadAllText(filename);

            Person p = new Person("admin", "admin@example.com");

            parse_output = parse_output.Replace("<%LOGIN%>", p.Login); //указываем маркер <%LOGIN%> на который заменится на наш p.Name
            parse_output = parse_output.Replace("<%EMAIL%>", p.EmailAddress);
            // теперь мы можем оперировать данными из переменной output, обращаясь к нему прямо из разметки: <%=output%>
            //End parsing
        }

        protected void LoginBox_TextChanged(object sender, EventArgs e)
        {
            if (LoginBox.Text == "Enter your login here")
            this.LoginBox.Text = "";
        }

        protected void PasswordBox_TextChanged(object sender, EventArgs e)
        {
            this.PasswordBox.Text = "";
        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            //if (LoginBox.Text != "admin" && PasswordBox.Text != "password")
            //    error_auth = "<br /><span style ='background: red'>Your account or password is invalid!</span>";
            //else
            //    error_auth = "<br /><span style ='background: green'>Your successfully login!</span>";
                //  Response.Write("Your account or password is invalid");
               
                
        }
    }
}