# Exchange utils   
# -identity, displayName, userPrincipalName, PrimarySmtpAddress

get-Mailbox -identity alan*
get-Mailbox -identity alan.santos@dannemann.com.br | select-object *
get-MailBox -Anr "alan"
