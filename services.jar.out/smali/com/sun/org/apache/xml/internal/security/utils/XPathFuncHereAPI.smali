.class public Lcom/sun/org/apache/xml/internal/security/utils/XPathFuncHereAPI;
.super Ljava/lang/Object;
.source "Unknown"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p0, p1, p0}, Lcom/sun/org/apache/xml/internal/security/utils/XPathFuncHereAPI;->eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public static eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/XPathFuncHereAPI;->getStrFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/sun/org/apache/xpath/internal/XPath;

    const/4 v4, 0x0

    move-object v3, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    invoke-direct {v1, p1}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v1, p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public static eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v6, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    invoke-direct {v6, p1}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v3, Lcom/sun/org/apache/xml/internal/utils/PrefixResolverDefault;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    :goto_0
    invoke-direct {v3, p2}, Lcom/sun/org/apache/xml/internal/utils/PrefixResolverDefault;-><init>(Lorg/w3c/dom/Node;)V

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/XPathFuncHereAPI;->getStrFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/sun/org/apache/xpath/internal/XPath;

    const/4 v4, 0x0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    invoke-virtual {v6, p0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v1

    invoke-virtual {v0, v6, v1, v3}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    return-object v0

    :cond_0
    check-cast p2, Lorg/w3c/dom/Document;

    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2

    goto :goto_0
.end method

.method private static getStrFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    check-cast p0, Lorg/w3c/dom/Text;

    invoke-interface {p0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static selectNodeIterator(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p0, p1, p0}, Lcom/sun/org/apache/xml/internal/security/utils/XPathFuncHereAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    return-object v0
.end method

.method public static selectNodeIterator(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/XPathFuncHereAPI;->eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    return-object v0
.end method

.method public static selectNodeList(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p0, p1, p0}, Lcom/sun/org/apache/xml/internal/security/utils/XPathFuncHereAPI;->selectNodeList(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public static selectNodeList(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/XPathFuncHereAPI;->eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public static selectSingleNode(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p0, p1, p0}, Lcom/sun/org/apache/xml/internal/security/utils/XPathFuncHereAPI;->selectSingleNode(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public static selectSingleNode(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/XPathFuncHereAPI;->selectNodeIterator(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method
