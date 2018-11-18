<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Wireless_Media._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   <div class="container">
      <div class="row">
         <div class="col-lg-12">
            <div class="table-responsive">
               <table class="table">
                  <thead>
                     <tr>
                        <th><input type="radio" name="DataType" value="JSON" id="test" checked="checked" />JSON</th>
                        <th><input type="radio" name="DataType" value="BAZA" />BAZA</th>
                        <th><asp:Button ID="btn" runat="server" Text="Prikazi" OnClick="btnPrikazi_Click" /></th>
                     </tr>
                  </thead>
               </table>
            </div>
         </div>
      </div>
   </div>   

   <div>  
      <asp:DataGrid ID="Grid" runat="server" PageSize="5" AllowPaging="True" DataKeyField="id" AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" GridLines="None">  
         <Columns>  
            <asp:BoundColumn HeaderText="id" DataField="id" ItemStyle-Width="100px"> </asp:BoundColumn>  
            <asp:BoundColumn HeaderText="naziv" DataField="naziv" ItemStyle-Width="100px"> </asp:BoundColumn>  
            <asp:BoundColumn HeaderText="opis" DataField="opis" ItemStyle-Width="100px"> </asp:BoundColumn>  
            <asp:BoundColumn DataField="kategorija" HeaderText="kategorija" ItemStyle-Width="100px"> </asp:BoundColumn>  
            <asp:BoundColumn DataField="proizvodjac" HeaderText="proizvodjac" ItemStyle-Width="100px"> </asp:BoundColumn>  
            <asp:BoundColumn DataField="dobavljac" HeaderText="dobavljac" ItemStyle-Width="100px"> </asp:BoundColumn>  
            <asp:BoundColumn HeaderText="cena" DataField="cena" ItemStyle-Width="100px"> </asp:BoundColumn>  
         </Columns>  
         <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />  
         <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />  
         <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" Mode="NumericPages" />  
         <AlternatingItemStyle BackColor="White" />  
         <ItemStyle BackColor="#FFFBD6" ForeColor="#333333" />  
         <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" /> 
      </asp:DataGrid> <br /><br />        
   </div>
</asp:Content>