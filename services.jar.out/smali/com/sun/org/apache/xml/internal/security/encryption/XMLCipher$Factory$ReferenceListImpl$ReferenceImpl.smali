.class abstract Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$ReferenceImpl;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/encryption/Reference;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ReferenceImpl"
.end annotation


# instance fields
.field private referenceInformation:Ljava/util/List;

.field private final synthetic this$2:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;

.field private uri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$ReferenceImpl;->this$2:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$ReferenceImpl;->uri:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$ReferenceImpl;->referenceInformation:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addElementRetrievalInformation(Lorg/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$ReferenceImpl;->referenceInformation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getElementRetrievalInformation()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$ReferenceImpl;->referenceInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$ReferenceImpl;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public removeElementRetrievalInformation(Lorg/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$ReferenceImpl;->referenceInformation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$ReferenceImpl;->uri:Ljava/lang/String;

    return-void
.end method

.method public abstract toElement()Lorg/w3c/dom/Element;
.end method

.method toElement(Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$ReferenceImpl;->this$2:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;->access$500(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#"

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string/jumbo v1, "URI"

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$ReferenceListImpl$ReferenceImpl;->uri:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
