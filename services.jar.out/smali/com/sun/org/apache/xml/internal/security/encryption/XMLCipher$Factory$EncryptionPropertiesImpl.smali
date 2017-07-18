.class Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperties;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptionPropertiesImpl"
.end annotation


# instance fields
.field private encryptionProperties:Ljava/util/List;

.field private id:Ljava/lang/String;

.field private final synthetic this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;->encryptionProperties:Ljava/util/List;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;->encryptionProperties:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addEncryptionProperty(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperty;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;->encryptionProperties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getEncryptionProperties()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;->encryptionProperties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;->id:Ljava/lang/String;

    return-object v0
.end method

.method public removeEncryptionProperty(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionProperty;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;->encryptionProperties:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;->id:Ljava/lang/String;

    return-void
.end method

.method toElement()Lorg/w3c/dom/Element;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v2, "EncryptionProperties"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;->getEncryptionProperties()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_0
    const-string/jumbo v0, "Id"

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertiesImpl;->id:Ljava/lang/String;

    invoke-interface {v1, v3, v0, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertyImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionPropertyImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1
.end method
