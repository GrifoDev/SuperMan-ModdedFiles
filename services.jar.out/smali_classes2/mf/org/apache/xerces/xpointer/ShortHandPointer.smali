.class final Lmf/org/apache/xerces/xpointer/ShortHandPointer;
.super Ljava/lang/Object;
.source "ShortHandPointer.java"

# interfaces
.implements Lmf/org/apache/xerces/xpointer/XPointerPart;


# instance fields
.field private fIsFragmentResolved:Z

.field fMatchingChildCount:I

.field private fShortHandPointer:Ljava/lang/String;

.field private fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    return-void
.end method

.method private hasMatchingIdentifier(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-nez p2, :cond_2

    move-object v2, v0

    :cond_0
    if-nez v2, :cond_3

    :cond_1
    return v1

    :cond_2
    move-object v2, v0

    move v0, v1

    :goto_0
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->getSchemaDeterminedID(Lmf/org/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->getChildrenSchemaDeterminedID(Lmf/org/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p2, v0}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->getDTDDeterminedID(Lmf/org/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fShortHandPointer:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getChildrenSchemaDeterminedID(Lmf/org/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDTDDeterminedID(Lmf/org/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-interface {p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getType(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSchemaDeterminedID(Lmf/org/apache/xerces/xni/XMLAttributes;I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1, p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v0

    const-string/jumbo v1, "ATTRIBUTE_PSVI"

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/AttributePSVI;

    if-nez v0, :cond_1

    :cond_0
    return-object v2

    :cond_1
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_0
    if-eqz v1, :cond_0

    check-cast v1, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v1}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/AttributePSVI;->getSchemaNormalizedValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v1

    goto :goto_0
.end method

.method public getSchemeData()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fShortHandPointer:Ljava/lang/String;

    return-object v0
.end method

.method public isChildFragmentResolved()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public isFragmentResolved()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    return v0
.end method

.method public parseXPointer(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fShortHandPointer:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    return-void
.end method

.method public resolveXPointer(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    if-eqz v0, :cond_1

    :goto_0
    if-eqz p4, :cond_2

    const/4 v0, 0x2

    if-eq p4, v0, :cond_4

    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    if-nez v0, :cond_5

    :cond_0
    :goto_1
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    return v0

    :cond_1
    iput-boolean v1, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    goto :goto_0

    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    if-eqz v0, :cond_3

    :goto_2
    iget-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->hasMatchingIdentifier(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    goto :goto_2

    :cond_4
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->hasMatchingIdentifier(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;I)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fIsFragmentResolved:Z

    goto :goto_1

    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fMatchingChildCount:I

    goto :goto_1
.end method

.method public setSchemeData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSchemeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xpointer/ShortHandPointer;->fShortHandPointer:Ljava/lang/String;

    return-void
.end method
