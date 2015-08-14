using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MySkillz.App_Code
{
    public class MyClass
    {
        private int myCount = 0;

        public int MyCount
        {
            get
            {
                return myCount;
            }
        }

        public void UpTheCount() {
            checked { 
                myCount += 1;
            }
        }
    }
}