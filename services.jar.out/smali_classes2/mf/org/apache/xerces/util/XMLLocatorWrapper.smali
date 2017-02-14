.class public final Lmf/org/apache/xerces/util/XMLLocatorWrapper;
.super Ljava/lang/Object;
.source "XMLLocatorWrapper.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLLocator;


# instance fields
.field private fLocator:Lmf/org/apache/xerces/xni/XMLLocator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getBaseSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getCharacterOffset()I

    move-result v0

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocator()Lmf/org/apache/xerces/xni/XMLLocator;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    invoke-interface {v0}, Lmf/org/apache/xerces/xni/XMLLocator;->getXMLVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setLocator(Lmf/org/apache/xerces/xni/XMLLocator;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/util/XMLLocatorWrapper;->fLocator:Lmf/org/apache/xerces/xni/XMLLocator;

    return-void
.end method
