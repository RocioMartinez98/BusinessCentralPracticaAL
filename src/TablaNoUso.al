table 50107 TempPartTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; Number; Integer)
        {
            DataClassification = SystemMetadata;
        }
        field(2; CondicionalTexto; Text[100])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Number)
        {
            Clustered = true;
        }
    }
}
