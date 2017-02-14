.class final Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;
.super Ljava/lang/Object;
.source "StAXValidatorHelper.java"

# interfaces
.implements Lmf/javax/xml/stream/Location;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "XMLStreamReaderLocation"
.end annotation


# instance fields
.field private reader:Lmf/javax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getLocation()Lmf/javax/xml/stream/Location;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->reader:Lmf/javax/xml/stream/XMLStreamReader;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->reader:Lmf/javax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Lmf/javax/xml/stream/XMLStreamReader;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getCharacterOffset()I
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getCharacterOffset()I

    move-result v0

    return v0
.end method

.method public getColumnNumber()I
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getColumnNumber()I

    move-result v0

    return v0
.end method

.method public getLineNumber()I
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getLineNumber()I

    move-result v0

    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getPublicId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setXMLStreamReader(Lmf/javax/xml/stream/XMLStreamReader;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/validation/StAXValidatorHelper$XMLStreamReaderLocation;->reader:Lmf/javax/xml/stream/XMLStreamReader;

    return-void
.end method
