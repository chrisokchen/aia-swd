Function Send_Email(from_Email, to_Email, bcc_Email, Re_Sbj, Re_Body)

'response.write "from_Email:" & from_Email & "<BR/>"
'response.write "to_Email:" & to_Email & "<BR/>"
'response.write "bcc_Email:" & bcc_Email & "<BR/>"
'response.write "Re_Sbj:" & Re_Sbj & "<BR/>"
'response.write "Re_Body:" & Re_Body & "<BR/>"
'response.end


	smtpAuthenticate = 1
	if smtpUser="" and smtpPassword = "" then _
		smtpAuthenticate = 0
	sch = "http://schemas.microsoft.com/cdo/configuration/"
	' Define sendUsing: 2 = cdoSendUsingPort (send using network)
	sendUsing = 2
	Set cdoConfig = Server.CreateObject("CDO.Configuration") 
	With cdoConfig.Fields 	
			.Item(sch & "sendusing") = sendUsing   
			.Item(sch & "smtpserver") = smtpServer
			.Item(sch & "smtpusessl") = smtpusessl
			.Item(sch & "smtpserverport") = smtpPort
			.Item(sch & "smtpauthenticate") = smtpAuthenticate 'cdoBasic 基本驗證
			.Item(sch & "sendusername") = smtpUser
			.Item(sch & "sendpassword") = smtpPassword
	        .update 
	End With 
	Set cdoMessage = Server.CreateObject("CDO.Message") 
	'Re_Body= "<link rel=""stylesheet"" type=""text/css"" href=""http://nttlcsys.scu.edu.tw/site/testgipnet/public/epaper/ePaper02.css""></link>"&Re_Body

	With cdoMessage 
        Set .Configuration = cdoConfig 
        .From = from_Email
        .To = to_Email
		.BCC = bcc_Email
        .Subject = Re_Sbj
		.Bodypart.Charset = "utf-8"
        .HtmlBody = Re_Body
        .TextBody = html		
        .Send
    End With 
End Function




