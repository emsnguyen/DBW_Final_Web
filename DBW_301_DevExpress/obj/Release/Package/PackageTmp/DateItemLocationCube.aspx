﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DateItemLocationCube.aspx.cs" Inherits="DBW_301_DevExpress.DateItemLocationCube" %>

<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v19.1, Version=19.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" ClientIDMode="AutoID" OLAPConnectionString="provider=MSOLAP;data source=localhost;initial catalog=DBW_Final_SASS_Updated;cube name=Date_Item_Location_Cube">
                <Fields>
                    <dx:PivotGridField ID="fieldCalendarYear" Area="ColumnArea" AreaIndex="0" Caption="Calendar Year" FieldName="[Dim Date].[Date_Hierarchy].[Calendar Year]" GroupIndex="0" InnerGroupIndex="0" Name="fieldCalendarYear">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldCalenderQuarter" Area="ColumnArea" AreaIndex="1" Caption="Calender Quarter" FieldName="[Dim Date].[Date_Hierarchy].[Calender Quarter]" GroupIndex="0" InnerGroupIndex="1" Name="fieldCalenderQuarter" RunningTotal="True">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldDateKey" Area="ColumnArea" AreaIndex="4" Caption="Date Key" FieldName="[Dim Date].[Date_Hierarchy].[Date Key]" GroupIndex="0" InnerGroupIndex="4" Name="fieldDateKey">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldEnglishMonthName" Area="ColumnArea" AreaIndex="2" Caption="English Month Name" FieldName="[Dim Date].[Date_Hierarchy].[English Month Name]" GroupIndex="0" InnerGroupIndex="2" Name="fieldEnglishMonthName">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldWeekNumberOfYear" Area="ColumnArea" AreaIndex="3" Caption="Week Number Of Year" FieldName="[Dim Date].[Date_Hierarchy].[Week Number Of Year]" GroupIndex="0" InnerGroupIndex="3" Name="fieldWeekNumberOfYear">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldEnglishItemName" Area="RowArea" AreaIndex="2" Caption="English Item Name" FieldName="[Dim Item].[English Item Name].[English Item Name]" GroupIndex="1" InnerGroupIndex="2" Name="fieldEnglishItemName">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldCityName" Area="RowArea" AreaIndex="1" Caption="City Name" FieldName="[Dim Store].[Location_Hierarchy].[City Name]" GroupIndex="1" InnerGroupIndex="1" Name="fieldCityName">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldStateName" Area="RowArea" AreaIndex="0" Caption="State Name" FieldName="[Dim Store].[Location_Hierarchy].[State Name]" GroupIndex="1" InnerGroupIndex="0" Name="fieldStateName">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldDollarsSold" Area="DataArea" AreaIndex="0" Caption="Dollars Sold" DisplayFolder="Sales Fact Table" FieldName="[Measures].[Dollars Sold]" Name="fieldDollarsSold">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldUnitsSold" Area="DataArea" AreaIndex="1" Caption="Units Sold" DisplayFolder="Sales Fact Table" FieldName="[Measures].[Units Sold]" Name="fieldUnitsSold">
                    </dx:PivotGridField>
                </Fields>
                <Groups>
                    <dx:PivotGridWebGroup Caption="Date_Hierarchy" Hierarchy="[Dim Date].[Date_Hierarchy]" />
                    <dx:PivotGridWebGroup Caption="Location_Hierarchy" Hierarchy="[Dim Store].[Location_Hierarchy]" />
                </Groups>
            </dx:ASPxPivotGrid>
        </div>
    </form>
</body>
</html>
