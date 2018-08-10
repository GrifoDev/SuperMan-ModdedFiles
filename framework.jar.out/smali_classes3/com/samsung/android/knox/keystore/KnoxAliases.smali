.class public Lcom/samsung/android/knox/keystore/KnoxAliases;
.super Ljava/lang/Object;
.source "KnoxAliases.java"


# instance fields
.field private mKeyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "KnoxAndroidKeyStore"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "keyStoreType should be \"KnoxAndroidKeyStore\""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/knox/keystore/KnoxAliases;->mKeyStore:Ljava/security/KeyStore;

    return-void
.end method


# virtual methods
.method public containsAlias(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxAliases;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public containsUniquePrivateKey(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxAliases;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->containsUniquePrivateKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public list(I)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxAliases;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->list(I)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxAliases;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStore;->list(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public retrieveUniquePrivateKeyAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/keystore/KnoxAliases;->mKeyStore:Ljava/security/KeyStore;

    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->retrieveUniquePrivateKeyAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
