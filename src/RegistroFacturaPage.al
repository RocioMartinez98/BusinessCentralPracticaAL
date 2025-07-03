page 50120 RegistroFacturaPage
{
    PageType = List;
    SourceTable = RegistroFacturaTable;
    ApplicationArea = All;
    Caption = 'Facturas Registradas';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(NoFactura; Rec.NoFactura) { }
                field(Cliente; Rec.Cliente) { }
                field(Fecha; Rec.Fecha) { }
                field(Importe; Rec.Importe) { }
            }
        }
    }
}
