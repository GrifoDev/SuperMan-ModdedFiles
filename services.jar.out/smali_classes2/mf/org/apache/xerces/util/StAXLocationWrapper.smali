.class public final Lmf/org/apache/xerces/util/StAXLocationWrapper;
.super Ljava/lang/Object;
.source "StAXLocationWrapper.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLLocator;


# instance fields
.field private fLocation:Lmf/javax/xml/stream/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    return-void
.end method


# virtual methods
.method public getBaseSystemId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharacterOffset()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getCharacterOffset()I

    move-result v0

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExpandedSystemId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/util/StAXLocationWrapper;->getLiteralSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLineNumber()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getLiteralSystemId()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Lmf/javax/xml/stream/Location;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setLocation(Lmf/javax/xml/stream/Location;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/util/StAXLocationWrapper;->fLocation:Lmf/javax/xml/stream/Location;

    return-void
.end method
