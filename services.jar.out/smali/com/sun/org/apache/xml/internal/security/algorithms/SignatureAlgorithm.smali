.class public Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;
.super Lcom/sun/org/apache/xml/internal/security/algorithms/Algorithm;
.source "Unknown"


# static fields
.field static _algorithmHash:Ljava/util/HashMap;

.field static _alreadyInitialized:Z

.field static synthetic class$com$sun$org$apache$xml$internal$security$algorithms$SignatureAlgorithm:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field protected _signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->class$com$sun$org$apache$xml$internal$security$algorithms$SignatureAlgorithm:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->class$com$sun$org$apache$xml$internal$security$algorithms$SignatureAlgorithm:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->log:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_alreadyInitialized:Z

    sput-object v1, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_algorithmHash:Ljava/util/HashMap;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.algorithms.SignatureAlgorithm"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->class$com$sun$org$apache$xml$internal$security$algorithms$SignatureAlgorithm:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/algorithms/Algorithm;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    :try_start_0
    invoke-static {p2}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->getImplementingClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    return-void

    :cond_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v4, "Create URI \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "\" class \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v3, "algorithms.NoSuchAlgorithm"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v3, "algorithms.NoSuchAlgorithm"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2

    :catch_2
    move-exception v0

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v3, "algorithms.NoSuchAlgorithm"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p3}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineSetHMACOutputLength(I)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/implementations/IntegrityHmac;->engineAddContextToElement(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/algorithms/Algorithm;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->getURI()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->getImplementingClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineGetContextFromElement(Lorg/w3c/dom/Element;)V

    return-void

    :cond_0
    sget-object v2, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v5, "Create URI \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "\" class \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v3, "algorithms.NoSuchAlgorithm"

    invoke-direct {v1, v3, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v3, "algorithms.NoSuchAlgorithm"

    invoke-direct {v1, v3, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v1

    :catch_2
    move-exception v0

    new-array v2, v8, [Ljava/lang/Object;

    aput-object v1, v2, v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v7

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v3, "algorithms.NoSuchAlgorithm"

    invoke-direct {v1, v3, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

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

.method private static getImplementingClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_algorithmHash:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_algorithmHash:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public static providerInit()V
    .locals 3

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->log:Ljava/util/logging/Logger;

    if-eqz v0, :cond_0

    :goto_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    sget-boolean v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_alreadyInitialized:Z

    if-eqz v0, :cond_3

    :goto_2
    return-void

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->class$com$sun$org$apache$xml$internal$security$algorithms$SignatureAlgorithm:Ljava/lang/Class;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->class$com$sun$org$apache$xml$internal$security$algorithms$SignatureAlgorithm:Ljava/lang/Class;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->log:Ljava/util/logging/Logger;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.algorithms.SignatureAlgorithm"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->class$com$sun$org$apache$xml$internal$security$algorithms$SignatureAlgorithm:Ljava/lang/Class;

    goto :goto_3

    :cond_2
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Init() called"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_algorithmHash:Ljava/util/HashMap;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_alreadyInitialized:Z

    goto :goto_2
.end method

.method public static register(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/AlgorithmAlreadyRegisteredException;,
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    invoke-static {p0}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->getImplementingClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :try_start_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_algorithmHash:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "Try to register "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object v0, v1, v5

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/exceptions/AlgorithmAlreadyRegisteredException;

    const-string/jumbo v2, "algorithm.alreadyRegistered"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/exceptions/AlgorithmAlreadyRegisteredException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :catch_0
    move-exception v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v3, "algorithms.NoSuchAlgorithm"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v0

    new-array v1, v6, [Ljava/lang/Object;

    aput-object p0, v1, v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v3, "algorithms.NoSuchAlgorithm"

    invoke-direct {v2, v3, v1, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v2
.end method


# virtual methods
.method public getBaseLocalName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "SignatureMethod"

    return-object v0
.end method

.method public getBaseNamespace()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    return-object v0
.end method

.method public getJCEAlgorithmString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineGetJCEAlgorithmString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJCEProviderName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineGetJCEProviderName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getURI()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "Algorithm"

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initSign(Ljava/security/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineInitSign(Ljava/security/Key;)V

    return-void
.end method

.method public initSign(Ljava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineInitSign(Ljava/security/Key;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public initSign(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineInitSign(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method public initVerify(Ljava/security/Key;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineInitVerify(Ljava/security/Key;)V

    return-void
.end method

.method public setParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V

    return-void
.end method

.method public sign()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineSign()[B

    move-result-object v0

    return-object v0
.end method

.method public update(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineUpdate(B)V

    return-void
.end method

.method public update([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineUpdate([B)V

    return-void
.end method

.method public update([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineUpdate([BII)V

    return-void
.end method

.method public verify([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->_signatureAlgorithm:Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithmSpi;->engineVerify([B)Z

    move-result v0

    return v0
.end method
