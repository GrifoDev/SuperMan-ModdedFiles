.class public abstract Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field protected reset:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;->reset:Z

    return-void
.end method


# virtual methods
.method public engineCanonicalize([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;->engineCanonicalizeSubTree(Lorg/w3c/dom/Node;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract engineCanonicalizeSubTree(Lorg/w3c/dom/Node;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation
.end method

.method public abstract engineCanonicalizeSubTree(Lorg/w3c/dom/Node;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation
.end method

.method public abstract engineCanonicalizeXPathNodeSet(Ljava/util/Set;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation
.end method

.method public abstract engineCanonicalizeXPathNodeSet(Ljava/util/Set;Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation
.end method

.method public engineCanonicalizeXPathNodeSet(Lorg/w3c/dom/NodeList;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->convertNodelistToSet(Lorg/w3c/dom/NodeList;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;->engineCanonicalizeXPathNodeSet(Ljava/util/Set;)[B

    move-result-object v0

    return-object v0
.end method

.method public engineCanonicalizeXPathNodeSet(Lorg/w3c/dom/NodeList;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->convertNodelistToSet(Lorg/w3c/dom/NodeList;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;->engineCanonicalizeXPathNodeSet(Ljava/util/Set;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public abstract engineGetIncludeComments()Z
.end method

.method public abstract engineGetURI()Ljava/lang/String;
.end method

.method public abstract setWriter(Ljava/io/OutputStream;)V
.end method
