codeunit 50101 SalesPostSubscriber
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostSalesDoc', '', false, false)]
    local procedure OnBeforePostSalesDoc(var SalesHeader: Record "Sales Header"; PreviewMode: Boolean)
    var
        registroFactura: Record RegistroFacturaTable;
    begin
        Message('Registrando :D');
        registroFactura.Init();
        registroFactura.NoFactura := SalesHeader."No.";
        registroFactura.Cliente := SalesHeader."Sell-to Customer Name";
        registroFactura.Fecha := SalesHeader."Posting Date";
        registroFactura.Importe := SalesHeader."Amount";
        registroFactura.Insert();
    end;
}
