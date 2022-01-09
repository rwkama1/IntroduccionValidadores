<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Página sin título</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        clientes conectados:
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" /><br />
        <br />
        Departamento:
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
            ErrorMessage="RequiredFieldValidator">Escriba un departamento aca</asp:RequiredFieldValidator><br />
        <br />
        Descuento:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="El descuento tiene que ser un numero entre 1 y 100" MaximumValue="100"
            MinimumValue="1" Type="Integer"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
            ErrorMessage="Debe escribir un numero para el descuento">Escriba un numero aca</asp:RequiredFieldValidator><br />
        <br />
        Edad: &nbsp; &nbsp; &nbsp;&nbsp;
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox3"
            ErrorMessage="CompareValidator" Operator="GreaterThanEqual" Type="Integer" ValueToCompare="18">Debe Ser un numero mayor a 18</asp:CompareValidator><br />
        Sueldo:<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="TextBox5"
            ControlToValidate="TextBox4" ErrorMessage="El sueldo debe ser mayor al SLD" Operator="GreaterThanEqual"
            Type="Double">Debe ser mayor al SMN</asp:CompareValidator><br />
        Salario Minimo DEFENSOR:
        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox><br />
        <br />
        CI:
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6"
            ErrorMessage="La ci debe tener el format 9.999.999-9" ValidationExpression="\d.\d{3}.\d{3}-\d"></asp:RegularExpressionValidator><br />
        <br />
        matricula:
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox7"
            ErrorMessage="La matricula debe tener el formato AAA-9999" ValidationExpression="[a-zA-Z]{3}-\d{4}"></asp:RegularExpressionValidator><br />
        <br />
        tel:
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox8"
            ErrorMessage="Los telefonos son de 8, 4 o  3 digitos" ValidationExpression="\d{8}|\d{4}|\d{3}"></asp:RegularExpressionValidator><br />
        <br />
        <br />
        <br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    
    </div>
    </form>
</body>
</html>
