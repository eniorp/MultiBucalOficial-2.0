using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;

/// <summary>
/// Descrição resumida de Email
/// </summary>
public class Email
{
    public Email()
    {
        //
        // TODO: Adicionar lógica do construtor aqui
        //
    }
    
    public string EnviaMailEnio(string email, string assunto, string Mensagem)
    {
        try
        {

            string remetenteEmail = "cenungosta@gmail.com"; //O e-mail do remetente
            MailMessage mail = new MailMessage();


            mail.To.Add(email);
            mail.From = new MailAddress(remetenteEmail, "Ufenesp Enio - Cadastro de beneficiario", System.Text.Encoding.UTF8);
            mail.Subject = assunto;
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = Mensagem;
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High; //Prioridade do E-Mail

            SmtpClient client = new SmtpClient();  //Adicionando as credenciais do seu e-mail e senha:
            client.Credentials = new System.Net.NetworkCredential("cenungosta", "183729zmt");
            client.Port = 587; // Esta porta é a utilizada pelo Gmail para envio

            client.Host = "smtp.gmail.com"; //Definindo o provedor que irá disparar o e-mail        
            client.EnableSsl = true; //Gmail trabalha com Server Secured Layer
            try
            {
                client.Send(mail);

            }

            catch (Exception ex)
            {
                return "Erro : " + ex.Message;
            }
        }
        catch (Exception ex)
        {

            return "erro : " + ex.Message;
        }
        return "S";
    }
}