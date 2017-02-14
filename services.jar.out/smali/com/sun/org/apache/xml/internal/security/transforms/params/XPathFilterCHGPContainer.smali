.class public Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;
.super Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;
.source "Unknown"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/transforms/TransformParam;


# static fields
.field public static final ExcludeSlash:Z = false

.field public static final IncludeSlash:Z = true

.field public static final _ATT_INCLUDESLASH:Ljava/lang/String; = "IncludeSlashPolicy"

.field private static final _TAG_EXCLUDE:Ljava/lang/String; = "Exclude"

.field private static final _TAG_EXCLUDE_BUT_SEARCH:Ljava/lang/String; = "ExcludeButSearch"

.field private static final _TAG_INCLUDE_BUT_SEARCH:Ljava/lang/String; = "IncludeButSearch"

.field public static final _TAG_XPATHCHGP:Ljava/lang/String; = "XPathAlternative"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;-><init>()V

    return-void
.end method

.method private constructor <init>(Lorg/w3c/dom/Document;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "IncludeSlashPolicy"

    const-string/jumbo v2, "false"

    invoke-interface {v0, v3, v1, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-nez p3, :cond_4

    :cond_0
    :goto_1
    if-nez p4, :cond_5

    :cond_1
    :goto_2
    if-nez p5, :cond_6

    :cond_2
    :goto_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "\n"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "IncludeSlashPolicy"

    const-string/jumbo v2, "true"

    invoke-interface {v0, v3, v1, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;->getBaseNamespace()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "IncludeButSearch"

    invoke-static {p1, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-static {p3}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;->indentXPathText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v2, "\n"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_5
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;->getBaseNamespace()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ExcludeButSearch"

    invoke-static {p1, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-static {p4}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;->indentXPathText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v2, "\n"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;->getBaseNamespace()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Exclude"

    invoke-static {p1, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-static {p5}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;->indentXPathText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v2, "\n"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto/16 :goto_3
.end method

.method private constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-void
.end method

.method private getHereContextNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;->getBaseNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;->getBaseNamespace()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Text;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Lorg/w3c/dom/Document;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;
    .locals 6

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;-><init>(Lorg/w3c/dom/Document;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getInstance(Lorg/w3c/dom/Element;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-object v0
.end method

.method private getXStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;->getBaseNamespace()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;->getBaseNamespace()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getFullTextChildrenFromElement(Lorg/w3c/dom/Element;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0
.end method

.method static indentXPathText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getBaseLocalName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "XPathAlternative"

    return-object v0
.end method

.method public final getBaseNamespace()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://www.nue.et-inf.uni-siegen.de/~geuer-pollmann/#xpathFilter"

    return-object v0
.end method

.method public getExclude()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Exclude"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;->getXStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExcludeButSearch()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ExcludeButSearch"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;->getXStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHereContextNodeExclude()Lorg/w3c/dom/Node;
    .locals 1

    const-string/jumbo v0, "Exclude"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;->getHereContextNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getHereContextNodeExcludeButSearch()Lorg/w3c/dom/Node;
    .locals 1

    const-string/jumbo v0, "ExcludeButSearch"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;->getHereContextNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getHereContextNodeIncludeButSearch()Lorg/w3c/dom/Node;
    .locals 1

    const-string/jumbo v0, "IncludeButSearch"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;->getHereContextNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getIncludeButSearch()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "IncludeButSearch"

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/params/XPathFilterCHGPContainer;->getXStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncludeSlashPolicy()Z
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "IncludeSlashPolicy"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
