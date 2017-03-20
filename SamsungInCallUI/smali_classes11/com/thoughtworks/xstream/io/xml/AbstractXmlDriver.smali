.class public abstract Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;
.super Lcom/thoughtworks/xstream/io/AbstractDriver;
.source "AbstractXmlDriver.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/AbstractDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected xmlFriendlyReplacer()Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v0

    .line 61
    .local v0, "nameCoder":Lcom/thoughtworks/xstream/io/naming/NameCoder;
    instance-of v1, v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .end local v0    # "nameCoder":Lcom/thoughtworks/xstream/io/naming/NameCoder;
    :goto_0
    return-object v0

    .restart local v0    # "nameCoder":Lcom/thoughtworks/xstream/io/naming/NameCoder;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
