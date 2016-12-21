using cervejariathreerocks.BLL;
using cervejariathreerocks.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Mail;

namespace cervejariathreerocks.BLL
{
    public class BLLEmail
    {


        public bool EnviarEmail(InfoContato info)
        {

            try
            {

                ////string remetenteEmail = "clube@cervejariathreerocks.com.br"; //O e-mail do remetente
                //string remetenteEmail = "wfredericomp@gmail.com"; //O e-mail do remetente
                //MailMessage mail = new MailMessage();
                ////mail.To.Add("orodrigoaraujo@gmail.com");
                //mail.To.Add("wfredericomp@gmail.com");
                //mail.From = new MailAddress(remetenteEmail, "Clube - Three Rocks", System.Text.Encoding.UTF8);
                //mail.Subject = "Clube Three Rocks";
                //mail.SubjectEncoding = System.Text.Encoding.UTF8;
                //mail.Body = PopulaCorpoEmail(info);
                //mail.BodyEncoding = System.Text.Encoding.UTF8;
                //mail.IsBodyHtml = true;
                //mail.Priority = MailPriority.High; //Prioridade do E-Mail

                //SmtpClient client = new SmtpClient();  //Adicionando as credenciais do seu e-mail e senha:
                ////client.Credentials = new System.Net.NetworkCredential(remetenteEmail, "Threerocks@2000");
                //client.Credentials = new System.Net.NetworkCredential(remetenteEmail, "cintia10@");

                //client.Port = 587; // Esta porta é a utilizada pelo Gmail para envio
                ////client.Host = "smtp.cervejariathreerocks.com.br"; //Definindo o provedor que irá disparar o e-mail
                //client.Host = "smtp.google.com"; //Definindo o provedor que irá disparar o e-mail
                //client.EnableSsl = true; //Gmail trabalha com Server Secured Layer

                ////Envia o email
                //client.Send(mail);



                //Instancia o Objeto Email como MailMessage 
                MailMessage Email = new MailMessage();

                //Atribui ao método From o valor do Remetente 
                Email.From = "clube@cervejariathreerocks.com.br";

                //Atribui ao método To o valor do Destinatário 
                Email.To = "orodrigoaraujo@gmail.com";


                //Atribui ao método Cc o valor do com Cópia 
                Email.Cc = "clube@cervejariathreerocks.com.br";

                //Atribui ao método Bcc o valor do com Cópia oculta 
                Email.Bcc = "clube@cervejariathreerocks.com.br";

                //Atribui ao método Subject o assunto da mensagem 
                Email.Subject = "Clube - Three Rocks";

                //Define o formato da mensagem que pode ser Texto ou Html 
                Email.BodyFormat = MailFormat.Html;

                //Atribui ao método Body a texto da mensagem 
                Email.Body = PopulaCorpoEmail(info);

                //Define qual a url que deve ser usada como caminho para as imagens informadas no código html 
                Email.UrlContentBase = "cervejariathreerocks.com.br";

                //Define qual o host a ser usado para envio de mensagens. 
                SmtpMail.SmtpServer = "localhost";

                //Envia a mensagem baseado nos dados do objeto Email 
                SmtpMail.Send(Email);


            }
            catch (Exception ex)
            {
                throw ex;
            }

            return true;
        }

        private string PopulaCorpoEmail(InfoContato info)
        {
            StringBuilder texto = new StringBuilder();

            texto.Append("Clube - Three Rocks");
            texto.Append("<p>Nome: " + info.nome + "</p><br/>");
            texto.Append("<p>Email: " + info.email+"</p><br/>");
            texto.Append("<p>Estado / Cidade: " + info.estadoCidade + "</p><br/>");
            texto.Append("<p>Estilo: " + info.estiloThreeRocks + "</p><br/>");
            texto.Append("<p>Qualidade: " + info.qualidade + "</p><br/>");
            texto.Append("<p>Mensagem: " + info.mensagem + "</p><br/>");

            texto.Append("<center><h3>Cervejaria Three Rocks</h3></center>");

            return texto.ToString();
        }

    }
}