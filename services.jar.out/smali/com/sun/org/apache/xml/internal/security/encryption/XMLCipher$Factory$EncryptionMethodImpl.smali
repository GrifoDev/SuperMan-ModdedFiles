.class Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/encryption/EncryptionMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptionMethodImpl"
.end annotation


# instance fields
.field private algorithm:Ljava/lang/String;

.field private encryptionMethodInformation:Ljava/util/List;

.field private keySize:I

.field private oaepParams:[B

.field private final synthetic this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->algorithm:Ljava/lang/String;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->keySize:I

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->oaepParams:[B

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->encryptionMethodInformation:Ljava/util/List;

    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/URI;

    invoke-direct {v0, p2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->algorithm:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->encryptionMethodInformation:Ljava/util/List;

    return-void

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addEncryptionMethodInformation(Lorg/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->encryptionMethodInformation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getEncryptionMethodInformation()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->encryptionMethodInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getKeySize()I
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->keySize:I

    return v0
.end method

.method public getOAEPparams()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->oaepParams:[B

    return-object v0
.end method

.method public removeEncryptionMethodInformation(Lorg/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->encryptionMethodInformation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setKeySize(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->keySize:I

    return-void
.end method

.method public setOAEPparams([B)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->oaepParams:[B

    return-void
.end method

.method toElement()Lorg/w3c/dom/Element;
    .locals 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v2, "EncryptionMethod"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    const-string/jumbo v0, "Algorithm"

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->algorithm:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v0, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->keySize:I

    if-gtz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->oaepParams:[B

    if-nez v0, :cond_1

    :goto_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->encryptionMethodInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v2, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v3, "KeySize"

    invoke-static {v0, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v2

    iget v3, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->keySize:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v2, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v3, "OAEPparams"

    invoke-static {v0, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->oaepParams:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$EncryptionMethodImpl;->encryptionMethodInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2
.end method
