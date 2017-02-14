.class final Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;
.super Ljava/lang/Object;
.source "XSSimpleTypeDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSFacet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XSFacetImpl"
.end annotation


# instance fields
.field final annotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field avalue:Ljava/lang/Object;

.field final fixed:Z

.field final ivalue:I

.field final kind:S

.field final svalue:Ljava/lang/String;


# direct methods
.method public constructor <init>(SLjava/lang/String;ILjava/lang/Object;ZLmf/org/apache/xerces/xs/XSAnnotation;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-short v0, p1

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->kind:S

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->svalue:Ljava/lang/String;

    iput p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->ivalue:I

    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->avalue:Ljava/lang/Object;

    iput-boolean p5, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->fixed:Z

    if-nez p6, :cond_0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->annotations:Lmf/org/apache/xerces/xs/XSObjectList;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->annotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->annotations:Lmf/org/apache/xerces/xs/XSObjectList;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-virtual {v0, p6}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->addXSObject(Lmf/org/apache/xerces/xs/XSObject;)V

    goto :goto_0
.end method


# virtual methods
.method public getActualFacetValue()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->avalue:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->avalue:Ljava/lang/Object;

    return-object v0

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->kind:S

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->ivalue:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->avalue:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->svalue:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->avalue:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getAnnotation()Lmf/org/apache/xerces/xs/XSAnnotation;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->annotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSAnnotation;

    return-object v0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->annotations:Lmf/org/apache/xerces/xs/XSObjectList;

    return-object v0
.end method

.method public getFacetKind()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->kind:S

    return v0
.end method

.method public getFixed()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->fixed:Z

    return v0
.end method

.method public getIntFacetValue()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->ivalue:I

    return v0
.end method

.method public getLexicalFacetValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSFacetImpl;->svalue:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()S
    .locals 1

    const/16 v0, 0xd

    return v0
.end method
