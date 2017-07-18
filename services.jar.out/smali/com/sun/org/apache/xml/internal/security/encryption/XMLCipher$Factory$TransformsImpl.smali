.class Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$TransformsImpl;
.super Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;
.source "Unknown"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransformsImpl"
.end annotation


# instance fields
.field private final synthetic this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)V
    .locals 1

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;-><init>(Lorg/w3c/dom/Document;)V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$TransformsImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Lorg/w3c/dom/Document;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;-><init>(Lorg/w3c/dom/Document;)V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$TransformsImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Lorg/w3c/dom/Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/InvalidTransformException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    const-string/jumbo v0, ""

    invoke-direct {p0, p2, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$TransformsImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    return-void
.end method


# virtual methods
.method public getBaseNamespace()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://www.w3.org/2001/04/xmlenc#"

    return-object v0
.end method

.method public getDSTransforms()Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;
    .locals 0

    return-object p0
.end method

.method public toElement()Lorg/w3c/dom/Element;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$TransformsImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    goto :goto_0
.end method
