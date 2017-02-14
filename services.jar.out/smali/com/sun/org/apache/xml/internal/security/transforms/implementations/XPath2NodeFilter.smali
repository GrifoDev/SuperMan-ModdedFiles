.class Lcom/sun/org/apache/xml/internal/security/transforms/implementations/XPath2NodeFilter;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/signature/NodeFilter;


# instance fields
.field intersectNodes:Ljava/util/List;

.field substractNodes:Ljava/util/List;

.field unionNodes:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/XPath2NodeFilter;->unionNodes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/XPath2NodeFilter;->substractNodes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/XPath2NodeFilter;->intersectNodes:Ljava/util/List;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/XPath2NodeFilter;->unionNodes:Ljava/util/List;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/XPath2NodeFilter;->substractNodes:Ljava/util/List;

    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/XPath2NodeFilter;->intersectNodes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public isNodeInclude(Lorg/w3c/dom/Node;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/XPath2NodeFilter;->substractNodes:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/XPath2NodeFilter;->rooted(Lorg/w3c/dom/Node;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/XPath2NodeFilter;->intersectNodes:Ljava/util/List;

    invoke-virtual {p0, p1, v2}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/XPath2NodeFilter;->rooted(Lorg/w3c/dom/Node;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    :cond_0
    :goto_1
    if-eqz v2, :cond_3

    :goto_2
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/XPath2NodeFilter;->unionNodes:Ljava/util/List;

    invoke-virtual {p0, p1, v3}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/XPath2NodeFilter;->rooted(Lorg/w3c/dom/Node;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method rooted(Lorg/w3c/dom/Node;Ljava/util/List;)Z
    .locals 6

    const/4 v2, 0x0

    move v1, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    return v2

    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/NodeList;

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    move v3, v2

    :goto_1
    if-lt v3, v4, :cond_1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->isDescendantOrSelf(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v5

    if-nez v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method
