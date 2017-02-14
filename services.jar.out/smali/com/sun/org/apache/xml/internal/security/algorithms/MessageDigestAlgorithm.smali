.class public Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;
.super Lcom/sun/org/apache/xml/internal/security/algorithms/Algorithm;
.source "Unknown"


# static fields
.field public static final ALGO_ID_DIGEST_NOT_RECOMMENDED_MD5:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#md5"

.field public static final ALGO_ID_DIGEST_RIPEMD160:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#ripemd160"

.field public static final ALGO_ID_DIGEST_SHA1:Ljava/lang/String; = "http://www.w3.org/2000/09/xmldsig#sha1"

.field public static final ALGO_ID_DIGEST_SHA256:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#sha256"

.field public static final ALGO_ID_DIGEST_SHA384:Ljava/lang/String; = "http://www.w3.org/2001/04/xmldsig-more#sha384"

.field public static final ALGO_ID_DIGEST_SHA512:Ljava/lang/String; = "http://www.w3.org/2001/04/xmlenc#sha512"

.field static synthetic class$com$sun$org$apache$xml$internal$security$algorithms$MessageDigestAlgorithm:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field algorithm:Ljava/security/MessageDigest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->class$com$sun$org$apache$xml$internal$security$algorithms$MessageDigestAlgorithm:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->class$com$sun$org$apache$xml$internal$security$algorithms$MessageDigestAlgorithm:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->log:Ljava/util/logging/Logger;

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.algorithms.MessageDigestAlgorithm"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->class$com$sun$org$apache$xml$internal$security$algorithms$MessageDigestAlgorithm:Ljava/lang/Class;

    goto :goto_0
.end method

.method private constructor <init>(Lorg/w3c/dom/Document;Ljava/security/MessageDigest;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lcom/sun/org/apache/xml/internal/security/algorithms/Algorithm;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->algorithm:Ljava/security/MessageDigest;

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->algorithm:Ljava/security/MessageDigest;

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

.method public static getInstance(Lorg/w3c/dom/Document;Ljava/lang/String;)Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->translateURItoJCEID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->getProviderId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v1, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;

    invoke-direct {v1, p0, v0, p1}, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;-><init>(Lorg/w3c/dom/Document;Ljava/security/MessageDigest;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v3

    new-instance v1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v2, "algorithms.NoSuchMap"

    invoke-direct {v1, v2, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1

    :cond_1
    :try_start_1
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v1, "algorithms.NoSuchAlgorithm"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0

    :catch_1
    move-exception v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v1, "algorithms.NoSuchAlgorithm"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static isEqual([B[B)Z
    .locals 1

    invoke-static {p0, p1}, Ljava/security/MessageDigest;->isEqual([B[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public digest([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v0

    return v0
.end method

.method public digest()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method public digest([B)[B
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/security/MessageDigest;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->algorithm:Ljava/security/MessageDigest;

    return-object v0
.end method

.method public getBaseLocalName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "DigestMethod"

    return-object v0
.end method

.method public getBaseNamespace()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    return-object v0
.end method

.method public getDigestLength()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method public getJCEAlgorithmString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJCEProvider()Ljava/security/Provider;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getProvider()Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public update([B)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/algorithms/MessageDigestAlgorithm;->algorithm:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
