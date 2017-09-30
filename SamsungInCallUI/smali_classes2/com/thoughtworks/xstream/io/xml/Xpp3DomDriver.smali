.class public Lcom/thoughtworks/xstream/io/xml/Xpp3DomDriver;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXppDomDriver;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/AbstractXppDomDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractXppDomDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method


# virtual methods
.method protected createParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 1

    new-instance v0, Lorg/xmlpull/mxp1/MXParser;

    invoke-direct {v0}, Lorg/xmlpull/mxp1/MXParser;-><init>()V

    return-object v0
.end method
