.class Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CipherReferenceImpl"
.end annotation


# instance fields
.field private referenceNode:Lorg/w3c/dom/Attr;

.field private referenceTransforms:Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;

.field private referenceURI:Ljava/lang/String;

.field private final synthetic this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->referenceURI:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->referenceTransforms:Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->referenceNode:Lorg/w3c/dom/Attr;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->referenceURI:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->referenceNode:Lorg/w3c/dom/Attr;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Lorg/w3c/dom/Attr;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->referenceURI:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->referenceTransforms:Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->referenceNode:Lorg/w3c/dom/Attr;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->referenceURI:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->referenceNode:Lorg/w3c/dom/Attr;

    return-void
.end method


# virtual methods
.method public getTransforms()Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->referenceTransforms:Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->referenceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getURIAsAttr()Lorg/w3c/dom/Attr;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->referenceNode:Lorg/w3c/dom/Attr;

    return-object v0
.end method

.method public setTransforms(Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->referenceTransforms:Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;

    return-void
.end method

.method toElement()Lorg/w3c/dom/Element;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v2, "CipherReference"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string/jumbo v0, "URI"

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->referenceURI:Ljava/lang/String;

    invoke-interface {v1, v3, v0, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->referenceTransforms:Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;

    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->referenceTransforms:Lcom/sun/org/apache/xml/internal/security/encryption/Transforms;

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$TransformsImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$TransformsImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method
