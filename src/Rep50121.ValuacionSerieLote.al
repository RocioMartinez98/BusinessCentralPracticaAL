report 50121 "Valuación por Serie con Lote"
{
    DefaultRenderingLayout = LayoutExcel;
    ApplicationArea = All;
    Caption = 'Valuación por Serie y Lote Real';
    UsageCategory = ReportsAndAnalysis;
    DataAccessIntent = ReadOnly;

    dataset
    {
        dataitem(Item; Item)
        {
            DataItemTableView = where(Type = const(Inventory));
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Inventory Posting Group", "Costing Method", "Location Filter", "Variant Filter";

            column(ItemNo; "No.") { IncludeCaption = true; }
            column(ItemDescription; Description) { IncludeCaption = true; }
            column(BaseUnitOfMeasure; "Base Unit of Measure") { IncludeCaption = true; }
            column(CostingMethod; "Costing Method") { IncludeCaption = true; }
            column(ItemtrakingCode; "Item Tracking Code") { IncludeCaption = true; }

            column(ILE_SerialNo; "Serial No. Filter") { IncludeCaption = true; }
            column(ILE_LotNo; "Lot No. Filter") { IncludeCaption = true; }

            dataitem("Item Ledger Entry"; "Item Ledger Entry")
            {
                DataItemLink = "Item No." = field("No."), "Location Code" = field("Location Filter"), "Variant Code" = field("Variant Filter");
                DataItemTableView = sorting("Item No.", "Variant Code", "Location Code", "Posting Date");
                RequestFilterFields = "Posting Date", "Location Code";

                column(ILE_Quantity; Quantity) { IncludeCaption = true; }
                column(ILE_LocationCode; "Location Code") { IncludeCaption = true; }
                column(ILE_PostingDate; "Posting Date") { IncludeCaption = true; }
                column(ILE_CostAmountActual; "Cost Amount (Actual)") { IncludeCaption = true; }

                // Campos extra para serie y lote


                /*trigger OnAfterGetRecord()
                var
                    TrackingSpec: Record "Tracking Specification";
                begin
                    Clear(SerialNoTxt);
                    Clear(LotNoTxt);

                    TrackingSpec.Reset();
                    TrackingSpec.SetRange("Source Type", DATABASE::"Item Ledger Entry");
                    TrackingSpec.SetRange("Source ID", Format("Entry No."));

                    if TrackingSpec.FindFirst() then begin
                        SerialNoTxt := TrackingSpec."Serial No.";
                        LotNoTxt := TrackingSpec."Lot No.";
                    end;
                end;*/

            }
        }
    }

    requestpage
    {
        layout
        {
            area(content)
            {
                group(Options)
                {
                    field("Fecha Desde"; FechaDesde)
                    {
                        ApplicationArea = All;
                        Caption = 'Fecha Desde';
                    }
                    field("Fecha Hasta"; FechaHasta)
                    {
                        ApplicationArea = All;
                        Caption = 'Fecha Hasta';
                    }
                    field("Location Filter"; Item."Location Filter")
                    {
                        ApplicationArea = All;
                        Caption = 'Depósito/Almacén';
                    }
                }
            }
        }
    }

    rendering
    {
        layout(LayoutExcel)
        {
            Type = Excel;
            LayoutFile = 'ValuacionSerieConLote.xlsx';
        }
    }

    var
        SerialNoTxt: Text[50];
        LotNoTxt: Text[50];
        FechaDesde: Date;
        FechaHasta: Date;
}
