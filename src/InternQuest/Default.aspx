<%@ Page Title="InternQuest" Language="C#" MasterPageFile="~/Site.Master" 
    AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="InternQuest._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<h2>InternQuest — AI Research Internship Application</h2>

<asp:ValidationSummary ID="ValSummary" runat="server" HeaderText="Please fix these errors:" ForeColor="Red" />

<table>
<tr>
<td>Full Name:</td>
<td>
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvName" runat="server" 
        ControlToValidate="txtName" ErrorMessage="Name is required" ForeColor="Red" />
</td>
</tr>

<tr>
<td>Email:</td>
<td>
    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
        ControlToValidate="txtEmail" ErrorMessage="Email is required" ForeColor="Red" />
    <asp:RegularExpressionValidator ID="regexEmail" runat="server" 
        ControlToValidate="txtEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
        ErrorMessage="Invalid email format" ForeColor="Red" />
</td>
</tr>

<tr>
<td>Confirm Email:</td>
<td>
    <asp:TextBox ID="txtConfirmEmail" runat="server"></asp:TextBox>
    <asp:CompareValidator ID="cmpEmail" runat="server" 
        ControlToValidate="txtConfirmEmail" ControlToCompare="txtEmail" 
        ErrorMessage="Emails do not match" ForeColor="Red" />
</td>
</tr>

<tr>
<td>CGPA:</td>
<td>
    <asp:TextBox ID="txtCgpa" runat="server"></asp:TextBox>
    <asp:RangeValidator ID="rngCgpa" runat="server" 
        ControlToValidate="txtCgpa" Type="Double" MinimumValue="0" MaximumValue="10" 
        ErrorMessage="CGPA must be between 0 and 10" ForeColor="Red" />
</td>
</tr>

<tr>
<td>Field of Interest:</td>
<td>
    <asp:DropDownList ID="ddlField" runat="server">
        <asp:ListItem Text="-- Select --" Value="" />
        <asp:ListItem Text="AI / ML" Value="AI" />
        <asp:ListItem Text="Web Development" Value="Web" />
        <asp:ListItem Text="Data Science" Value="DS" />
    </asp:DropDownList>
</td>
</tr>

<tr>
<td>Skills:</td>
<td>
    <asp:CheckBoxList ID="cblSkills" runat="server">
        <asp:ListItem Text="Python" Value="Python" />
        <asp:ListItem Text="Java" Value="Java" />
        <asp:ListItem Text="DSA" Value="DSA" />
        <asp:ListItem Text="Machine Learning" Value="ML" />
    </asp:CheckBoxList>
</td>
</tr>

<tr>
<td>Research Areas:</td>
<td>
    <asp:ListBox ID="lstResearch" runat="server" SelectionMode="Multiple">
        <asp:ListItem Text="NLP" Value="NLP" />
        <asp:ListItem Text="Computer Vision" Value="CV" />
        <asp:ListItem Text="Reinforcement Learning" Value="RL" />
        <asp:ListItem Text="Robotics" Value="Robotics" />
    </asp:ListBox>
</td>
</tr>

<tr>
<td>Resume (PDF):</td>
<td>
    <asp:FileUpload ID="fuResume" runat="server" />
    <asp:CustomValidator ID="cvResume" runat="server" 
        OnServerValidate="cvResume_ServerValidate" 
        ErrorMessage="Only PDF files are allowed" ForeColor="Red" />
</td>
</tr>

</table>

<br />
<asp:Button ID="btnSubmit" runat="server" Text="Submit Application" OnClick="btnSubmit_Click" />
<asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" CausesValidation="false" />

<br /><br />

<asp:Panel ID="pnlResult" runat="server" Visible="false">
    <asp:Label ID="lblResult" runat="server" Font-Bold="true"></asp:Label>
</asp:Panel>

</asp:Content>