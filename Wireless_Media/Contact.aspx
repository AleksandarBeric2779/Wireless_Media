<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Wireless_Media.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <div class="container">
      <div class="row">
         <div class="col-lg-12">
            <div class="table-responsive">
               <table class="table">
                  <thead>
                     <tr>       
                        <th><asp:Button ID="Button1" runat="server" Text="Prikaz" OnClick="btnBaza_Click" /></th>
                     </tr>
                  </thead>
               </table>
            </div>
         </div>
      </div>
   </div>     

    <div>  
                <asp:DataGrid ID="Grid" runat="server" PageSize="5" AllowPaging="True" DataKeyField="id" AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None" OnCancelCommand="Grid_CancelCommand" OnEditCommand="Grid_EditCommand" OnUpdateCommand="Grid_UpdateCommand">  
                    <Columns>  
                        <asp:BoundColumn HeaderText="id" DataField="id" ItemStyle-Width="100px"> </asp:BoundColumn>  
                        <asp:BoundColumn HeaderText="naziv" DataField="naziv" ItemStyle-Width="100px"> </asp:BoundColumn>  
                        <asp:BoundColumn HeaderText="opis" DataField="opis" ItemStyle-Width="100px"> </asp:BoundColumn>  
                        <asp:BoundColumn DataField="kategorija" HeaderText="kategorija" ItemStyle-Width="100px"> </asp:BoundColumn>  
                        <asp:BoundColumn DataField="proizvodjac" HeaderText="proizvodjac" ItemStyle-Width="100px"> </asp:BoundColumn>  
                        <asp:BoundColumn DataField="dobavljac" HeaderText="dobavljac" ItemStyle-Width="100px"> </asp:BoundColumn>  
                        <asp:BoundColumn HeaderText="cena" DataField="cena" ItemStyle-Width="100px"> </asp:BoundColumn> 
                        <asp:EditCommandColumn EditText="Edit" CancelText="Cancel" UpdateText="Update" HeaderText="Edit"> </asp:EditCommandColumn>
                    </Columns>  
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />  
                    <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />  
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" Mode="NumericPages" />  
                    <AlternatingItemStyle BackColor="White" />  
                    <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />  
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" /> </asp:DataGrid> <br /> <br />        
</div>

    <div class="container">
    <div class="row">
        <div class="col-lg-12">
            <div class="table-responsive">
                <table class="table">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>naziv</th>
                        <th>opis</th>
                        <th>kategorija</th>
                        <th>proizvođač</th>
                        <th>dobavljač</th>
                        <th>cena</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>  
                        <td><asp:TextBox ID="TextBox1" runat="server" style="width:120px"></asp:TextBox></td>  
                        <td><asp:TextBox ID="TextBox2" runat="server" style="width:120px"></asp:TextBox></td>  
                        <td><asp:TextBox ID="TextBox3" runat="server" style="width:120px"></asp:TextBox></td>  
                        <td><asp:TextBox ID="TextBox4" runat="server" style="width:120px"></asp:TextBox></td>  
                        <td><asp:TextBox ID="TextBox5" runat="server"  style="width:120px"></asp:TextBox></td>  
                        <td><asp:TextBox ID="TextBox6" runat="server"  style="width:120px"></asp:TextBox></td>  
                        <td><asp:TextBox ID="TextBox7" runat="server"  style="width:120px"></asp:TextBox></td> 
                    </tr>  
                        </tbody>
                </table>  
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />  
                <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />  
                <asp:Button ID="btnOk" runat="server" Text="OK" OnClick="btnOk_Click" /> </div>        
            </div>
        </div>
    </div>
</asp:Content>