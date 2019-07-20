<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LocationItemCube.aspx.cs" Inherits="DBW_301_DevExpress.LocationItemCube" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v19.1, Version=19.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" ClientIDMode="AutoID" Height="100%" OLAPConnectionString="provider=MSOLAP;data source=localhost;initial catalog=DBW_Final_SASS_Updated;cube name=Item_Location_Cube" Width="100%">
                <Fields>
                    <dx:PivotGridField ID="fieldCityName" Area="RowArea" AreaIndex="1" Caption="City Name" FieldName="[Dim Store].[Location_Hierarchy].[City Name]" Name="fieldCityName" GroupIndex="0" InnerGroupIndex="1">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldStateName" Area="RowArea" AreaIndex="0" Caption="State Name" FieldName="[Dim Store].[Location_Hierarchy].[State Name]" GroupIndex="0" InnerGroupIndex="0" Name="fieldStateName">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldDollarsSold" Area="DataArea" AreaIndex="0" Caption="Dollars Sold" DisplayFolder="Sales Fact Table" FieldName="[Measures].[Dollars Sold]" Name="fieldDollarsSold">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldUnitsSold" Area="DataArea" AreaIndex="1" Caption="Units Sold" DisplayFolder="Sales Fact Table" FieldName="[Measures].[Units Sold]" Name="fieldUnitsSold">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldEnglishItemName" Area="ColumnArea" AreaIndex="0" Caption="English Item Name" FieldName="[Dim Item].[English Item Name].[English Item Name]" Name="fieldEnglishItemName">
                    </dx:PivotGridField>
                </Fields>
                <Groups>
                    <dx:PivotGridWebGroup Caption="Location_Hierarchy" Hierarchy="[Dim Store].[Location_Hierarchy]" />
                </Groups>
            </dx:ASPxPivotGrid>
        </div>
    </form>
</body>
</html>
