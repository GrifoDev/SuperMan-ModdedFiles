.class public Lcom/thoughtworks/xstream/io/xml/XStream11NameCoder;
.super Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;
.source "XStream11NameCoder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    return-void
.end method


# virtual methods
.method public decodeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 27
    return-object p1
.end method

.method public decodeNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    .line 35
    return-object p1
.end method
