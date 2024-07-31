<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="books.aspx.cs" Inherits="Books.books" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style7
        {
            height: 29px;
            width: 1148px;
        }
        .style8
        {
            width: 1148px;
        }
        .style9
        {
            height: 26px;
            width: 1148px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp;
    <table class="style2" align="center">
    
   
    <tr>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td style="font-weight: bold; font-size: 35px" class="style8">
            Issue a book</td>
    </tr>
    <tr>
        <td class="style8">
            <br />
            <asp:Label ID="Label2" runat="server" ForeColor="Red" 
                Text="To delete a book enter book issue number and hit delete button"></asp:Label>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="style8">
            Book Issue No</td>
    </tr>
    <tr>
        <td class="style8">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            Rollno</td>
    </tr>
    <tr>
        <td class="style8">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            Book No</td>
    </tr>
    <tr>
        <td class="style7">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            Issue Data</td>
    </tr>
    <tr>
        <td class="style8">
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            Return Date</td>
    </tr>
    <tr>
        <td class="style8">
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Date"></asp:TextBox>
&nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            <asp:Button ID="Button1" runat="server" Text="Insert" onclick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Delete" />
            <br />
        </td>
    </tr>
     <tr>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" 
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                CellSpacing="2">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        </td>
    </tr>
     <tr>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
        </td>
    </tr>
     <tr>
        <td style="font-weight: bold; font-size: 35px" class="style8">
            Select field to update</td>
    </tr>
    <tr>
        <td class="style9">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>Book_issue_no</asp:ListItem>
                <asp:ListItem>Roll_no</asp:ListItem>
                <asp:ListItem>Book_no</asp:ListItem>
                <asp:ListItem>Issue_date</asp:ListItem>
                <asp:ListItem>Return_date</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
     <tr>
        <td class="style8">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style9">
            Enter previous value</td>
    </tr>
     <tr>
        <td class="style8">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
         </td>
    </tr>
    <tr>
        <td class="style9">
        </td>
    </tr>
    <tr>
        <td class="style9">
            Enter new value
        </td>
    </tr>
    <tr>
        <td class="style9">
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style9">
        </td>
    </tr>
    <tr>
        <td class="style9">
            <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="Update" />
        </td>
    </tr>
    <tr>
        <td class="style9">
        </td>
    </tr>
    <tr>
        <td class="style9">
        </td>
    </tr>
    <tr>
        <td class="style9" style="font-weight: bold; font-size: 35px">
            Students who have to return books today</td>
    </tr>
    <tr>
        <td class="style9">
            <asp:Button ID="Button4" runat="server" Text="Show" onclick="Button4_Click" />
        </td>
    </tr>
    <tr>
        <td class="style9">
            <asp:GridView ID="GridView2" runat="server" BackColor="#DEBA84" 
                BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                CellSpacing="2">
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FFF1D4" />
                <SortedAscendingHeaderStyle BackColor="#B95C30" />
                <SortedDescendingCellStyle BackColor="#F1E5CE" />
                <SortedDescendingHeaderStyle BackColor="#93451F" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="style9">
        </td>
    </tr>
</table>
</asp:Content>
