.class public Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;
.super Ljava/lang/Object;
.source "XSSimpleTypeDelegate.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/dv/XSSimpleType;


# instance fields
.field protected final type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSLmf/org/apache/xerces/impl/dv/ValidationContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeFacetException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0, p1, p2, p3, p4}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->applyFacets(Lmf/org/apache/xerces/impl/dv/XSFacets;SSLmf/org/apache/xerces/impl/dv/ValidationContext;)V

    return-void
.end method

.method public derivedFrom(Ljava/lang/String;Ljava/lang/String;S)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->derivedFrom(Ljava/lang/String;Ljava/lang/String;S)Z

    move-result v0

    return v0
.end method

.method public derivedFromType(Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->derivedFromType(Lmf/org/apache/xerces/xs/XSTypeDefinition;S)Z

    move-result v0

    return v0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    return-object v0
.end method

.method public getAnonymous()Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getAnonymous()Z

    move-result v0

    return v0
.end method

.method public getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getBaseType()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v0

    return-object v0
.end method

.method public getBounded()Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getBounded()Z

    move-result v0

    return v0
.end method

.method public getBuiltInKind()S
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getBuiltInKind()S

    move-result v0

    return v0
.end method

.method public getDefinedFacets()S
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getDefinedFacets()S

    move-result v0

    return v0
.end method

.method public getFacet(I)Lmf/org/apache/xerces/xs/XSObject;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFacet(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    return-object v0
.end method

.method public getFacets()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFacets()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    return-object v0
.end method

.method public getFinal()S
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFinal()S

    move-result v0

    return v0
.end method

.method public getFinite()Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFinite()Z

    move-result v0

    return v0
.end method

.method public getFixedFacets()S
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getFixedFacets()S

    move-result v0

    return v0
.end method

.method public getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getItemType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    return-object v0
.end method

.method public getLexicalEnumeration()Lmf/org/apache/xerces/xs/StringList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getLexicalEnumeration()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v0

    return-object v0
.end method

.method public getLexicalFacetValue(S)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getLexicalFacetValue(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLexicalPattern()Lmf/org/apache/xerces/xs/StringList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getLexicalPattern()Lmf/org/apache/xerces/xs/StringList;

    move-result-object v0

    return-object v0
.end method

.method public getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMemberTypes()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    return-object v0
.end method

.method public getMultiValueFacets()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getMultiValueFacets()Lmf/org/apache/xerces/xs/XSObjectList;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getNamespace()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;

    move-result-object v0

    return-object v0
.end method

.method public getNumeric()Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getNumeric()Z

    move-result v0

    return v0
.end method

.method public getOrdered()S
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getOrdered()S

    move-result v0

    return v0
.end method

.method public getPrimitiveKind()S
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveKind()S

    move-result v0

    return v0
.end method

.method public getPrimitiveType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getPrimitiveType()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v0

    return-object v0
.end method

.method public getType()S
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getType()S

    move-result v0

    return v0
.end method

.method public getTypeCategory()S
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getTypeCategory()S

    move-result v0

    return v0
.end method

.method public getVariety()S
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getVariety()S

    move-result v0

    return v0
.end method

.method public getWhitespace()S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/DatatypeException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->getWhitespace()S

    move-result v0

    return v0
.end method

.method public getWrappedXSSimpleType()Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v0
.end method

.method public isDefinedFacet(S)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isDefinedFacet(S)Z

    move-result v0

    return v0
.end method

.method public isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isFinal(S)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isFinal(S)Z

    move-result v0

    return v0
.end method

.method public isFixedFacet(S)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isFixedFacet(S)Z

    move-result v0

    return v0
.end method

.method public isIDType()Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/Object;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDelegate;->type:Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v0, p1, p2}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->validate(Lmf/org/apache/xerces/impl/dv/ValidationContext;Lmf/org/apache/xerces/impl/dv/ValidatedInfo;)V

    return-void
.end method
