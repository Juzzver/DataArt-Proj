using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebExamProj
{
    public class Person
    {
        string Name;
        string Email;

        public Person(string name, string email)
        {
            Name = name;
            Email = email;
        }

        public string Login
        {
            get { return Name != null ? Name : "Undefined"; }
            set { Name = value; }
        }

        public string EmailAddress
        {
            get { return Email != null ? Email : "Email Undefined"; }
            set { Email = value; }
        }
    }
}