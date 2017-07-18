.class Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Serializer"
.end annotation


# instance fields
.field private final synthetic this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;


# direct methods
.method constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    return-void
.end method


# virtual methods
.method canonSerialize(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$100(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->setWriter(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$100(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->notReset()V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$100(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizeSubtree(Lorg/w3c/dom/Node;)[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method deserialize(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DocumentFragment;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v1, 0x0

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v0, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><fragment"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object v5, p2

    :goto_0
    if-nez v5, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "fragment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    const-string/jumbo v2, "http://xml.org/sax/features/namespaces"

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/StringReader;

    invoke-direct {v3, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    :goto_1
    if-nez v1, :cond_9

    return-object v2

    :cond_0
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    if-nez v7, :cond_1

    move v0, v1

    :goto_2
    move v4, v1

    :goto_3
    if-lt v4, v0, :cond_2

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_0

    :cond_1
    invoke-interface {v7}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-interface {v7, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move-object v2, p2

    :goto_4
    if-ne v2, v5, :cond_5

    move v2, v1

    :goto_5
    if-eqz v2, :cond_8

    :goto_6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_3

    :cond_4
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v9, "xmlns"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_6

    :cond_5
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    if-nez v9, :cond_7

    :cond_6
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_4

    :cond_7
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    if-eqz v9, :cond_6

    move v2, v3

    goto :goto_5

    :cond_8
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v9, "=\""

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v8, "\""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_9
    :try_start_1
    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v2, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method serialize(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->canonSerialize(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method serialize(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->canonSerialize(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method serialize(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$100(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->setWriter(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$100(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->notReset()V

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    const-string/jumbo v0, "UTF-8"

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$100(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v2

    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizeSubtree(Lorg/w3c/dom/Node;)[B

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
