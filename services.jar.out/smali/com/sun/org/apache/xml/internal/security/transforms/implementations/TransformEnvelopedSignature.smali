.class public Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature;
.super Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature$EnvelopedNodeFilter;
    }
.end annotation


# static fields
.field public static final implementedTransformURI:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#enveloped-signature"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;-><init>()V

    return-void
.end method

.method private static searchSignatureElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    const/4 v2, 0x0

    move-object v1, p0

    :goto_0
    if-nez v1, :cond_1

    :cond_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_4

    return-object v1

    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "Signature"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v1, "envelopedSignatureTransformNotInSignatureElement"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected engineGetURI()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#enveloped-signature"

    return-object v0
.end method

.method protected enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->_transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature;->searchSignatureElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setExcludeNode(Lorg/w3c/dom/Node;)V

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature$EnvelopedNodeFilter;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature$EnvelopedNodeFilter;-><init>(Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformEnvelopedSignature;Lorg/w3c/dom/Node;)V

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->addNodeFilter(Lcom/sun/org/apache/xml/internal/security/signature/NodeFilter;)V

    return-object p1
.end method
