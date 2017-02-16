.class public Lcom/thoughtworks/xstream/io/xml/XStream11XmlFriendlyReplacer;
.super Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;
.source "XStream11XmlFriendlyReplacer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public decodeAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    .line 37
    return-object p1
.end method

.method public decodeNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "elementName"    # Ljava/lang/String;

    .prologue
    .line 45
    return-object p1
.end method

.method public unescapeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    return-object p1
.end method
