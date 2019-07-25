<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v19.1, Version=19.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>

<%@ Page MasterPageFile="MasterPage1.master" %>
<asp:Content ContentPlaceHolderId="CPH1" runat="server">
    <form id="form1" runat="server">
        <div class="form-group">
            <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" ClientIDMode="AutoID" OLAPConnectionString="provider=MSOLAP;data source=localhost;initial catalog=DBW_Final_SASS_Updated;cube name=Date_Item_Cube">
                <Fields>
                    <dx:PivotGridField ID="fieldCalendarYear" Area="ColumnArea" AreaIndex="0" Caption="Calendar Year" FieldName="[Dim Date].[Date_Hierarchy].[Calendar Year]" GroupIndex="0" InnerGroupIndex="0" Name="fieldCalendarYear">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldCalenderQuarter" Area="ColumnArea" AreaIndex="1" Caption="Calender Quarter" FieldName="[Dim Date].[Date_Hierarchy].[Calender Quarter]" GroupIndex="0" InnerGroupIndex="1" Name="fieldCalenderQuarter">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldDateKey" Area="ColumnArea" AreaIndex="4" Caption="Date Key" FieldName="[Dim Date].[Date_Hierarchy].[Date Key]" GroupIndex="0" InnerGroupIndex="4" Name="fieldDateKey">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldEnglishMonthName" Area="ColumnArea" AreaIndex="2" Caption="English Month Name" FieldName="[Dim Date].[Date_Hierarchy].[English Month Name]" GroupIndex="0" InnerGroupIndex="2" Name="fieldEnglishMonthName">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldWeekNumberOfYear" Area="ColumnArea" AreaIndex="3" Caption="Week Number Of Year" FieldName="[Dim Date].[Date_Hierarchy].[Week Number Of Year]" GroupIndex="0" InnerGroupIndex="3" Name="fieldWeekNumberOfYear">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldEnglishItemName" Area="RowArea" AreaIndex="0" Caption="English Item Name" FieldName="[Dim Item].[English Item Name].[English Item Name]" Name="fieldEnglishItemName">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldDimItemCount" Area="DataArea" AreaIndex="0" Caption="Dim Item Count" DisplayFolder="Dim Item" FieldName="[Measures].[Dim Item Count]" Name="fieldDimItemCount">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldDollarsSold" Area="DataArea" AreaIndex="1" Caption="Dollars Sold" DisplayFolder="Sales Fact Table" FieldName="[Measures].[Dollars Sold]" Name="fieldDollarsSold">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldUnitsSold" Area="DataArea" AreaIndex="2" Caption="Units Sold" DisplayFolder="Sales Fact Table" FieldName="[Measures].[Units Sold]" Name="fieldUnitsSold">
                    </dx:PivotGridField>
                </Fields>
                <Groups>
                    <dx:PivotGridWebGroup Caption="Date_Hierarchy" Hierarchy="[Dim Date].[Date_Hierarchy]" />
                </Groups>
            </dx:ASPxPivotGrid>
        </div>
    </form>
 </asp:Content>
