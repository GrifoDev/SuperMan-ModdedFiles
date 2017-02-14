.class public Lmf/org/apache/xerces/dom/PSVIElementNSImpl;
.super Lmf/org/apache/xerces/dom/ElementNSImpl;
.source "PSVIElementNSImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/ElementPSVI;


# static fields
.field static final serialVersionUID:J = 0x5e957bb41eca45c4L


# instance fields
.field protected fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

.field protected fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

.field protected fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

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
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/dom/ElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-boolean v2, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fNil:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fSpecified:Z

    new-instance v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    iput-short v2, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValidationAttempted:S

    iput-short v2, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValidity:S

    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValidationContext:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/dom/ElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-boolean v2, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fNil:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fSpecified:Z

    new-instance v0, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    iput-short v2, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValidationAttempted:S

    iput-short v2, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValidity:S

    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValidationContext:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    new-instance v0, Ljava/io/NotSerializableException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/NotSerializableException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getActualNormalizedValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getActualValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getActualNormalizedValueType()S
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getActualValueType()S

    move-result v0

    return v0
.end method

.method public getElementDeclaration()Lmf/org/apache/xerces/xs/XSElementDeclaration;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    return-object v0
.end method

.method public getErrorCodes()Lmf/org/apache/xerces/xs/StringList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    return-object v0
.end method

.method public getErrorMessages()Lmf/org/apache/xerces/xs/StringList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    if-nez v0, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    return-object v0
.end method

.method public getIsSchemaSpecified()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fSpecified:Z

    return v0
.end method

.method public getItemValueTypes()Lmf/org/apache/xerces/xs/ShortList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getListValueTypes()Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v0

    return-object v0
.end method

.method public getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    return-object v0
.end method

.method public getNil()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fNil:Z

    return v0
.end method

.method public getNotation()Lmf/org/apache/xerces/xs/XSNotationDeclaration;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    return-object v0
.end method

.method public getSchemaDefault()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSElementDeclaration;->getConstraintValue()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSchemaInformation()Lmf/org/apache/xerces/xs/XSModel;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    return-object v0
.end method

.method public getSchemaNormalizedValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->getNormalizedValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaValue()Lmf/org/apache/xerces/xs/XSValue;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    return-object v0
.end method

.method public getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-object v0
.end method

.method public getValidationAttempted()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValidationAttempted:S

    return v0
.end method

.method public getValidationContext()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValidationContext:Ljava/lang/String;

    return-object v0
.end method

.method public getValidity()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValidity:S

    return v0
.end method

.method public setPSVI(Lmf/org/apache/xerces/xs/ElementPSVI;)V
    .locals 2

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getElementDeclaration()Lmf/org/apache/xerces/xs/XSElementDeclaration;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fDeclaration:Lmf/org/apache/xerces/xs/XSElementDeclaration;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getNotation()Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fNotation:Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getValidationContext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValidationContext:Ljava/lang/String;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getSchemaInformation()Lmf/org/apache/xerces/xs/XSModel;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fSchemaInformation:Lmf/org/apache/xerces/xs/XSModel;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getValidity()S

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValidity:S

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getValidationAttempted()S

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValidationAttempted:S

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getErrorCodes()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fErrorCodes:Lmf/org/apache/xerces/xs/StringList;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getErrorMessages()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fErrorMessages:Lmf/org/apache/xerces/xs/StringList;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    instance-of v0, v0, Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getSchemaValue()Lmf/org/apache/xerces/xs/XSValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->copyFrom(Lmf/org/apache/xerces/xs/XSValue;)V

    :goto_0
    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getIsSchemaSpecified()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fSpecified:Z

    invoke-interface {p1}, Lmf/org/apache/xerces/xs/ElementPSVI;->getNil()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fNil:Z

    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    instance-of v0, v0, Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;

    if-nez v0, :cond_2

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fValue:Lmf/org/apache/xerces/impl/dv/ValidatedInfo;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/ValidatedInfo;->reset()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->fTypeDecl:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSComplexTypeDefinition;->getContentType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1
.end method
