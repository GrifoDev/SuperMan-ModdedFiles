.class public Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;
.super Ljava/lang/Object;
.source "XMLCreator.java"


# instance fields
.field dBuilder:Ljavax/xml/parsers/DocumentBuilder;

.field dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

.field document:Lorg/w3c/dom/Document;

.field dom:Ljavax/xml/transform/dom/DOMSource;

.field result:Ljavax/xml/transform/stream/StreamResult;

.field stringWriter:Ljava/io/StringWriter;

.field tf:Ljavax/xml/transform/TransformerFactory;

.field transformer:Ljavax/xml/transform/Transformer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->tf:Ljavax/xml/transform/TransformerFactory;

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->transformer:Ljavax/xml/transform/Transformer;

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dom:Ljavax/xml/transform/dom/DOMSource;

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->result:Ljavax/xml/transform/stream/StreamResult;

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    return-void
.end method


# virtual methods
.method public createAuthenticationData(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getClientID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "ClientID"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getClientID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "AuthenticationCodeMAC"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object p1, v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getIterationCount()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "IterationCount"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getIterationCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMac()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "Mac"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMacAlgo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "MacAlgorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMacAlgo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getNonce()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "Nonce"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    return-void
.end method

.method public createAuthenticationData(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "AuthenticationData"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object p1, v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getIterationCount()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "IterationCount"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getIterationCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMac()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "Mac"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMacAlgo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "MacAlgorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMacAlgo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getNonce()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "Nonce"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    return-void
.end method

.method public createAuthenticationData(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getClientID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "ClientID"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getClientID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "AuthenticationCodeMAC"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object p1, v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getIterationCount()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "IterationCount"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getIterationCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMac()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "Mac"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMacAlgo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "MacAlgorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getMacAlgo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getNonce()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v3, "Nonce"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;->getAuthenticationCodeMAC()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->getNonce()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    return-void
.end method

.method public createDSKPPKeyContainer(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v5, "EncryptionKey"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->getX509Data()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v5, "X509Data"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDS()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v5, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v6, "X509Certificate"

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDS()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->getX509Data()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->getX509Certificate()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->getEncryptionKeyType()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v5, "KeyName"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDS()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->getEncryptionKeyType()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->getDerivedKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "http://www.w3.org/2009/xmlsec-derivedkey#"

    const-string/jumbo v5, "DerivedKey"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDkey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeyInfoEncryption()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyInfoEncryption;->getDerivedKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createDerivedKey(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V

    :cond_2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v5, "MACMethod"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getShaAlgo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "Algorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getShaAlgo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v5, "MACKey"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getCipherAlgo()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v5, "EncryptionMethod"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    const-string/jumbo v3, "Algorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getCipherAlgo()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getCipherData()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v5, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v6, "CipherData"

    invoke-interface {v4, v5, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v5, "CipherValue"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getMacMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACMethod;->getCipherData()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_7
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v5, "KeyPackage"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v5, "DeviceInfo"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-virtual {p0, v2, p3, v3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createDeviceInfo(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;)V

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_8
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v4, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v5, "Key"

    invoke-interface {v3, v4, v5}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    const-string/jumbo v4, "Id"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "Algorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;

    invoke-virtual {p0, v2, p3, v3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createKey(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;)V

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public createDerivedKey(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;->getKeyDerivationMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "http://www.w3.org/2009/xmlsec-derivedkey#"

    const-string/jumbo v4, "KeyDerivationMethod"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    const-string/jumbo v2, "dKey"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;->getKeyDerivationMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Algorithm"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;->getKeyDerivationMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;->getKeyDerivationMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->getPBKDFParams()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "http://www.rsasecurity.com/rsalabs/pkcs/schemas/pkcs-5v2-0#"

    const-string/jumbo v4, "PBKDF2-Params"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPkcs5()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/DerivedKey;->getKeyDerivationMethod()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/KeyDerivationMethod;->getPBKDFParams()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;

    move-result-object v2

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createPBKDFParams(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    return-void
.end method

.method public createDeviceInfo(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "Manufacturer"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "SerialNo"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "Model"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "DeviceBinding"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "StartDate"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "ExpiryDate"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "UserId"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    return-void
.end method

.method public createDeviceInfo(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "Manufacturer"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "SerialNo"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "Model"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "DeviceBinding"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "StartDate"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "ExpiryDate"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "UserId"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    return-void
.end method

.method public createDeviceInfo(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "Manufacturer"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "SerialNo"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getSerialNo()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "Model"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "DeviceBinding"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getDeviceBinding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "StartDate"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getStartDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "ExpiryDate"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getExpiryDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "UserId"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;->getUserID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    return-void
.end method

.method public createKey(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getIssuer()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "Issuer"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getIssuer()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "AlgorithmParameters"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getSuite()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "Suite"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getSuite()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "ResponseFormat"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    const-string/jumbo v5, "Length"

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getLength()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "Encoding"

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    move-result-object v6

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getAlgorithmParameter()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AlgorithmParameter;->getResponseFormat()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->getEncoding()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ResponseFormat;->encodingToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "Data"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "Secret"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "EncryptedValue"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v7, "EncryptionMethod"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    const-string/jumbo v5, "Algorithm"

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->getCipherData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v7, "CipherData"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v7, "CipherValue"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getEncryptedValue()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/EncryptedType;->getCipherData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/CipherData;->getCipherValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_4
    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getValueMAC()[B

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "ValueMAC"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getStructuredData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/StructureData;->getValueMAC()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_7
    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "Counter"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "PlainValue"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {v1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Data;->getCounter()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v2, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_8
    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v6, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v7, "Policy"

    invoke-interface {v5, v6, v7}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;->getKey()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyType;->getPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;

    move-result-object v5

    invoke-virtual {p0, v2, v5, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createPolicy(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_9
    return-void
.end method

.method public createKeyProvClientHelloXML(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const/4 v12, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v8}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-interface {v8, p2}, Lorg/w3c/dom/Document;->setXmlVersion(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "KeyProvClientHello"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-interface {v8, v5}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "http://www.w3.org/2000/xmlns/"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "xmlns:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "urn:ietf:params:xml:ns:keyprov:dskpp"

    invoke-interface {v5, v8, v9, v10}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "http://www.w3.org/2000/xmlns/"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "xmlns:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "urn:ietf:params:xml:ns:keyprov:pskc"

    invoke-interface {v5, v8, v9, v10}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixXENC()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "http://www.w3.org/2000/xmlns/"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "xmlns:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixXENC()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "http://www.w3.org/2001/04/xmlenc#"

    invoke-interface {v5, v8, v9, v10}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDS()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "http://www.w3.org/2000/xmlns/"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "xmlns:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDS()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "http://www.w3.org/2000/09/xmldsig#"

    invoke-interface {v5, v8, v9, v10}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPKCS5()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "http://www.w3.org/2000/xmlns/"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "xmlns:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixPKCS5()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "http://www.rsasecurity.com/rsalabs/pkcs/schemas/pkcs-5v2-0#"

    invoke-interface {v5, v8, v9, v10}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string/jumbo v8, "Version"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getVersion()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v8, v9}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "DeviceIdentifierData"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "DeviceId"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createDeviceInfo(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;)V

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_5
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getKeyID()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "KeyID"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getKeyID()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v5, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedKeyTypes()Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "SupportedKeyTypes"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedKeyTypes()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedKeyTypes()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "Algorithm"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedKeyTypes()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v9, v8}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    invoke-interface {v5, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_9
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedEncryptionAlgorithms()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "SupportedEncryptionAlgorithms"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "Algorithm"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedEncryptionAlgorithms()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_a
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedMacAlgorithms()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "SupportedMacAlgorithms"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "Algorithm"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedMacAlgorithms()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_b
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "SupportedProtocolVariants"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getSupportedProtocolVariant()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getSupportedKeyProtectionMethod()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "SupportedKeyProtectionMethod"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getSupportedKeyProtectionMethod()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_c
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getX509Data()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    move-result-object v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "Payload"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v10, "KeyInfo"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDS()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v10, "X509Data"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDS()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v10, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v11, "X509Certificate"

    invoke-interface {v9, v10, v11}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDS()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getX509Data()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;->getX509Certificate()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_d
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getKeyInfo()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    move-result-object v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "Payload"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v10, "KeyInfo"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDS()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v10, "KeyName"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDS()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->getKeyInfo()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v6}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_e
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_f
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedKeyPackageFormat()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "SupportedKeyPackages"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "KeyPackageFormat"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getSupportedKeyPackageFormat()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v5}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_10
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v10, "AuthenticationData"

    invoke-interface {v8, v9, v10}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createAuthenticationData(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;)V

    invoke-interface {v5, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_11
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->tf:Ljavax/xml/transform/TransformerFactory;

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->tf:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v8}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->transformer:Ljavax/xml/transform/Transformer;

    new-instance v8, Ljavax/xml/transform/dom/DOMSource;

    iget-object v9, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-direct {v8, v9}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dom:Ljavax/xml/transform/dom/DOMSource;

    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    iput-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    new-instance v8, Ljavax/xml/transform/stream/StreamResult;

    iget-object v9, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    invoke-direct {v8, v9}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    iput-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->result:Ljavax/xml/transform/stream/StreamResult;

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->transformer:Ljavax/xml/transform/Transformer;

    iget-object v9, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dom:Ljavax/xml/transform/dom/DOMSource;

    iget-object v10, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->result:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v8, v9, v10}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    invoke-virtual {v8}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    :catch_0
    move-exception v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "XMLCreator::createKeyProvClientHelloXML: unable to create it - Transformer Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    return-object v12

    :catch_1
    move-exception v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "XMLCreator::createKeyProvClientHelloXML: unable to create it - TransformerConfiguration Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    return-object v12

    :catch_2
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "XMLCreator::createKeyProvClientHelloXML: unable to create it - ParserConfiguration Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    return-object v12
.end method

.method public createKeyProvServerFinishedXML(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-interface {v7, p2}, Lorg/w3c/dom/Document;->setXmlVersion(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v9, "KeyProvServerFinished"

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-interface {v7, v4}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:dskpp"

    invoke-interface {v4, v7, v8, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "urn:ietf:params:xml:ns:keyprov:pskc"

    invoke-interface {v4, v7, v8, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixXENC()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "http://www.w3.org/2001/04/xmlenc#"

    invoke-interface {v4, v7, v8, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDS()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDS()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "http://www.w3.org/2000/09/xmldsig#"

    invoke-interface {v4, v7, v8, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDkey()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDkey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "http://www.w3.org/2009/xmlsec-derivedkey#"

    invoke-interface {v4, v7, v8, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPkcs5()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "http://www.w3.org/2000/xmlns/"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPkcs5()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "http://www.rsasecurity.com/rsalabs/pkcs/schemas/pkcs-5v2-0#"

    invoke-interface {v4, v7, v8, v9}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string/jumbo v7, "Version"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "Status"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getStatus()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "SessionID"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getSessionId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v9, "KeyPackage"

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getServerId()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v9, "serverId"

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getServerId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v5, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-result-object v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v9, "KeyContainer"

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    const-string/jumbo v7, "Version"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getVersion()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v7, "Id"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;->getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;

    move-result-object v7

    invoke-virtual {p0, v3, v7, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createDSKPPKeyContainer(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V

    :cond_7
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getMACType()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v9, "Mac"

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    const-string/jumbo v7, "MacAlgorithm"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getMACType()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;->getAlgorithm()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getMACType()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;->getMac()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_8
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v9, "AuthenticationData"

    invoke-interface {v7, v8, v9}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createAuthenticationData(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V

    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_9
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->tf:Ljavax/xml/transform/TransformerFactory;

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->tf:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v7}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->transformer:Ljavax/xml/transform/Transformer;

    new-instance v7, Ljavax/xml/transform/dom/DOMSource;

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-direct {v7, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dom:Ljavax/xml/transform/dom/DOMSource;

    new-instance v7, Ljava/io/StringWriter;

    invoke-direct {v7}, Ljava/io/StringWriter;-><init>()V

    iput-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    new-instance v7, Ljavax/xml/transform/stream/StreamResult;

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    invoke-direct {v7, v8}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    iput-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->result:Ljavax/xml/transform/stream/StreamResult;

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->transformer:Ljavax/xml/transform/Transformer;

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dom:Ljavax/xml/transform/dom/DOMSource;

    iget-object v9, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->result:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v7, v8, v9}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    invoke-virtual {v7}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "XMLCreator::createKeyProvServerFinishedXML: unable to create it - Transformer Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    return-object v10

    :catch_1
    move-exception v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "XMLCreator::createKeyProvServerFinishedXML: unable to create it - TransformerConfiguration Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    return-object v10

    :catch_2
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "XMLCreator::createKeyProvServerFinishedXML: unable to create it - ParserConfiguration Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    return-object v10
.end method

.method public createKeyProvTriggerXML(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dbf:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dBuilder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-interface {v6, p2}, Lorg/w3c/dom/Document;->setXmlVersion(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v8, "KeyProvTrigger"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-interface {v6, v4}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "http://www.w3.org/2000/xmlns/"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmlns:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:dskpp"

    invoke-interface {v4, v6, v7, v8}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "http://www.w3.org/2000/xmlns/"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "xmlns:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "urn:ietf:params:xml:ns:keyprov:pskc"

    invoke-interface {v4, v6, v7, v8}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v6, "Version"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getVersion()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v8, "InitializationTrigger"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object v4, v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v8, "DeviceIdentifierData"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Node;->setPrefix(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v8, "DeviceId"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createDeviceInfo(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;)V

    invoke-interface {v4}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getKeyID()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v8, "KeyID"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getKeyID()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getTokenPlatformInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    move-result-object v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v8, "TokenPlatformInfo"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getTokenPlatformInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->getKeyLocation()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "KeyLocation"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getTokenPlatformInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->getKeyLocation()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getTokenPlatformInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->getAlgoLocation()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "AlgorithmLocation"

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getTokenPlatformInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->getAlgoLocation()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v8, "AuthenticationData"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p0, v3, p1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createAuthenticationData(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;)V

    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_7
    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getServerURL()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v7, "urn:ietf:params:xml:ns:keyprov:dskpp"

    const-string/jumbo v8, "ServerUrl"

    invoke-interface {v6, v7, v8}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getPrefixDSKPP()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->getServerURL()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v4, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_8
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->tf:Ljavax/xml/transform/TransformerFactory;

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->tf:Ljavax/xml/transform/TransformerFactory;

    invoke-virtual {v6}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->transformer:Ljavax/xml/transform/Transformer;

    new-instance v6, Ljavax/xml/transform/dom/DOMSource;

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-direct {v6, v7}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dom:Ljavax/xml/transform/dom/DOMSource;

    new-instance v6, Ljava/io/StringWriter;

    invoke-direct {v6}, Ljava/io/StringWriter;-><init>()V

    iput-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    new-instance v6, Ljavax/xml/transform/stream/StreamResult;

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    invoke-direct {v6, v7}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    iput-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->result:Ljavax/xml/transform/stream/StreamResult;

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->transformer:Ljavax/xml/transform/Transformer;

    iget-object v7, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->dom:Ljavax/xml/transform/dom/DOMSource;

    iget-object v8, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->result:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v6, v7, v8}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    iget-object v6, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->stringWriter:Ljava/io/StringWriter;

    invoke-virtual {v6}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    return-object v5

    :catch_0
    move-exception v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "XMLCreator::createKeyProvTriggerXML: unable to create it - Transformer Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljavax/xml/transform/TransformerException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    return-object v9

    :catch_1
    move-exception v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "XMLCreator::createKeyProvTriggerXML: unable to create it - TransformerConfiguration Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljavax/xml/transform/TransformerConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    return-object v9

    :catch_2
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "XMLCreator::CreateXML: unable to create it - ParserConfiguration Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljavax/xml/parsers/ParserConfigurationException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    return-object v9
.end method

.method public createPBKDFParams(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->getSalt()[B

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "Salt"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "Specified"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->getSalt()[B

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->byteToStringSalt([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->getIterationCount()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "IterationCount"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->getIterationCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->getKeyLength()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "KeyLength"

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/encryptionkey/PBKDF2Params;->getKeyLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    return-void
.end method

.method public createPinPolicy(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v2, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v3, "PinPolicy"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PinEncoding"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinKeyID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "PinKeyID"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinKeyID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinUsageMode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "PinUsageMode"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getPinUsageMode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMaxFailedAttempts()I

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "MaxFailedAttempts"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMaxFailedAttempts()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMaxLength()I

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "MaxFailedAttempts"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMinLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMinLength()I

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "MaxFailedAttempts"

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;->getMinLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public createPolicy(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getStartDate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v4, "StartDate"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getStartDate()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getExpiryDate()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v4, "ExpiryDate"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getExpiryDate()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getNoOfTransactions()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v4, "NumberOfTransactions"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getNoOfTransactions()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getKeyUsage()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getKeyUsage()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    const-string/jumbo v3, "urn:ietf:params:xml:ns:keyprov:pskc"

    const-string/jumbo v4, "KeyUsage"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->getPrefixPSKC()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->setPrefix(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->document:Lorg/w3c/dom/Document;

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getKeyUsage()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;

    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/common/OTPEnums$KeyUsage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getPinPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/Policy;->getPinPolicy()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLCreator;->createPinPolicy(Lorg/w3c/dom/Element;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/PinPolicy;Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;)V

    :cond_4
    return-void
.end method
