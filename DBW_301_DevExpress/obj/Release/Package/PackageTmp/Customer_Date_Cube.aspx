<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Customer_Date_Cube.aspx.cs" Inherits="DBW_301_DevExpress.Customer_Date_Cube" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v19.1, Version=19.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" ClientIDMode="AutoID" OLAPConnectionString="provider=MSOLAP;data source=localhost;initial catalog=DBW_Final_SASS_Updated;cube name=Customer_Date_Cube">
                <Fields>
                    <dx:PivotGridField ID="fieldCalendarYear" Area="RowArea" AreaIndex="0" Caption="Calendar Year" FieldName="[Dim Date].[Date_Hierarchy].[Calendar Year]" GroupIndex="1" InnerGroupIndex="0" Name="fieldCalendarYear">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldCalenderQuarter" Area="RowArea" AreaIndex="1" Caption="Calender Quarter" FieldName="[Dim Date].[Date_Hierarchy].[Calender Quarter]" GroupIndex="1" InnerGroupIndex="1" Name="fieldCalenderQuarter">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldDateKey" Area="RowArea" AreaIndex="4" Caption="Date Key" FieldName="[Dim Date].[Date_Hierarchy].[Date Key]" GroupIndex="1" InnerGroupIndex="4" Name="fieldDateKey">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldEnglishMonthName" Area="RowArea" AreaIndex="2" Caption="English Month Name" FieldName="[Dim Date].[Date_Hierarchy].[English Month Name]" GroupIndex="1" InnerGroupIndex="2" Name="fieldEnglishMonthName">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldWeekNumberOfYear" Area="RowArea" AreaIndex="3" Caption="Week Number Of Year" FieldName="[Dim Date].[Date_Hierarchy].[Week Number Of Year]" GroupIndex="1" InnerGroupIndex="3" Name="fieldWeekNumberOfYear">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldDollarsSold" Area="DataArea" AreaIndex="0" Caption="Dollars Sold" DisplayFolder="Sales Fact Table" FieldName="[Measures].[Dollars Sold]" Name="fieldDollarsSold">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldUnitsSold" Area="DataArea" AreaIndex="1" Caption="Units Sold" DisplayFolder="Sales Fact Table" FieldName="[Measures].[Units Sold]" Name="fieldUnitsSold">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldCustomerType" Area="ColumnArea" AreaIndex="0" Caption="Customer Type" FieldName="[Dim Customer].[Customer_Type_Name_Hierarcy].[Customer Type]" GroupIndex="0" InnerGroupIndex="0" Name="fieldCustomerType">
                    </dx:PivotGridField>
                </Fields>
                <Groups>
                    <dx:PivotGridWebGroup Caption="Customer_Type_Name_Hierarcy" Hierarchy="[Dim Customer].[Customer_Type_Name_Hierarcy]" />
                    <dx:PivotGridWebGroup Caption="Date_Hierarchy" Hierarchy="[Dim Date].[Date_Hierarchy]" />
                </Groups>
            </dx:ASPxPivotGrid>
        </div>
    </form>
</body>
</html>
