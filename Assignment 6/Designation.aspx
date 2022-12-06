<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Designation.aspx.cs" Inherits="Assignment_6.Designation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1
        {
            height:283px;
            width:446px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <table align="center" class="auto-style1" border="2">
                <tr>
                    <td colspan="2" style="text-align:center;color:red;"><b><h1>DESIGNATION</h1></b></td>
                </tr>
                <tr>
                    <td><b>Designation Name</b></td>
                    <td>
                      <asp:TextBox ID="txtdesignation" runat="server" required=""></asp:TextBox>
                        <br />
                          <br />
                    </td>
                </tr>
                 <tr>
                    <td><b>Department Name</b></td>
                    <td>
                       <asp:DropDownList ID="ddldepartment" runat="server" Height="16px" Width="166px" ></asp:DropDownList><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" InitialValue="0" ForeColor="Red" ControlToValidate="ddldepartment"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">
                          <br />
                        <asp:Button ID="btn_Add" runat="server" Text="Add" OnClick="btn_Add_Click" />
                          <br />
                          <br />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align:center">

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Design_id" Width="511px" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                            <AlternatingRowStyle BackColor="#CCCCCC" />
                            <Columns>
                                <asp:BoundField DataField="Design_name" HeaderText="Designation Name" />
                               
                            <asp:TemplateField HeaderText="Department Name">
                                <EditItemTemplate>
                                     <asp:DropDownList ID="dropdownDeptName" runat="server" AutoPostBack="true" EnableViewState="true" ></asp:DropDownList>
                                </EditItemTemplate>
                                 <ItemTemplate>
                                        <asp:Label ID="label1" runat="server" Text='<%#Eval("Dept_name") %>'></asp:Label>
                                 </ItemTemplate>
                            </asp:TemplateField>
                                <asp:CommandField HeaderText="Edit" ShowEditButton="True" />
                                <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                                <asp:HyperLinkField DataNavigateUrlFields="Design_id" DataNavigateUrlFormatString="Test.aspx?id={0}" HeaderText="View More" Text="Go" />
                            </Columns>
                            <FooterStyle BackColor="#CCCCCC" />
                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#808080" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#383838" />
                        </asp:GridView>
                        <tr>
                        <th colspan="2">
                            <br />
                            <b ><a href="../Department.aspx" style="color:cornflowerblue">Add Department</a></b></th>
                       </tr>

                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>

