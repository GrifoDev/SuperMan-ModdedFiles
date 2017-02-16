.class public Lsun/security/validator/KeyStores;
.super Ljava/lang/Object;
.source "KeyStores.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTrustedCerts(Ljava/security/KeyStore;)Ljava/util/Set;
    .locals 7
    .param p0, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 99
    .local v5, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v4

    .local v4, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 100
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 102
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 103
    .local v1, "cert":Ljava/security/cert/Certificate;
    instance-of v6, v1, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_0

    .line 104
    nop

    nop

    .end local v1    # "cert":Ljava/security/cert/Certificate;
    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 114
    .end local v0    # "alias":Ljava/lang/String;
    .end local v4    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_0
    move-exception v3

    .line 117
    :cond_1
    return-object v5

    .line 106
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v4    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->isKeyEntry(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 108
    .local v2, "certs":[Ljava/security/cert/Certificate;
    if-eqz v2, :cond_0

    array-length v6, v2

    if-lez v6, :cond_0

    .line 109
    const/4 v6, 0x0

    aget-object v6, v2, v6

    instance-of v6, v6, Ljava/security/cert/X509Certificate;

    .line 108
    if-eqz v6, :cond_0

    .line 110
    const/4 v6, 0x0

    aget-object v6, v2, v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
