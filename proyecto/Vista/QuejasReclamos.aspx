<%@ Page Title="" Language="C#" MasterPageFile="~/Vista/MasterPage.master" AutoEventWireup="true" CodeFile="~/Controlador/QuejasReclamos.aspx.cs" Inherits="Vista_QuejasReclamos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h2 class="letter_spacing">Reclamos y sugerencias </h2>
							
							<div id="contact_form">	
								&nbsp;<form name="form1" id="ff" method="post" action="Contacts.php">
									 <label>
									 Nombre*:
									 <input type="text" placeholder="Please enter your name" name="name" id="name" required>
									 </label>
								 
									 <label>
									 Email*:
									 <input type="email" placeholder="youremail@gmail.com" name="email" id="email" required>
									 </label>
										
									 <label>
									 Mensaje*:
									 <textarea name="message" id="message">Please enter your message</textarea>
									 </label>
								 
									 <input class="sendButton" type="submit" name="Submit" value="Enviar">
									 
								</form>
							</div>
</asp:Content>

