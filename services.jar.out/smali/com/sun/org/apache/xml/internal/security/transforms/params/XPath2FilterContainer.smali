.class public Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;
.super Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;
.source "Unknown"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/transforms/TransformParam;


# static fields
.field public static final INTERSECT:Ljava/lang/String; = "intersect"

.field public static final SUBTRACT:Ljava/lang/String; = "subtract"

.field public static final UNION:Ljava/lang/String; = "union"

.field public static final XPathFilter2NS:Ljava/lang/String; = "http://www.w3.org/2002/06/xmldsig-filter2"

.field private static final _ATT_FILTER:Ljava/lang/String; = "Filter"

.field private static final _ATT_FILTER_VALUE_INTERSECT:Ljava/lang/String; = "intersect"

.field private static final _ATT_FILTER_VALUE_SUBTRACT:Ljava/lang/String; = "subtract"

.field private static final _ATT_FILTER_VALUE_UNION:Ljava/lang/String; = "union"

.field public static final _TAG_XPATH2:Ljava/lang/String; = "XPath"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;-><init>()V

    return-void
.end method

.method private constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "Filter"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, p3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {p1, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method private constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "Filter"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "intersect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v1, "subtract"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "union"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Filter"

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v0, 0x2

    const-string/jumbo v2, "intersect, subtract or union"

    aput-object v2, v1, v0

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "attributeValueIllegal"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static newInstance(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newInstanceIntersect(Lorg/w3c/dom/Document;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;

    const-string/jumbo v1, "intersect"

    invoke-direct {v0, p0, p1, v1}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newInstanceSubtract(Lorg/w3c/dom/Document;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;

    const-string/jumbo v1, "subtract"

    invoke-direct {v0, p0, p1, v1}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newInstanceUnion(Lorg/w3c/dom/Document;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;

    const-string/jumbo v1, "union"

    invoke-direct {v0, p0, p1, v1}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static newInstances(Lorg/w3c/dom/Document;[[Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 6

    const/4 v1, 0x0

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;

    invoke-direct {v2}, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;-><init>()V

    const-string/jumbo v0, "\n"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->appendChild(Lorg/w3c/dom/Node;)V

    move v0, v1

    :goto_0
    array-length v3, p1

    if-lt v0, v3, :cond_0

    return-object v2

    :cond_0
    aget-object v3, p1, v0

    aget-object v3, v3, v1

    aget-object v4, p1, v0

    const/4 v5, 0x1

    aget-object v4, v4, v5

    const-string/jumbo v5, "intersect"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    new-instance v5, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;

    invoke-direct {v5, p0, v4, v3}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPath2FilterContainer;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->appendChild(Lorg/w3c/dom/Node;)V

    const-string/jumbo v3, "\n"

    invoke-interface {p0, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/HelperNodeList;->appendChild(Lorg/w3c/dom/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "subtract"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "union"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "The type("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, ")=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v2, "\" is illegal"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final getBaseLocalName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "XPath"

    return-object v0
.end method

.method public final getBaseNamespace()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://www.w3.org/2002/06/xmldsig-filter2"

    return-object v0
.end method

.method public getXPathFilterStr()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getTextFromTextChild()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getXPathFilterTextNode()Lorg/w3c/dom/Node;
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public isIntersect()Z
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "Filter"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "intersect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSubtract()Z
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "Filter"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "subtract"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUnion()Z
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "Filter"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "union"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
