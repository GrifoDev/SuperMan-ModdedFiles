.class public Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;
.super Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;
.source "Unknown"

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/keys/content/KeyInfoContent;


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$keys$content$X509Data:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->class$com$sun$org$apache$xml$internal$security$keys$content$X509Data:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->class$com$sun$org$apache$xml$internal$security$keys$content$X509Data:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.keys.content.X509Data"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->class$com$sun$org$apache$xml$internal$security$keys$content$X509Data:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    move v0, v2

    :goto_0
    if-nez v1, :cond_0

    if-nez v0, :cond_8

    return-void

    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v2, :cond_1

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v4, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "Found a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " element in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, "X509Data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->addUnknownElement(Lorg/w3c/dom/Element;)V

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string/jumbo v5, "X509IssuerSerial"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "X509SKI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "X509SubjectName"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string/jumbo v5, "X509Certificate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string/jumbo v5, "X509CRL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v4, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "Found a "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, " element in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string/jumbo v7, "X509Data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->addUnknownElement(Lorg/w3c/dom/Element;)V

    goto :goto_1

    :cond_3
    new-instance v4, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;

    invoke-direct {v4, v0, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;)V

    goto :goto_1

    :cond_4
    new-instance v4, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    invoke-direct {v4, v0, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;)V

    goto :goto_1

    :cond_5
    new-instance v4, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;

    invoke-direct {v4, v0, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;)V

    goto :goto_1

    :cond_6
    new-instance v4, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;

    invoke-direct {v4, v0, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;)V

    goto/16 :goto_1

    :cond_7
    new-instance v4, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509CRL;

    invoke-direct {v4, v0, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509CRL;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509CRL;)V

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "Elements"

    aput-object v1, v0, v3

    const-string/jumbo v1, "X509Data"

    aput-object v1, v0, v2

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "xml.WrongContent"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
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
.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509CRL;)V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;)V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;)V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;)V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;)V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public addCRL([B)V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509CRL;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509CRL;-><init>(Lorg/w3c/dom/Document;[B)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509CRL;)V

    return-void
.end method

.method public addCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;-><init>(Lorg/w3c/dom/Document;Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;)V

    return-void
.end method

.method public addCertificate([B)V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;-><init>(Lorg/w3c/dom/Document;[B)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;)V

    return-void
.end method

.method public addIssuerSerial(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;)V

    return-void
.end method

.method public addIssuerSerial(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;)V

    return-void
.end method

.method public addIssuerSerial(Ljava/lang/String;Ljava/math/BigInteger;)V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1, p2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;)V

    return-void
.end method

.method public addSKI(Ljava/security/cert/X509Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;-><init>(Lorg/w3c/dom/Document;Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;)V

    return-void
.end method

.method public addSKI([B)V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;-><init>(Lorg/w3c/dom/Document;[B)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;)V

    return-void
.end method

.method public addSubjectName(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;)V

    return-void
.end method

.method public addSubjectName(Ljava/security/cert/X509Certificate;)V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;-><init>(Lorg/w3c/dom/Document;Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;)V

    return-void
.end method

.method public addUnknownElement(Lorg/w3c/dom/Element;)V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public containsCRL()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->lengthCRL()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsCertificate()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->lengthCertificate()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsIssuerSerial()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->lengthIssuerSerial()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsSKI()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->lengthSKI()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsSubjectName()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->lengthSubjectName()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsUnknownElement()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->lengthUnknownElement()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBaseLocalName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "X509Data"

    return-object v0
.end method

.method public itemCRL(I)Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509CRL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v1, "X509CRL"

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509CRL;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509CRL;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-object v1
.end method

.method public itemCertificate(I)Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v1, "X509Certificate"

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509Certificate;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-object v1
.end method

.method public itemIssuerSerial(I)Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v1, "X509IssuerSerial"

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509IssuerSerial;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-object v1
.end method

.method public itemSKI(I)Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v1, "X509SKI"

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SKI;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-object v1
.end method

.method public itemSubjectName(I)Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const-string/jumbo v1, "X509SubjectName"

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/x509/XMLX509SubjectName;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-object v1
.end method

.method public itemUnknownElement(I)Lorg/w3c/dom/Element;
    .locals 4

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "itemUnknownElement not implemented:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public lengthCRL()I
    .locals 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v1, "X509CRL"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lengthCertificate()I
    .locals 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v1, "X509Certificate"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lengthIssuerSerial()I
    .locals 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v1, "X509IssuerSerial"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lengthSKI()I
    .locals 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v1, "X509SKI"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lengthSubjectName()I
    .locals 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v1, "X509SubjectName"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lengthUnknownElement()I
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    :goto_0
    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    :cond_1
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
