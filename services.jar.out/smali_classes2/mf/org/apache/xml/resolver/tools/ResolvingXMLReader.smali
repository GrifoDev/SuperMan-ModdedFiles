.class public Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;
.super Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;
.source "ResolvingXMLReader.java"


# static fields
.field public static namespaceAware:Z

.field public static validating:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->namespaceAware:Z

    const/4 v0, 0x0

    sput-boolean v0, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->validating:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;-><init>()V

    invoke-static {}, Lmf/javax/xml/parsers/SAXParserFactory;->newInstance()Lmf/javax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sget-boolean v1, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->namespaceAware:Z

    invoke-virtual {v0, v1}, Lmf/javax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    sget-boolean v1, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->validating:Z

    invoke-virtual {v0, v1}, Lmf/javax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    :try_start_0
    invoke-virtual {v0}, Lmf/javax/xml/parsers/SAXParserFactory;->newSAXParser()Lmf/javax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Lmf/javax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setParent(Lorg/xml/sax/XMLReader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Lmf/org/apache/xml/resolver/CatalogManager;)V
    .locals 2

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLFilter;-><init>(Lmf/org/apache/xml/resolver/CatalogManager;)V

    invoke-static {}, Lmf/javax/xml/parsers/SAXParserFactory;->newInstance()Lmf/javax/xml/parsers/SAXParserFactory;

    move-result-object v0

    sget-boolean v1, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->namespaceAware:Z

    invoke-virtual {v0, v1}, Lmf/javax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    sget-boolean v1, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->validating:Z

    invoke-virtual {v0, v1}, Lmf/javax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    :try_start_0
    invoke-virtual {v0}, Lmf/javax/xml/parsers/SAXParserFactory;->newSAXParser()Lmf/javax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Lmf/javax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setParent(Lorg/xml/sax/XMLReader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
