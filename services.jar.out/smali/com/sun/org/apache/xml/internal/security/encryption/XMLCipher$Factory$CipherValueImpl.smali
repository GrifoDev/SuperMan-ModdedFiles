.class Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherValueImpl;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CipherValueImpl"
.end annotation


# instance fields
.field private cipherValue:Ljava/lang/String;

.field private final synthetic this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherValueImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherValueImpl;->cipherValue:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherValueImpl;->cipherValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherValueImpl;->cipherValue:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherValueImpl;->cipherValue:Ljava/lang/String;

    return-void
.end method

.method toElement()Lorg/w3c/dom/Element;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherValueImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v1, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v2, "CipherValue"

    invoke-static {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherValueImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherValueImpl;->cipherValue:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
.end method
