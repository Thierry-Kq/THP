class Mailer
  def send_email(email)
    mail_subject = "Welcome to THP!!" 
    gmail = Gmail.connect!("team.montpellier.thp@gmail.com",Rails.application.credentials.GMAIL_PASSWORD)

    gmail.deliver do
      to email
      subject mail_subject
      text_part do
        body "Toute l'équipe de The Hacking Project est heureuse de vous souhaiter la bienvenue! \n
        Nous vous confirmons votre inscription à notre Newsletter que vous recevrez très prochainement.\n\n
        N'hesitez pas à faire un tour sur notre page d'accueil 'https://www.thehackingproject.org' pour de plus amples informations sur notre coding bootcamp et notre prochaine session à laquelle vous pouvez d'ores et déjà vous inscrire.\n
        C'est une opportunité sans précédent, ne la manquez surtout pas !!!\n\n
        Au plaisir de coder ensemble très prochainement.\n
        The THP Team"
      end
      html_part do
      content_type 'text/html; charset=UTF-8'
      body "<p>Toute l'équipe de <strong>The Hacking Project</strong> est heureuse de vous souhaiter la bienvenue!</p>
        <p>Nous vous confirmons votre inscription à notre Newsletter que vous recevrez très prochainement.</p><br>
        <p>N'hesitez pas à faire un tour sur notre page d'accueil 'https://www.thehackingproject.org' pour de plus amples informations sur notre coding bootcamp et notre prochaine session à laquelle vous pouvez d'ores et déjà vous inscrire.</p>
        <p>C'est une opportunité sans précédent, ne la manquez surtout pas !!!</p><br>
        <p>Au plaisir de coder ensemble très prochainement.</p>
        <p>The THP Team</p>"
      end
    end
  end
end

