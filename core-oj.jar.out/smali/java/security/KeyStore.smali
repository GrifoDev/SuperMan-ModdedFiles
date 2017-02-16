.class public Ljava/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyStore$Builder;,
        Ljava/security/KeyStore$CallbackHandlerProtection;,
        Ljava/security/KeyStore$Entry;,
        Ljava/security/KeyStore$LoadStoreParameter;,
        Ljava/security/KeyStore$PasswordProtection;,
        Ljava/security/KeyStore$PrivateKeyEntry;,
        Ljava/security/KeyStore$ProtectionParameter;,
        Ljava/security/KeyStore$SecretKeyEntry;,
        Ljava/security/KeyStore$SimpleLoadStoreParameter;,
        Ljava/security/KeyStore$TrustedCertificateEntry;
    }
.end annotation


# static fields
.field private static final KEYSTORE_TYPE:Ljava/lang/String; = "keystore.type"


# instance fields
.field private initialized:Z

.field private keyStoreSpi:Ljava/security/KeyStoreSpi;

.field private provider:Ljava/security/Provider;

.field private type:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljava/security/KeyStore;)Z
    .locals 1

    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    return v0
.end method

.method protected constructor <init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .locals 1
    .param p1, "keyStoreSpi"    # Ljava/security/KeyStoreSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    .line 611
    iput-object p1, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    .line 612
    iput-object p2, p0, Ljava/security/KeyStore;->provider:Ljava/security/Provider;

    .line 613
    iput-object p3, p0, Ljava/security/KeyStore;->type:Ljava/lang/String;

    .line 609
    return-void
.end method

.method public static final getDefaultType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 767
    new-instance v1, Ljava/security/KeyStore$1;

    invoke-direct {v1}, Ljava/security/KeyStore$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 772
    .local v0, "kstype":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 773
    const-string/jumbo v0, "jks"

    .line 775
    :cond_0
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 6
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 646
    :try_start_0
    const-string/jumbo v4, "KeyStore"

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v4, v3}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v2

    .line 647
    .local v2, "objs":[Ljava/lang/Object;
    new-instance v5, Ljava/security/KeyStore;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/security/KeyStoreSpi;

    const/4 v4, 0x1

    aget-object v4, v2, v4

    check-cast v4, Ljava/security/Provider;

    invoke-direct {v5, v3, v4, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 650
    .end local v2    # "objs":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 651
    .local v1, "nspe":Ljava/security/NoSuchProviderException;
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 648
    .end local v1    # "nspe":Ljava/security/NoSuchProviderException;
    :catch_1
    move-exception v0

    .line 649
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 691
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 692
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "missing provider"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 694
    :cond_1
    :try_start_0
    const-string/jumbo v2, "KeyStore"

    invoke-static {p0, v2, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v1

    .line 695
    .local v1, "objs":[Ljava/lang/Object;
    new-instance v4, Ljava/security/KeyStore;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/security/KeyStoreSpi;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v4, v2, v3, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 696
    .end local v1    # "objs":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 697
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 732
    if-nez p1, :cond_0

    .line 733
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "missing provider"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 735
    :cond_0
    :try_start_0
    const-string/jumbo v2, "KeyStore"

    invoke-static {p0, v2, p1}, Ljava/security/Security;->getImpl(Ljava/lang/String;Ljava/lang/String;Ljava/security/Provider;)[Ljava/lang/Object;

    move-result-object v1

    .line 736
    .local v1, "objs":[Ljava/lang/Object;
    new-instance v4, Ljava/security/KeyStore;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    check-cast v2, Ljava/security/KeyStoreSpi;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    check-cast v3, Ljava/security/Provider;

    invoke-direct {v4, v2, v3, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 737
    .end local v1    # "objs":[Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 738
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/security/KeyStoreException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public final aliases()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .prologue
    .line 1034
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_0

    .line 1035
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1037
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineAliases()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public final containsAlias(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1053
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_0

    .line 1054
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1056
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final deleteEntry(Ljava/lang/String;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1017
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_0

    .line 1018
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1020
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 1015
    return-void
.end method

.method public final entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/security/KeyStore$Entry;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1388
    .local p2, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/security/KeyStore$Entry;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1389
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1391
    :cond_1
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_2

    .line 1392
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1394
    :cond_2
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineEntryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 880
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_0

    .line 881
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1151
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_0

    .line 1152
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1154
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 847
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_0

    .line 848
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 850
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 900
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_0

    .line 901
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1317
    if-nez p1, :cond_0

    .line 1318
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1320
    :cond_0
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_1

    .line 1321
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1323
    :cond_1
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final getKey(Ljava/lang/String;[C)Ljava/security/Key;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 822
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_0

    .line 823
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .locals 1

    .prologue
    .line 785
    iget-object v0, p0, Ljava/security/KeyStore;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Ljava/security/KeyStore;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final isCertificateEntry(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1116
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_0

    .line 1117
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1119
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isKeyEntry(Ljava/lang/String;)Z
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1093
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_0

    .line 1094
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1096
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final load(Ljava/io/InputStream;[C)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1247
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 1248
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    .line 1245
    return-void
.end method

.method public final load(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 1
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1281
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1282
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    .line 1279
    return-void
.end method

.method public final setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1000
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_0

    .line 1001
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1003
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 998
    return-void
.end method

.method public final setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "entry"    # Ljava/security/KeyStore$Entry;
    .param p3, "protParam"    # Ljava/security/KeyStore$ProtectionParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1353
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1354
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "invalid null input"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1356
    :cond_1
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_2

    .line 1357
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1359
    :cond_2
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 1352
    return-void
.end method

.method public final setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "password"    # [C
    .param p4, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 933
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_0

    .line 934
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 936
    :cond_0
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_2

    .line 937
    if-eqz p4, :cond_1

    array-length v0, p4

    if-nez v0, :cond_2

    .line 938
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Private key must be accompanied by certificate chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 942
    :cond_2
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 931
    return-void
.end method

.method public final setKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 973
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_0

    .line 974
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    .line 971
    return-void
.end method

.method public final size()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1070
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_0

    .line 1071
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1073
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineSize()I

    move-result v0

    return v0
.end method

.method public final store(Ljava/io/OutputStream;[C)V
    .locals 2
    .param p1, "stream"    # Ljava/io/OutputStream;
    .param p2, "password"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1176
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_0

    .line 1177
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1179
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/io/OutputStream;[C)V

    .line 1174
    return-void
.end method

.method public final store(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 2
    .param p1, "param"    # Ljava/security/KeyStore$LoadStoreParameter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1205
    iget-boolean v0, p0, Ljava/security/KeyStore;->initialized:Z

    if-nez v0, :cond_0

    .line 1206
    new-instance v0, Ljava/security/KeyStoreException;

    const-string/jumbo v1, "Uninitialized keystore"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1208
    :cond_0
    iget-object v0, p0, Ljava/security/KeyStore;->keyStoreSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 1204
    return-void
.end method
