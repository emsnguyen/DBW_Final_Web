<%@ Register Assembly="DevExpress.Web.ASPxPivotGrid.v19.1, Version=19.1.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxPivotGrid" TagPrefix="dx" %>

<%@ Page MasterPageFile="MasterPage1.master" %>
<asp:Content ContentPlaceHolderId="CPH1" runat="server">
    <form id="form1" runat="server">
        <div class="form-group">
            <dx:ASPxPivotGrid ID="ASPxPivotGrid1" runat="server" ClientIDMode="AutoID" OLAPConnectionString="provider=MSOLAP;data source=localhost;initial catalog=DBW_Final_SASS_Updated;cube name=Customer_Item_Cube">
                <Fields>
                    <dx:PivotGridField ID="fieldEnglishItemName" Area="RowArea" AreaIndex="0" Caption="English Item Name" FieldName="[Dim Item].[English Item Name].[English Item Name]" Name="fieldEnglishItemName">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldDimItemCount" Area="DataArea" AreaIndex="0" Caption="Dim Item Count" DisplayFolder="Dim Item" FieldName="[Measures].[Dim Item Count]" Name="fieldDimItemCount">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldDollarsSold" Area="DataArea" AreaIndex="1" Caption="Dollars Sold" DisplayFolder="Sales Fact Table" FieldName="[Measures].[Dollars Sold]" Name="fieldDollarsSold">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldUnitsSold" Area="DataArea" AreaIndex="2" Caption="Units Sold" DisplayFolder="Sales Fact Table" FieldName="[Measures].[Units Sold]" Name="fieldUnitsSold">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldCityName" Area="ColumnArea" AreaIndex="0" Caption="City Name" FieldName="[Dim Customer].[Customer_City_Type_Name_Hierarcy].[City Name]" GroupIndex="0" InnerGroupIndex="0" Name="fieldCityName">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldCustomerType" Area="ColumnArea" AreaIndex="1" Caption="Customer Type" FieldName="[Dim Customer].[Customer_City_Type_Name_Hierarcy].[Customer Type]" GroupIndex="0" InnerGroupIndex="1" Name="fieldCustomerType">
                    </dx:PivotGridField>
                    <dx:PivotGridField ID="fieldFullName" Area="ColumnArea" AreaIndex="2" Caption="Full Name" FieldName="[Dim Customer].[Customer_City_Type_Name_Hierarcy].[Full Name]" GroupIndex="0" InnerGroupIndex="2" Name="fieldFullName">
                    </dx:PivotGridField>
                </Fields>
                <Groups>
                    <dx:PivotGridWebGroup Caption="Customer_City_Type_Name_Hierarcy" Hierarchy="[Dim Customer].[Customer_City_Type_Name_Hierarcy]" />
                </Groups>
            </dx:ASPxPivotGrid>
        </div>
    </form>
 </asp:Content>
