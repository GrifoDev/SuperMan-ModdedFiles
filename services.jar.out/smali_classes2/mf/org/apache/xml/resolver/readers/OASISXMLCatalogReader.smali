.class public Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;
.super Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;
.source "OASISXMLCatalogReader.java"

# interfaces
.implements Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;


# static fields
.field public static final namespaceName:Ljava/lang/String; = "urn:oasis:names:tc:entity:xmlns:xml:catalog"

.field public static final tr9401NamespaceName:Ljava/lang/String; = "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"


# instance fields
.field protected baseURIStack:Ljava/util/Stack;

.field protected catalog:Lmf/org/apache/xml/resolver/Catalog;

.field protected namespaceStack:Ljava/util/Stack;

.field protected overrideStack:Ljava/util/Stack;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/parsers/SAXParserFactory;Lmf/org/apache/xml/resolver/Catalog;)V
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>(Lmf/javax/xml/parsers/SAXParserFactory;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Error: required attribute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " missing."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->inExtensionNamespace()Z

    move-result v3

    if-nez p1, :cond_2

    :cond_0
    :goto_0
    if-nez p1, :cond_6

    :cond_1
    :goto_1
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void

    :cond_2
    if-nez v3, :cond_0

    const-string/jumbo v0, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v5, "(reset) xml:base"

    invoke-virtual {v4, v9, v5, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v1, v0, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v1

    if-eq v1, v8, :cond_5

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v0

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v1, "Invalid catalog entry (rbase)"

    invoke-virtual {v0, v6, v1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v1, "Invalid catalog entry type"

    invoke-virtual {v0, v6, v1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    const-string/jumbo v0, "catalog"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v4, "(reset) override"

    invoke-virtual {v3, v9, v4, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v1, v0, v2}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_1
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v1

    if-eq v1, v8, :cond_9

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v0

    if-ne v0, v7, :cond_1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v1, "Invalid catalog entry (roverride)"

    invoke-virtual {v0, v6, v1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v0, "group"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_1

    :cond_9
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v1, "Invalid catalog entry type"

    invoke-virtual {v0, v6, v1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public getCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method protected inExtensionNamespace()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->elements()Ljava/util/Enumeration;

    move-result-object v3

    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    :cond_0
    return v0

    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string/jumbo v4, "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/Catalog;->getCurrentBase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/Catalog;->getDefaultOverride()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x4

    const/4 v1, -0x1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    invoke-virtual {v2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->inExtensionNamespace()Z

    move-result v3

    if-nez p1, :cond_2

    :cond_0
    :goto_0
    if-nez p1, :cond_28

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string/jumbo v2, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    const-string/jumbo v2, "xml:base"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    const-string/jumbo v2, "catalog"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_3
    const-string/jumbo v2, "prefer"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    :goto_3
    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v4}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    const-string/jumbo v2, "delegatePublic"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string/jumbo v2, "delegateSystem"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "delegateURI"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string/jumbo v2, "rewriteSystem"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "systemSuffix"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    const-string/jumbo v2, "rewriteURI"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string/jumbo v2, "uriSuffix"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    const-string/jumbo v2, "nextCatalog"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string/jumbo v2, "public"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string/jumbo v2, "system"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    const-string/jumbo v2, "uri"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    const-string/jumbo v2, "catalog"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    :goto_5
    move v2, v1

    :goto_6
    if-gez v2, :cond_25

    move v1, v2

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v1, "xml:base"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v5, "xml:base"

    invoke-virtual {v4, v7, v5, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v1, v2, v0}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_7
    const/4 v1, -0x1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v1

    if-eq v1, v10, :cond_6

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v0

    if-ne v0, v9, :cond_5

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v1, "Invalid catalog entry (base)"

    invoke-virtual {v0, v8, v1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v1, "Invalid catalog entry type"

    invoke-virtual {v0, v8, v1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    const-string/jumbo v2, "group"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_3

    :cond_8
    const-string/jumbo v1, "prefer"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "public"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string/jumbo v2, "system"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v2, "Invalid prefer: must be \'system\' or \'public\'"

    invoke-virtual {v1, v8, v2, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/Catalog;->getDefaultOverride()Ljava/lang/String;

    move-result-object v1

    :goto_8
    sget v2, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v4, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v5, "override"

    invoke-virtual {v4, v7, v5, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v1, v2, v0}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_1
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_9
    :goto_9
    const/4 v1, -0x1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    goto/16 :goto_4

    :cond_a
    const-string/jumbo v1, "yes"

    goto :goto_8

    :cond_b
    const-string/jumbo v1, "no"

    goto :goto_8

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v1

    if-eq v1, v10, :cond_c

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v0

    if-ne v0, v9, :cond_9

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v1, "Invalid catalog entry (override)"

    invoke-virtual {v0, v8, v1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_c
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v1, "Invalid catalog entry type"

    invoke-virtual {v0, v8, v1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_d
    const-string/jumbo v2, "publicIdStartString"

    const-string/jumbo v4, "catalog"

    invoke-virtual {p0, p4, v2, v4}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    move v2, v1

    goto/16 :goto_6

    :cond_e
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_PUBLIC:I

    const-string/jumbo v2, "publicIdStartString"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "catalog"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v4, "delegatePublic"

    const-string/jumbo v5, "publicIdStartString"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "catalog"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v4, v5, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto/16 :goto_6

    :cond_f
    const-string/jumbo v2, "systemIdStartString"

    const-string/jumbo v4, "catalog"

    invoke-virtual {p0, p4, v2, v4}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_10

    move v2, v1

    goto/16 :goto_6

    :cond_10
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_SYSTEM:I

    const-string/jumbo v2, "systemIdStartString"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "catalog"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v4, "delegateSystem"

    const-string/jumbo v5, "systemIdStartString"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "catalog"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v4, v5, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto/16 :goto_6

    :cond_11
    const-string/jumbo v2, "uriStartString"

    const-string/jumbo v4, "catalog"

    invoke-virtual {p0, p4, v2, v4}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_12

    move v2, v1

    goto/16 :goto_6

    :cond_12
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_URI:I

    const-string/jumbo v2, "uriStartString"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "catalog"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v4, "delegateURI"

    const-string/jumbo v5, "uriStartString"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "catalog"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v4, v5, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto/16 :goto_6

    :cond_13
    const-string/jumbo v2, "systemIdStartString"

    const-string/jumbo v4, "rewritePrefix"

    invoke-virtual {p0, p4, v2, v4}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    move v2, v1

    goto/16 :goto_6

    :cond_14
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_SYSTEM:I

    const-string/jumbo v2, "systemIdStartString"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "rewritePrefix"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v4, "rewriteSystem"

    const-string/jumbo v5, "systemIdStartString"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "rewritePrefix"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v4, v5, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto/16 :goto_6

    :cond_15
    const-string/jumbo v2, "systemIdSuffix"

    const-string/jumbo v4, "uri"

    invoke-virtual {p0, p4, v2, v4}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    move v2, v1

    goto/16 :goto_6

    :cond_16
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM_SUFFIX:I

    const-string/jumbo v2, "systemIdSuffix"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "uri"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v4, "systemSuffix"

    const-string/jumbo v5, "systemIdSuffix"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "uri"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v4, v5, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto/16 :goto_6

    :cond_17
    const-string/jumbo v2, "uriStartString"

    const-string/jumbo v4, "rewritePrefix"

    invoke-virtual {p0, p4, v2, v4}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_18

    move v2, v1

    goto/16 :goto_6

    :cond_18
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_URI:I

    const-string/jumbo v2, "uriStartString"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "rewritePrefix"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v4, "rewriteURI"

    const-string/jumbo v5, "uriStartString"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "rewritePrefix"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v4, v5, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto/16 :goto_6

    :cond_19
    const-string/jumbo v2, "uriSuffix"

    const-string/jumbo v4, "uri"

    invoke-virtual {p0, p4, v2, v4}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1a

    move v2, v1

    goto/16 :goto_6

    :cond_1a
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->URI_SUFFIX:I

    const-string/jumbo v2, "uriSuffix"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "uri"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v4, "uriSuffix"

    const-string/jumbo v5, "uriSuffix"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "uri"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v4, v5, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto/16 :goto_6

    :cond_1b
    const-string/jumbo v2, "catalog"

    invoke-virtual {p0, p4, v2}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    move v2, v1

    goto/16 :goto_6

    :cond_1c
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->CATALOG:I

    const-string/jumbo v2, "catalog"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v4, "nextCatalog"

    const-string/jumbo v5, "catalog"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v7, v4, v5}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto/16 :goto_6

    :cond_1d
    const-string/jumbo v2, "publicId"

    const-string/jumbo v4, "uri"

    invoke-virtual {p0, p4, v2, v4}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1e

    move v2, v1

    goto/16 :goto_6

    :cond_1e
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    const-string/jumbo v2, "publicId"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "uri"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v4, "public"

    const-string/jumbo v5, "publicId"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "uri"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v4, v5, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto/16 :goto_6

    :cond_1f
    const-string/jumbo v2, "systemId"

    const-string/jumbo v4, "uri"

    invoke-virtual {p0, p4, v2, v4}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    move v2, v1

    goto/16 :goto_6

    :cond_20
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    const-string/jumbo v2, "systemId"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "uri"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v4, "system"

    const-string/jumbo v5, "systemId"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "uri"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v4, v5, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto/16 :goto_6

    :cond_21
    const-string/jumbo v2, "name"

    const-string/jumbo v4, "uri"

    invoke-virtual {p0, p4, v2, v4}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    move v2, v1

    goto/16 :goto_6

    :cond_22
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    const-string/jumbo v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "uri"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v4, "uri"

    const-string/jumbo v5, "name"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "uri"

    invoke-interface {p4, v6}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v4, v5, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_23
    const-string/jumbo v2, "group"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    move v2, v1

    goto/16 :goto_6

    :cond_24
    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v4, "Invalid catalog entry type"

    invoke-virtual {v2, v8, v4, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto/16 :goto_6

    :cond_25
    :try_start_2
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v1, v2, v0}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v4, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v4, v1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_2
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_2 .. :try_end_2} :catch_2

    move v1, v2

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v4

    if-eq v4, v10, :cond_26

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v1

    if-eq v1, v9, :cond_27

    :goto_a
    move v1, v2

    goto/16 :goto_0

    :cond_26
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v4, "Invalid catalog entry type"

    invoke-virtual {v1, v8, v4, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_27
    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v4, "Invalid catalog entry"

    invoke-virtual {v1, v8, v4, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    move v1, v2

    goto/16 :goto_0

    :cond_28
    const-string/jumbo v2, "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    const-string/jumbo v2, "xml:base"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_29

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    iget-object v3, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    const-string/jumbo v2, "doctype"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    const-string/jumbo v2, "document"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    const-string/jumbo v2, "dtddecl"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string/jumbo v2, "entity"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    const-string/jumbo v2, "linktype"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    const-string/jumbo v2, "notation"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string/jumbo v2, "sgmldecl"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v3, "Invalid catalog entry type"

    invoke-virtual {v2, v8, v3, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :goto_c
    if-ltz v1, :cond_1

    :try_start_3
    new-instance v2, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v2, v1, v0}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v0, v2}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_3
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v1

    if-eq v1, v10, :cond_33

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v0

    if-ne v0, v9, :cond_1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v1, "Invalid catalog entry"

    invoke-virtual {v0, v8, v1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_29
    const-string/jumbo v1, "xml:base"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v2, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v4, "xml:base"

    invoke-virtual {v3, v7, v4, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_4
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v1, v2, v0}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_4
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_2a
    :goto_d
    const/4 v1, -0x1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    goto/16 :goto_b

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v1

    if-eq v1, v10, :cond_2b

    invoke-virtual {v0}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v0

    if-ne v0, v9, :cond_2a

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v1, "Invalid catalog entry (base)"

    invoke-virtual {v0, v8, v1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_2b
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v1, "Invalid catalog entry type"

    invoke-virtual {v0, v8, v1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    :cond_2c
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    const-string/jumbo v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "uri"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_2d
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    const-string/jumbo v2, "uri"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_2e
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->DTDDECL:I

    const-string/jumbo v2, "publicId"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "uri"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_2f
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    const-string/jumbo v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "uri"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_30
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->LINKTYPE:I

    const-string/jumbo v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "uri"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_31
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    const-string/jumbo v2, "name"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v2, "uri"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_32
    sget v1, Lmf/org/apache/xml/resolver/Catalog;->SGMLDECL:I

    const-string/jumbo v2, "uri"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_33
    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const-string/jumbo v1, "Invalid catalog entry type"

    invoke-virtual {v0, v8, v1, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method
