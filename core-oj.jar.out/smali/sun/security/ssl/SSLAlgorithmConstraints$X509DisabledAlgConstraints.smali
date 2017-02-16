.class Lsun/security/ssl/SSLAlgorithmConstraints$X509DisabledAlgConstraints;
.super Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;
.source "SSLAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "X509DisabledAlgConstraints"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 437
    const-string/jumbo v0, "jdk.certpath.disabledAlgorithms"

    invoke-direct {p0, v0}, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;-><init>(Ljava/lang/String;)V

    .line 436
    return-void
.end method


# virtual methods
.method protected decomposes(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;
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

    .prologue
    .line 442
    const-string/jumbo v3, "SSL_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "TLS_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 443
    :cond_0
    const/4 v0, 0x0

    .line 445
    .local v0, "cipherSuite":Lsun/security/ssl/CipherSuite;
    :try_start_0
    invoke-static {p1}, Lsun/security/ssl/CipherSuite;->valueOf(Ljava/lang/String;)Lsun/security/ssl/CipherSuite;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 450
    .end local v0    # "cipherSuite":Lsun/security/ssl/CipherSuite;
    :goto_0
    if-eqz v0, :cond_2

    .line 451
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 453
    .local v1, "components":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    if-eqz v3, :cond_1

    .line 455
    iget-object v3, v0, Lsun/security/ssl/CipherSuite;->keyExchange:Lsun/security/ssl/CipherSuite$KeyExchange;

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;->decomposes(Lsun/security/ssl/CipherSuite$KeyExchange;Z)Ljava/util/Set;

    move-result-object v3

    .line 454
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 461
    :cond_1
    return-object v1

    .line 446
    .end local v1    # "components":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v0    # "cipherSuite":Lsun/security/ssl/CipherSuite;
    :catch_0
    move-exception v2

    .local v2, "iae":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 465
    .end local v0    # "cipherSuite":Lsun/security/ssl/CipherSuite;
    .end local v2    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-super {p0, p1}, Lsun/security/ssl/SSLAlgorithmConstraints$BasicDisabledAlgConstraints;->decomposes(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    return-object v3
.end method
