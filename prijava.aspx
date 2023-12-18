<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prijava.aspx.cs" Inherits="domaci.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Prijava</h1>
            Prezime i ime:
            <asp:TextBox ID="txtIme"
                ValidationGroup="Group1"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtImeValidator"
                ErrorMessage="Ime je obavezno!"
                ControlToValidate="txtIme"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <br />
                     Email: 
            <asp:TextBox ID="txtEmail"
                ValidationGroup="Group1"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtEmailValidator"
                ErrorMessage="Email je obavezan!"
                ControlToValidate="txtEmail"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="txtEmailExpression"
                ErrorMessage="Email nije u ispravnom formatu"
                ControlToValidate="txtEmail"               
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RegularExpressionValidator>
            <br />
            Potvrdi email:
                <asp:TextBox ID="txtConfirm"
                ValidationGroup="Group1"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtConfirmValidator"
                ErrorMessage="Obavezno je ponovno ukucati email!"
                ControlToValidate="txtConfirm"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <asp:CompareValidator
                ID="PorediLozinkeValidator"
                ErrorMessage="Mailovi se ne poklapaju"
                ControlToCompare="txtConfirm"
                ControlToValidate="txtEmail"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server" ></asp:CompareValidator>
            <br />
            Godina rodjenja:
                       <asp:TextBox ID="txtAge"
                ValidationGroup="Group1"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtAgeValidator"
                ErrorMessage="Obavezno je uneti broj godina!"
                ControlToValidate="txtAge"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="GodineValidator"
                ErrorMessage="Nedozvoljen broj godina!"
                ControlToValidate="txtAge"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                MinimumValue="2003"
                MaximumValue="2010"
                Type="Integer"
                runat="server"></asp:RangeValidator> 
<br />
            <asp:RadioButtonList ID="radiobtn" runat="server"><asp:ListItem >I</asp:ListItem>
                <asp:ListItem >II</asp:ListItem>
                <asp:ListItem>III</asp:ListItem>
                <asp:ListItem >IV</asp:ListItem>
            </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="radiobtnvalidator"
                ErrorMessage="Razred je obavezan!"
                ControlToValidate="radiobtn"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <br />
                        <asp:Button ID="btnSubmit"
                ValidationGroup="Group1"
                CausesValidation="true"
                OnClick="btnSubmit_Click"
                Text="Prijavi se"
                PostBackUrl="~/izvestaj.aspx"
                runat="server" />
            <br />
            <asp:Label ID="lblPoruka"
                runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
