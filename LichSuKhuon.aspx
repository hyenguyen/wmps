<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LichSuKhuon.aspx.cs" Inherits="wMPS.LichSuKhuon" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Data.Linq" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v18.1, Version=18.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
.center {
  margin: auto;
  width: 60%;
  border: 3px solid #73AD21;
  padding: 5px;
  text-align: center;
}
.inline{
    display:inline-table;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p><dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="Lịch Sử Khuôn" ForeColor="#0099FF"></dx:ASPxLabel></p>
    </div>    
    <div>
        <dx:ASPxDateEdit ID="ASPxDateEdit1" runat="server" CssClass="inline"></dx:ASPxDateEdit>
        <dx:ASPxDateEdit ID="ASPxDateEdit2" runat="server" CssClass="inline"></dx:ASPxDateEdit>
    </div>
    <div>
        <dx:ASPxGridView ID="ASPxGridView1" runat="server" DataSourceID="LinqServerModeDataSource1" KeyFieldName="id" SettingsPager-PageSize="20" AutoGenerateColumns="True">
            <Columns>
                <dx:GridViewDataTextColumn FieldName="id" Caption="ID" Width="1%"/>
                <dx:GridViewDataTextColumn FieldName ="ngay" Caption="Ngày" PropertiesTextEdit-DisplayFormatString="dd/MM/yyyy" Width="1%"/>
                <dx:GridViewDataTextColumn FieldName ="msk" Caption="MSK" Width="1%"/>
                <dx:GridViewDataColumn FieldName ="noidung" CellStyle-CssClass="wrapASPxGrid" CellStyle-Wrap="True"/>
                <dx:GridViewDataTextColumn FieldName ="khokhuon" Caption="Kho Khuôn" Width="1%"/>
            </Columns>
        </dx:ASPxGridView>
    </div> 
    <dx:LinqServerModeDataSource ID="LinqServerModeDataSource1" runat="server" OnSelecting="LinqServerModeDataSource1_Selecting"/>
    </form>
</body>
</html>
