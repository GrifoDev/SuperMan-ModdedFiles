.class public Lcom/sun/org/apache/xml/internal/security/signature/Manifest;
.super Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;
.source "Unknown"


# static fields
.field static synthetic class$com$sun$org$apache$xml$internal$security$signature$Manifest:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _perManifestResolvers:Ljava/util/List;

.field _references:Ljava/util/List;

.field _referencesEl:[Lorg/w3c/dom/Element;

.field _resolverProperties:Ljava/util/HashMap;

.field _signedContents:Ljava/util/List;

.field private verificationResults:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->class$com$sun$org$apache$xml$internal$security$signature$Manifest:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->class$com$sun$org$apache$xml$internal$security$signature$Manifest:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.signature.Manifest"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->class$com$sun$org$apache$xml$internal$security$signature$Manifest:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verificationResults:[Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_signedContents:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_resolverProperties:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_perManifestResolvers:Ljava/util/List;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verificationResults:[Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_signedContents:Ljava/util/List;

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_resolverProperties:Ljava/util/HashMap;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_perManifestResolvers:Ljava/util/List;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string/jumbo v2, "Reference"

    invoke-static {v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    array-length v1, v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    :goto_0
    if-lt v0, v1, :cond_1

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Reference"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string/jumbo v2, "Manifest"

    aput-object v2, v1, v0

    new-instance v0, Lorg/w3c/dom/DOMException;

    const-string/jumbo v2, "xml.WrongContent"

    invoke-static {v2, v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {v0, v2, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
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

.method private setVerificationResult(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verificationResults:[Z

    if-eqz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verificationResults:[Z

    aput-boolean p2, v0, p1

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->getLength()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verificationResults:[Z

    goto :goto_0
.end method


# virtual methods
.method public addDocument(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/signature/Manifest;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;)V

    if-nez p5, :cond_1

    :goto_1
    if-nez p6, :cond_2

    :goto_2
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-interface {v1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p5}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->setId(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0, p6}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->setType(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public addResourceResolver(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_perManifestResolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addResourceResolver(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_perManifestResolvers:Ljava/util/List;

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;

    invoke-direct {v1, p1}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;-><init>(Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolverSpi;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public generateDigestValues()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;,
            Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;
        }
    .end annotation

    const/4 v0, 0x0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->getLength()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->generateDigestValue()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getBaseLocalName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "Manifest"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "Id"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getReferencedContentAfterTransformsItem(I)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->item(I)Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getContentsAfterTransformation()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method

.method public getReferencedContentBeforeTransformsItem(I)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->item(I)Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getContentsBeforeTransformation()Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method

.method public getResolverProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_resolverProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getSignedContentItem(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->getReferencedContentAfterTransformsItem(I)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/CanonicalizationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xml/internal/security/c14n/InvalidCanonicalizerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getSignedContentLength()I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->getLength()I

    move-result v0

    return v0
.end method

.method public getVerificationResult(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v2, 0x0

    if-gez p1, :cond_1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->getLength()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v2, "signature.Verification.IndexOutOfBounds"

    invoke-static {v2, v0}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "generic.EmptyMessage"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verificationResults:[Z

    if-eqz v0, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verificationResults:[Z

    aget-boolean v0, v0, p1

    return v0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verifyReferences()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "generic.EmptyMessage"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public item(I)Lcom/sun/org/apache/xml/internal/security/signature/Reference;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    return-object v0

    :cond_1
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/signature/Manifest;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "Id"

    invoke-interface {v0, v2, v1, p1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/IdResolver;->registerElementById(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setResolverProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_resolverProperties:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public verifyReferences()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verifyReferences(Z)Z

    move-result v0

    return v0
.end method

.method public verifyReferences(Z)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;,
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    if-eqz v1, :cond_0

    :goto_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    array-length v1, v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verificationResults:[Z

    move v3, v4

    move v1, v5

    :goto_3
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    array-length v2, v2

    if-lt v3, v2, :cond_5

    return v1

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string/jumbo v2, "Reference"

    invoke-static {v1, v2}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "verify "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    array-length v6, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v6, " References"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v6, "I am "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    if-nez p1, :cond_3

    const-string/jumbo v1, "not"

    :goto_4
    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v6, " requested to follow nested Manifests"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string/jumbo v1, ""

    goto :goto_4

    :cond_4
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v8, Lcom/sun/org/apache/xml/internal/security/signature/Reference;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_referencesEl:[Lorg/w3c/dom/Element;

    aget-object v2, v2, v3

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v8, v2, v6, p0}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/signature/Manifest;)V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_references:Ljava/util/List;

    invoke-interface {v2, v3, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {v8}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->verify()Z

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->setVerificationResult(IZ)V

    if-eqz v2, :cond_7

    move v6, v1

    :goto_5
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_8

    :goto_6
    if-nez v6, :cond_9

    :cond_6
    move v2, v6

    :goto_7
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v1, v2

    goto/16 :goto_3

    :cond_7
    move v6, v4

    goto :goto_5

    :cond_8
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "The Reference has Type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v8}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v2, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->getURI()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;

    const-string/jumbo v4, "signature.Verification.Reference.NoInput"

    invoke-direct {v3, v4, v2, v1, v8}, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;Lcom/sun/org/apache/xml/internal/security/signature/Reference;)V

    throw v3

    :cond_9
    if-eqz p1, :cond_6

    :try_start_1
    invoke-virtual {v8}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->typeIsReferenceToManifest()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z
    :try_end_1
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-nez v1, :cond_b

    :goto_8
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v8, v1}, Lcom/sun/org/apache/xml/internal/security/signature/Reference;->dereferenceURIandPerformTransforms(Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getNodeSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_a
    :goto_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c

    move-object v1, v7

    :goto_a
    if-eqz v1, :cond_d

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_perManifestResolvers:Ljava/util/List;

    iput-object v2, v1, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_perManifestResolvers:Ljava/util/List;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_resolverProperties:Ljava/util/HashMap;

    iput-object v2, v1, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->_resolverProperties:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->verifyReferences(Z)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-nez v1, :cond_f

    :goto_b
    move v1, v6

    :goto_c
    move v2, v1

    goto :goto_7

    :cond_b
    :try_start_3
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v9, "We have to follow a nested Manifest"

    invoke-virtual {v1, v2, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :cond_c
    :try_start_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v5, :cond_a

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v11, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v2, v0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v11, "Manifest"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v2

    if-eqz v2, :cond_a

    :try_start_5
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;

    check-cast v1, Lorg/w3c/dom/Element;

    invoke-virtual {v9}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getSourceURI()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v2, v1, v11}, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v1, v2

    goto :goto_a

    :cond_d
    :try_start_6
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;

    const-string/jumbo v2, "empty"

    invoke-direct {v1, v2, v8}, Lcom/sun/org/apache/xml/internal/security/signature/MissingResourceFailureException;-><init>(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/signature/Reference;)V

    throw v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_1
    move-exception v1

    :try_start_7
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v3, "empty"

    invoke-direct {v2, v3, v1}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_7
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_7 .. :try_end_7} :catch_0

    :cond_e
    :try_start_8
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string/jumbo v6, "The nested Manifest was invalid (bad)"

    invoke-virtual {v1, v2, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move v1, v4

    goto :goto_c

    :cond_f
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/signature/Manifest;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v9, "The nested Manifest was valid (good)"

    invoke-virtual {v1, v2, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_b

    :catch_2
    move-exception v1

    :try_start_9
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v3, "empty"

    invoke-direct {v2, v3, v1}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_3
    move-exception v1

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;

    const-string/jumbo v3, "empty"

    invoke-direct {v2, v3, v1}, Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_9
    .catch Lcom/sun/org/apache/xml/internal/security/signature/ReferenceNotInitializedException; {:try_start_9 .. :try_end_9} :catch_0

    :catch_4
    move-exception v1

    goto/16 :goto_9
.end method
