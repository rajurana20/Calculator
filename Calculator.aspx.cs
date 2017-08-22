using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator
{
    public partial class Calculator : System.Web.UI.Page
    {
        public  static decimal number1, number2,result=0;
        public static String num1, num2, message="";
        public static string op;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void SetOperator(object sender)
        {
            Button myButton = (Button)sender;
            number1 = Convert.ToDecimal(num1);
            op = myButton.Text;
            message = message + " " + op;
            lblScreen.Text = message;
        }
        public void SetNum(object sender)
        {
            Button myButton = (Button)sender;
            String btnText = myButton.Text;
            if (op ==null)
            {
                num1 = num1 +""+btnText;
                message = num1 + " ";
                lblScreen.Text = message;
            }
            else
            {
                num2 = num2 + ""+btnText;
                message = message + " " + btnText;
                lblScreen.Text = message;
            }
        }

        protected void btn4_Click(object sender, EventArgs e)
        {
            SetNum(sender);
        }

        protected void btn13_Click(object sender, EventArgs e)
        {
            SetOperator(sender);
        }

        protected void btn5_Click(object sender, EventArgs e)
        {
            SetNum(sender);
        }

        protected void btnMinus_Click(object sender, EventArgs e)
        {
            SetOperator(sender);
        }

        protected void btn16_Click(object sender, EventArgs e)
        {
            SetOperator(sender);
        }

        protected void btn15_Click(object sender, EventArgs e)
        {
            SetOperator(sender);
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            SetNum(sender);
        }

        protected void btn2_Click(object sender, EventArgs e)
        {
            SetNum(sender);
        }

        protected void btn6_Click(object sender, EventArgs e)
        {
            SetNum(sender);
        }

        protected void btn8_Click(object sender, EventArgs e)
        {
            SetNum(sender);
        }

        protected void btnt_Click(object sender, EventArgs e)
        {
            SetNum(sender);
        }

        protected void btn10_Click(object sender, EventArgs e)
        {
            SetNum(sender);
        }

        protected void btne_Click(object sender, EventArgs e)
        {
            SetNum(sender);
        }

        protected void btn11_Click1(object sender, EventArgs e)
        {
            SetNum(sender);
        }

        protected void btn3_Click(object sender, EventArgs e)
        {
            SetNum(sender);
        }


        protected void btn11_Click(object sender, EventArgs e)
        {
            SetNum(sender);
        }

        protected void btnEqual_Click(object sender, EventArgs e)
        {
           
            number2 = Convert.ToDecimal(num2);
            if (op == "+")
                result = number1 + number2;
            else if (op == "-")
                result = number1 - number2;
            else if (op == "*")
                result = number1 * number2;
            else if (op == "/")
                result = number1 / number2;
            lblScreen.Text = result.ToString();
            number1 = result;
            message = number1.ToString();
            num1 = number1.ToString();
            number2 = 0;
            num2 ="";
        }

        protected void btn17_Click(object sender, EventArgs e)
        {
            lblScreen.Text = "";
            message = "";
            num1 = "";
            num2 = "";
            number1 = 0;
            number2 = 0;
            op=null;
        }



      

        

    }
}