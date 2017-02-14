.class final Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;
.super Ljava/lang/Object;
.source "XSSimpleTypeDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSMultiValueFacet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XSMVFacetImpl"
.end annotation


# instance fields
.field final annotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field final avalues:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

.field final kind:S

.field final svalues:Lmf/org/apache/xerces/xs/StringList;


# direct methods
.method public constructor <init>(SLmf/org/apache/xerces/xs/StringList;Lmf/org/apache/xerces/xs/datatypes/ObjectList;Lmf/org/apache/xerces/xs/XSObjectList;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-short v0, p1

    iput-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;->kind:S

    iput-object p2, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;->svalues:Lmf/org/apache/xerces/xs/StringList;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;->avalues:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    if-nez p4, :cond_0

    sget-object p4, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :cond_0
    iput-object p4, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;->annotations:Lmf/org/apache/xerces/xs/XSObjectList;

    return-void
.end method


# virtual methods
.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;->annotations:Lmf/org/apache/xerces/xs/XSObjectList;

    return-object v0
.end method

.method public getEnumerationValues()Lmf/org/apache/xerces/xs/datatypes/ObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;->avalues:Lmf/org/apache/xerces/xs/datatypes/ObjectList;

    return-object v0
.end method

.method public getFacetKind()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;->kind:S

    return v0
.end method

.method public getLexicalFacetValues()Lmf/org/apache/xerces/xs/StringList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl$XSMVFacetImpl;->svalues:Lmf/org/apache/xerces/xs/StringList;

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

    const/16 v0, 0xe

    return v0
.end method
