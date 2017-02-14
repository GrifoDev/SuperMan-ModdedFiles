.class public Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;
.super Ljava/lang/Object;
.source "Unknown"


# static fields
.field public static final ALGO_ID_C14N_EXCL_OMIT_COMMENTS:Ljava/lang/String; = "http://www.w3.org/2001/10/xml-exc-c14n#"

.field public static final ALGO_ID_C14N_EXCL_WITH_COMMENTS:Ljava/lang/String; = "http://www.w3.org/2001/10/xml-exc-c14n#WithComments"

.field public static final ALGO_ID_C14N_OMIT_COMMENTS:Ljava/lang/String; = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315"

.field public static final ALGO_ID_C14N_WITH_COMMENTS:Ljava/lang/String; = "http://www.w3.org/TR/2001/REC-xml-c14n-20010315#WithComments"

.field public static final ENCODING:Ljava/lang/String; = "UTF8"

.field public static final XPATH_C14N_WITH_COMMENTS_SINGLE_NODE:Ljava/lang/String; = "(.//. | .//@* | .//namespace::*)"

.field static _alreadyInitialized:Z

.field static _canonicalizerHash:Ljava/util/Map;


# instance fields
.field protected canonicalizerSpi:Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->_alreadyInitialized:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->_canonicalizerHash:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizerSpi:Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;

    :try_start_0
    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getImplementingClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizerSpi:Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizerSpi:Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;->reset:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException;

    const-string/jumbo v2, "signature.Canonicalizer.UnknownCanonicalizer"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method private static getImplementingClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->_canonicalizerHash:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static init()V
    .locals 2

    sget-boolean v0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->_alreadyInitialized:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->_canonicalizerHash:Ljava/util/Map;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->_alreadyInitialized:Z

    goto :goto_0
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/AlgorithmAlreadyRegisteredException;
        }
    .end annotation

    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->getImplementingClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->_canonicalizerHash:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/AlgorithmAlreadyRegisteredException;

    const-string/jumbo v2, "algorithm.alreadyRegistered"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/AlgorithmAlreadyRegisteredException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "c14n class not found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canonicalize([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const/4 v2, 0x1

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;

    invoke-direct {v2}, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;-><init>()V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizeSubtree(Lorg/w3c/dom/Node;)[B

    move-result-object v0

    return-object v0
.end method

.method public canonicalizeSubtree(Lorg/w3c/dom/Node;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizerSpi:Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;->engineCanonicalizeSubTree(Lorg/w3c/dom/Node;)[B

    move-result-object v0

    return-object v0
.end method

.method public canonicalizeSubtree(Lorg/w3c/dom/Node;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizerSpi:Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;->engineCanonicalizeSubTree(Lorg/w3c/dom/Node;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public canonicalizeXPathNodeSet(Ljava/util/Set;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizerSpi:Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;->engineCanonicalizeXPathNodeSet(Ljava/util/Set;)[B

    move-result-object v0

    return-object v0
.end method

.method public canonicalizeXPathNodeSet(Ljava/util/Set;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizerSpi:Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;->engineCanonicalizeXPathNodeSet(Ljava/util/Set;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public canonicalizeXPathNodeSet(Lorg/w3c/dom/NodeList;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizerSpi:Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;->engineCanonicalizeXPathNodeSet(Lorg/w3c/dom/NodeList;)[B

    move-result-object v0

    return-object v0
.end method

.method public canonicalizeXPathNodeSet(Lorg/w3c/dom/NodeList;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizerSpi:Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;->engineCanonicalizeXPathNodeSet(Lorg/w3c/dom/NodeList;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getImplementingCanonicalizerClass()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizerSpi:Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncludeComments()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizerSpi:Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;->engineGetIncludeComments()Z

    move-result v0

    return v0
.end method

.method public final getURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizerSpi:Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;->engineGetURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notReset()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizerSpi:Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;->reset:Z

    return-void
.end method

.method public setWriter(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizerSpi:Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizerSpi;->setWriter(Ljava/io/OutputStream;)V

    return-void
.end method
