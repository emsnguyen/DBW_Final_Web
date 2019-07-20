<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_Location_Cube.aspx.cs" Inherits="DBW_301_DevExpress.Customer_Location_Cube" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v19.1, Version=19.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" ClientIDMode="AutoID" OLAPConnectionString="provider=MSOLAP;data source=localhost;initial catalog=DBW_Final_SASS_Updated;cube name=Customer_Location_Cube">
                <Fields>
                    <dx:PivotGridField ID="fieldCustomerType" Area="RowArea" AreaIndex="0" Caption="Customer Type" FieldName="[Dim Customer].[Customer_Type_Name_Hierarcy].[Customer Type]" GroupIndex="0" InnerGroupIndex="0" Name="fieldCustomerType">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldFullName" Area="RowArea" AreaIndex="1" Caption="Full Name" FieldName="[Dim Customer].[Customer_Type_Name_Hierarcy].[Full Name]" GroupIndex="0" InnerGroupIndex="1" Name="fieldFullName">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldCityName" Area="ColumnArea" AreaIndex="1" Caption="City Name" FieldName="[Dim Store].[Location_Hierarchy].[City Name]" GroupIndex="1" InnerGroupIndex="1" Name="fieldCityName">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldStateName" Area="ColumnArea" AreaIndex="0" Caption="State Name" FieldName="[Dim Store].[Location_Hierarchy].[State Name]" GroupIndex="1" InnerGroupIndex="0" Name="fieldStateName">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldDollarsSold" Area="DataArea" AreaIndex="0" Caption="Dollars Sold" DisplayFolder="Sales Fact Table" FieldName="[Measures].[Dollars Sold]" Name="fieldDollarsSold">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldUnitsSold" Area="DataArea" AreaIndex="1" Caption="Units Sold" DisplayFolder="Sales Fact Table" FieldName="[Measures].[Units Sold]" Name="fieldUnitsSold">
                    </dx:PivotGridField>
                </Fields>
                <Groups>
                    <dx:PivotGridWebGroup Caption="Customer_Type_Name_Hierarcy" Hierarchy="[Dim Customer].[Customer_Type_Name_Hierarcy]" />
                    <dx:PivotGridWebGroup Caption="Location_Hierarchy" Hierarchy="[Dim Store].[Location_Hierarchy]" />
                </Groups>
            </dx:ASPxPivotGrid>
        </div>
    </form>
</body>
</html>
