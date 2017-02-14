.class public Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$signature$XMLSignatureInput:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field private _MIMEType:Ljava/lang/String;

.field private _SourceURI:Ljava/lang/String;

.field _inputNodeSet:Ljava/util/Set;

.field _inputOctetStreamProxy:Ljava/io/InputStream;

.field _subNode:Lorg/w3c/dom/Node;

.field bytes:[B

.field excludeComments:Z

.field excludeNode:Lorg/w3c/dom/Node;

.field isNodeSet:Z

.field needsToBeExpanded:Z

.field nodeFilters:Ljava/util/List;

.field outputStream:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->class$com$sun$org$apache$xml$internal$security$signature$XMLSignatureInput:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->class$com$sun$org$apache$xml$internal$security$signature$XMLSignatureInput:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->class$com$sun$org$apache$xml$internal$security$signature$XMLSignatureInput:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputNodeSet:Ljava/util/Set;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_subNode:Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->excludeNode:Lorg/w3c/dom/Node;

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->excludeComments:Z

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isNodeSet:Z

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_MIMEType:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_SourceURI:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->nodeFilters:Ljava/util/List;

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->needsToBeExpanded:Z

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->outputStream:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputNodeSet:Ljava/util/Set;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_subNode:Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->excludeNode:Lorg/w3c/dom/Node;

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->excludeComments:Z

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isNodeSet:Z

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_MIMEType:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_SourceURI:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->nodeFilters:Ljava/util/List;

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->needsToBeExpanded:Z

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->outputStream:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputNodeSet:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputNodeSet:Ljava/util/Set;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_subNode:Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->excludeNode:Lorg/w3c/dom/Node;

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->excludeComments:Z

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isNodeSet:Z

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_MIMEType:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_SourceURI:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->nodeFilters:Ljava/util/List;

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->needsToBeExpanded:Z

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->outputStream:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_subNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputNodeSet:Ljava/util/Set;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_subNode:Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->excludeNode:Lorg/w3c/dom/Node;

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->excludeComments:Z

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isNodeSet:Z

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_MIMEType:Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_SourceURI:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->nodeFilters:Ljava/util/List;

    iput-boolean v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->needsToBeExpanded:Z

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->outputStream:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public addNodeFilter(Lcom/sun/org/apache/xml/internal/security/signature/NodeFilter;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isOctetStream()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->nodeFilters:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->convertToNodes()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityRuntimeException;

    const-string/jumbo v2, "signature.XMLSignatureInput.nodesetReference"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method convertToNodes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;

    invoke-direct {v1}, Lcom/sun/org/apache/xml/internal/security/utils/IgnoreAllErrorHandler;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getOctetStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->circumventBug2650(Lorg/w3c/dom/Document;)V

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_subNode:Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    return-void

    :catch_0
    move-exception v1

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string/jumbo v2, "<container>"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    const-string/jumbo v2, "</container>"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_subNode:Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getResetableInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315OmitComments;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315OmitComments;-><init>()V

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->engineCanonicalize(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    if-eqz v1, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    return-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/JavaUtils;->getBytesFromStream(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    goto :goto_0
.end method

.method public getExcludeNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->excludeNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getHTMLRepresentation()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;-><init>(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->getHTMLRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHTMLRepresentation(Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;-><init>(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/util/Set;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->getHTMLRepresentation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_MIMEType:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeFilters()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->nodeFilters:Ljava/util/List;

    return-object v0
.end method

.method public getNodeSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getNodeSet(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNodeSet(Z)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputNodeSet:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isElement()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isOctetStream()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "getNodeSet() called but no input data present"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputNodeSet:Ljava/util/Set;

    return-object v0

    :cond_1
    if-nez p1, :cond_2

    :goto_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputNodeSet:Ljava/util/Set;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_subNode:Lorg/w3c/dom/Node;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputNodeSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->excludeNode:Lorg/w3c/dom/Node;

    iget-boolean v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->excludeComments:Z

    invoke-static {v0, v1, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getSet(Lorg/w3c/dom/Node;Ljava/util/Set;Lorg/w3c/dom/Node;Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputNodeSet:Ljava/util/Set;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_subNode:Lorg/w3c/dom/Node;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getOwnerDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->circumventBug2650(Lorg/w3c/dom/Document;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->convertToNodes()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_subNode:Lorg/w3c/dom/Node;

    invoke-static {v1, v0, v3, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getSet(Lorg/w3c/dom/Node;Ljava/util/Set;Lorg/w3c/dom/Node;Z)V

    return-object v0
.end method

.method public getOctetStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getResetableInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOctetStreamReal()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    return-object v0
.end method

.method protected getResetableInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/JavaUtils;->getBytesFromStream(Ljava/io/InputStream;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "Accepted as Markable but not truly been"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    return-object v0

    :cond_4
    return-object v1

    :cond_5
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string/jumbo v2, "Mark Suported but not used as reset"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSourceURI()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_SourceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getSubNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_subNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public isByteArray()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputNodeSet:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_subNode:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isElement()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_subNode:Lorg/w3c/dom/Node;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputNodeSet:Ljava/util/Set;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isNodeSet:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isExcludeComments()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->excludeComments:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isOctetStream()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isNodeSet()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public isNeedsToBeExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->needsToBeExpanded:Z

    return v0
.end method

.method public isNodeSet()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isNodeSet:Z

    if-nez v1, :cond_2

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputNodeSet:Ljava/util/Set;

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOctetStream()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputNodeSet:Ljava/util/Set;

    if-eqz v0, :cond_3

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    if-nez v0, :cond_0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_subNode:Lorg/w3c/dom/Node;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public setExcludeComments(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->excludeComments:Z

    return-void
.end method

.method public setExcludeNode(Lorg/w3c/dom/Node;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->excludeNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public setMIMEType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_MIMEType:Ljava/lang/String;

    return-void
.end method

.method public setNeedsToBeExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->needsToBeExpanded:Z

    return-void
.end method

.method public setNodeSet(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isNodeSet:Z

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->outputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public setSourceURI(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_SourceURI:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isNodeSet()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isElement()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "XMLSignatureInput/OctetStream/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " octets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSourceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "XMLSignatureInput/NodeSet/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputNodeSet:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " nodes/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSourceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "XMLSignatureInput/Element/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_subNode:Lorg/w3c/dom/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " exclude "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->excludeNode:Lorg/w3c/dom/Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, " comments:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->excludeComments:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSourceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "XMLSignatureInput/OctetStream//"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSourceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateOutputStream(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->outputStream:Ljava/io/OutputStream;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputOctetStreamProxy:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getResetableInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_4

    return-void

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void

    :cond_2
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315OmitComments;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/Canonicalizer20010315OmitComments;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->setWriter(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xml/internal/security/c14n/implementations/CanonicalizerBase;->engineCanonicalize(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)[B

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->bytes:[B

    array-length v1, v1

    invoke-virtual {p1, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    return-void

    :cond_4
    invoke-virtual {p1, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
