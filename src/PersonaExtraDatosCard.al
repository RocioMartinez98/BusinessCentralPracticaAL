page 50112 PersonaExtraDatosCard
{
    PageType = Card;
    SourceTable = PersonaTable;
    ApplicationArea = All;
    Caption = 'Datos Extra de Persona';

    layout
    {
        area(content)
        {
            group(RedesSociales)
            {
                Caption = 'Redes Sociales';
                field(Linkedin; Rec.Linkedin) { }
                field(Facebook; Rec.Facebook) { }
                field(Instagram; Rec.Instagram) { }
            }
            group(EstadoCivilGroup)
            {
                Caption = 'Estado Civil';
                field(EstadoCivil; Rec.EstadoCivil) { }
            }
        }
    }
}
