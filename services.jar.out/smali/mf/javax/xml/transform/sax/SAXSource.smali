.class public Lmf/javax/xml/transform/sax/SAXSource;
.super Ljava/lang/Object;
.source "SAXSource.java"

# interfaces
.implements Lmf/javax/xml/transform/Source;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.sax.SAXSource/feature"


# instance fields
.field private inputSource:Lorg/xml/sax/InputSource;

.field private reader:Lorg/xml/sax/XMLReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/InputSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/javax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/javax/xml/transform/sax/SAXSource;->reader:Lorg/xml/sax/XMLReader;

    iput-object p2, p0, Lmf/javax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    return-void
.end method

.method public static sourceToInputSource(Lmf/javax/xml/transform/Source;)Lorg/xml/sax/InputSource;
    .locals 2

    instance-of v0, p0, Lmf/javax/xml/transform/sax/SAXSource;

    if-nez v0, :cond_0

    instance-of v0, p0, Lmf/javax/xml/transform/stream/StreamSource;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_0
    check-cast p0, Lmf/javax/xml/transform/sax/SAXSource;

    invoke-virtual {p0}, Lmf/javax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    return-object v0

    :cond_1
    check-cast p0, Lmf/javax/xml/transform/stream/StreamSource;

    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lmf/javax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/javax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setByteStream(Ljava/io/InputStream;)V

    invoke-virtual {p0}, Lmf/javax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    invoke-virtual {p0}, Lmf/javax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setPublicId(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getInputSource()Lorg/xml/sax/InputSource;
    .locals 1

    iget-object v0, p0, Lmf/javax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/javax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/javax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 1

    iget-object v0, p0, Lmf/javax/xml/transform/sax/SAXSource;->reader:Lorg/xml/sax/XMLReader;

    return-object v0
.end method

.method public setInputSource(Lorg/xml/sax/InputSource;)V
    .locals 0

    iput-object p1, p0, Lmf/javax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmf/javax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/javax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    invoke-virtual {v0, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmf/javax/xml/transform/sax/SAXSource;->inputSource:Lorg/xml/sax/InputSource;

    goto :goto_0
.end method

.method public setXMLReader(Lorg/xml/sax/XMLReader;)V
    .locals 0

    iput-object p1, p0, Lmf/javax/xml/transform/sax/SAXSource;->reader:Lorg/xml/sax/XMLReader;

    return-void
.end method
