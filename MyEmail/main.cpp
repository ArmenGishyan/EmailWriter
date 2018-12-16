#include "mainwindow.h"
#include <QApplication>
#include <QTcpSocket>

#include "/home/user/Desktop/qt/SmtpClient-for-Qt/src/emailaddress.h"
#include "/home/user/Desktop/qt/SmtpClient-for-Qt/src/smtpclient.h"
#include "/home/user/Desktop/qt/SmtpClient-for-Qt/src/mimetext.h"


int main(int argc, char *argv[])
{
    QApplication a(argc, argv);
    MainWindow w;
          // This is a first demo application of the SmtpClient for Qt project

       // First we need to create an SmtpClient object
       // We will use the Gmail's smtp server (smtp.gmail.com, port 465, ssl)

       SmtpClient smtp("smtp.gmail.com", 465, SmtpClient::SslConnection);

       // We need to set the username (your email address) and the password
       // for smtp authentification.

       smtp.setUser("mikodavogrigoryan@gmail.com");
       smtp.setPassword("161213banak");

       // Now we create a MimeMessage object. This will be the email.

       MimeMessage message;

       message.setSender(new EmailAddress("mikodavogrigoyan@gmail.com", "Armen"));
       message.addRecipient(new EmailAddress("svetamiraghyan@gmail.com", "ArmenGishyan"));
       message.setSubject("SmtpClient for Qt - Demo");

       // Now add some text to the email.
       // First we create a MimeText object.

       MimeText text;

       text.setText("Hi,\nThis is a simple email message.\n");

       // Now add it to the mail

       message.addPart(&text);

       // Now we can send the mail

       smtp.connectToHost();
       smtp.login();
       smtp.sendMail(message);
       smtp.quit();
    w.show();

    return a.exec();
}
