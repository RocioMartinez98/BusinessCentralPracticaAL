table 50110 RegistroFacturaTable
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; Id; Integer)
        {
            DataClassification = SystemMetadata;
            AutoIncrement = true;
        }
        field(2; NoFactura; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; Cliente; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; Fecha; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(5; Importe; Decimal)
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; Id)
        {
            Clustered = true;
        }
    }
}
