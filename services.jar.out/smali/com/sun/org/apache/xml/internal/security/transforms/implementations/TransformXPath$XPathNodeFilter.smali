.class Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath$XPathNodeFilter;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/signature/NodeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "XPathNodeFilter"
.end annotation


# instance fields
.field prefixResolver:Lcom/sun/org/apache/xml/internal/utils/PrefixResolverDefault;

.field str:Ljava/lang/String;

.field private final synthetic this$0:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath;

.field xPathFuncHereAPI:Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;

.field xpathnode:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath;Lorg/w3c/dom/Element;Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath$XPathNodeFilter;->this$0:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath;

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathAPIHolder;->getCachedXPathAPI()Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;-><init>(Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath$XPathNodeFilter;->xPathFuncHereAPI:Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;

    iput-object p3, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath$XPathNodeFilter;->xpathnode:Lorg/w3c/dom/Node;

    iput-object p4, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath$XPathNodeFilter;->str:Ljava/lang/String;

    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/PrefixResolverDefault;

    invoke-direct {v0, p2}, Lcom/sun/org/apache/xml/internal/utils/PrefixResolverDefault;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath$XPathNodeFilter;->prefixResolver:Lcom/sun/org/apache/xml/internal/utils/PrefixResolverDefault;

    return-void
.end method


# virtual methods
.method public isNodeInclude(Lorg/w3c/dom/Node;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath$XPathNodeFilter;->xPathFuncHereAPI:Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath$XPathNodeFilter;->xpathnode:Lorg/w3c/dom/Node;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath$XPathNodeFilter;->str:Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXPath$XPathNodeFilter;->prefixResolver:Lcom/sun/org/apache/xml/internal/utils/PrefixResolverDefault;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;->eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->bool()Z
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityRuntimeException;

    const-string/jumbo v3, "signature.Transform.node"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityRuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    new-instance v2, Ljava/lang/Short;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Short;-><init>(S)V

    aput-object v2, v1, v5

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityRuntimeException;

    const-string/jumbo v3, "signature.Transform.nodeAndType"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityRuntimeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2
.end method
