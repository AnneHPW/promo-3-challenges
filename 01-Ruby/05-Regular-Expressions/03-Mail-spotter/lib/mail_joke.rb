# Encoding: utf-8

def mail_joke(email)
  if email.match(/^(\w[-._+\w]*\w@\w[-._\w]*\w\.\w{2,3})$/) == nil
    raise ArgumentError# je traite le case de l'erreur
    else
    match_data = email.match(/(\S+)@(\S+)/)
    name_mail = match_data[1].to_s
    mail_com = match_data[2]
    name_mail.gsub!(/\./, ' ')
    if mail_com == "lewagon.org"
        "Well done #{name_mail}, you're skilled and capable"
    elsif mail_com == "gmail.com"
        "#{name_mail}, you're an average but modern person"
    elsif mail_com == "live.com"
        "#{name_mail}, aren't you born before 1973?"
    else
        "Sorry #{name_mail}, we don't know how to judge '#{mail_com}'"
    end
  end# TODO: Return a joke suited to the email provided
end


