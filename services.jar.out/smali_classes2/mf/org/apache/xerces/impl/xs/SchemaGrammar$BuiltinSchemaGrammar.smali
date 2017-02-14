.class public Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;
.super Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.source "SchemaGrammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuiltinSchemaGrammar"
.end annotation


# static fields
.field private static final EXTENDED_SCHEMA_FACTORY_CLASS:Ljava/lang/String; = "mf.org.apache.xerces.impl.dv.xs.ExtendedSchemaDVFactoryImpl"


# direct methods
.method public constructor <init>(IS)V
    .locals 9

    const/4 v2, 0x3

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>()V

    if-eq p2, v8, :cond_0

    const-string/jumbo v0, "mf.org.apache.xerces.impl.dv.xs.ExtendedSchemaDVFactoryImpl"

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getInstance(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-result-object v0

    :goto_0
    if-eq p1, v8, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getInstance()Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getBuiltInTypes()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->getLength()I

    move-result v1

    new-array v2, v1, [Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;->getValues([Ljava/lang/Object;I)I

    :goto_2
    if-ge v3, v1, :cond_3

    aget-object v0, v2, v3

    instance-of v4, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-nez v4, :cond_2

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setNamespaceItem(Lmf/org/apache/xerces/xs/XSNamespaceItem;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_4
    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->setNamespace(Ljava/lang/String;)V

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    invoke-direct {v1, v8}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v1, Lmf/org/apache/xerces/util/SymbolHash;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_TYPE:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    const-string/jumbo v4, "QName"

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getBuiltInType(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v4

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v7, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;

    invoke-direct {v7, v1, v2, v4, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)V

    invoke-virtual {v6, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NIL:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    const-string/jumbo v4, "boolean"

    invoke-virtual {v0, v4}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getBuiltInType(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v4

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v7, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;

    invoke-direct {v7, v1, v2, v4, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)V

    invoke-virtual {v6, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "anyURI"

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->getBuiltInType(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v4

    sget-object v6, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_SCHEMALOCATION:Ljava/lang/String;

    sget-object v7, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    const-string/jumbo v1, "#AnonType_schemaLocation"

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/dv/SchemaDVFactory;->createTypeList(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/xs/XSObjectList;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    move-result-object v1

    instance-of v0, v1, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-nez v0, :cond_5

    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;

    invoke-direct {v2, v6, v7, v1, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)V

    invoke-virtual {v0, v6, v2}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->XSI_NONAMESPACESCHEMALOCATION:Ljava/lang/String;

    sget-object v1, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_XSI:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v3, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;

    invoke-direct {v3, v0, v1, v4, v8}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinAttrDecl;-><init>(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;S)V

    invoke-virtual {v2, v0, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_5
    move-object v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->setAnonymous(Z)V

    goto :goto_4
.end method


# virtual methods
.method public addComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized addDocument(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalElementDeclAll(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)V
    .locals 0

    return-void
.end method

.method public addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V
    .locals 0

    return-void
.end method

.method public addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addRedefinedGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 0

    return-void
.end method

.method declared-synchronized getDOMParser()Lmf/org/apache/xerces/parsers/DOMParser;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getSAXParser()Lmf/org/apache/xerces/parsers/SAXParser;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public setImportedGrammars(Ljava/util/Vector;)V
    .locals 0

    return-void
.end method
