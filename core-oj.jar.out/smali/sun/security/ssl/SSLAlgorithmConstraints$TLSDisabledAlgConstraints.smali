.class Lsun/security/ssl/SSLAlgorithmConstraints$TLSDisabledAlgConstraints;
.super Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;
.source "SSLAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TLSDisabledAlgConstraints"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string/jumbo v0, "jdk.tls.disabledAlgorithms"

    invoke-direct {p0, v0}, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected decomposes(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v3, "SSL_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "TLS_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lsun/security/ssl/CipherSuite;->valueOf(Ljava/lang/String;)Lsun/security/ssl/CipherSuite;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;->decomposes(Lsun/security/ssl/CipherSuite$KeyExchange;Z)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    if-eqz v3, :cond_2

    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->cipher:Lsun/security/ssl/CipherSuite$BulkCipher;

    invoke-virtual {p0, v3}, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;->decomposes(Lsun/security/ssl/CipherSuite$BulkCipher;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->macAlg:Lsun/security/ssl/CipherSuite$MacAlg;

    invoke-virtual {p0, v3}, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;->decomposes(Lsun/security/ssl/CipherSuite$MacAlg;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_3
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;->decomposes(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    return-object v3
.end method
