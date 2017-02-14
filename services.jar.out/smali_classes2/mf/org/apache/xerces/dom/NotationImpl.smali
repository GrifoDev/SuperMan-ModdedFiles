.class public Lmf/org/apache/xerces/dom/NotationImpl;
.super Lmf/org/apache/xerces/dom/NodeImpl;
.source "NotationImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/Notation;


# static fields
.field static final serialVersionUID:J = -0xa9c84ee53e3bc62L


# instance fields
.field protected baseURI:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected publicId:Ljava/lang/String;

.field protected systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iput-object p2, p0, Lmf/org/apache/xerces/dom/NotationImpl;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NotationImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NotationImpl;->baseURI:Ljava/lang/String;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NotationImpl;->baseURI:Ljava/lang/String;

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NotationImpl;->synchronizeData()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NotationImpl;->baseURI:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lmf/org/apache/xerces/util/URI;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NotationImpl;->baseURI:Ljava/lang/String;

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lmf/org/apache/xerces/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    return-object v2
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NotationImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NotationImpl;->name:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NotationImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getNodeType()S
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NotationImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NotationImpl;->publicId:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NotationImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NotationImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NotationImpl;->systemId:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NotationImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setBaseURI(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NotationImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/NotationImpl;->baseURI:Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NotationImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setPublicId(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NotationImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NotationImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/NotationImpl;->publicId:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NotationImpl;->synchronizeData()V

    goto :goto_0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NotationImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NotationImpl;->needsSyncData()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/NotationImpl;->systemId:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string/jumbo v2, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {v0, v2, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/NotationImpl;->synchronizeData()V

    goto :goto_0
.end method
