.class public Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;
.super Ljava/lang/Object;
.source "ElementPSVImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/ElementPSVI;


# instance fields
.field protected fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

.field protected fErrors:[Ljava/lang/String;

.field protected fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

.field protected fNil:Z

.field protected fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

.field protected fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

.field protected fSpecified:Z

.field protected fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

.field protected fValidationAttempted:S

.field protected fValidationContext:Ljava/lang/String;

.field protected fValidity:S

.field protected fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    iput-boolean v2, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSpecified:Z

    new-instance v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    iput-short v2, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    return-void
.end method


# virtual methods
.method public copySchemaInformationTo(Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iput-object v0, p1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    iput-object v0, p1, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    return-void
.end method

.method public getActualNormalizedValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getActualValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActualNormalizedValueType()S
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getActualValueType()S

    move-result v0

    return v0
.end method

.method public getElementDeclaration()Lmf/org/apache/xerces/xs/XSElementDeclaration;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    return-object v0
.end method

.method public getErrorCodes()Lmf/org/apache/xerces/xs/StringList;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;-><init>([Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getErrorMessages()Lmf/org/apache/xerces/xs/StringList;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/PSVIErrorList;-><init>([Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getIsSchemaSpecified()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSpecified:Z

    return v0
.end method

.method public getItemValueTypes()Lmf/org/apache/xerces/xs/ShortList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getListValueTypes()Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v0

    return-object v0
.end method

.method public getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    return-object v0
.end method

.method public getNil()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    return v0
.end method

.method public getNotation()Lmf/org/apache/xerces/xs/XSNotationDeclaration;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    return-object v0
.end method

.method public getSchemaDefault()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSElementDeclaration;->getConstraintValue()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getSchemaInformation()Lmf/org/apache/xerces/xs/XSModel;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-eqz v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fGrammars:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSchemaNormalizedValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getNormalizedValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaValue()Lmf/org/apache/xerces/xs/XSValue;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    return-object v0
.end method

.method public getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object v0
.end method

.method public getValidationAttempted()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    return v0
.end method

.method public getValidationContext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    return-object v0
.end method

.method public getValidity()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNil:Z

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fSpecified:Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationAttempted:S

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidity:S

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fErrors:[Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValidationContext:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/ElementPSVImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->reset()V

    return-void
.end method
