.class public abstract Ljava/security/KeyStoreSpi;
.super Ljava/lang/Object;
.source "KeyStoreSpi.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract engineAliases()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract engineContainsAlias(Ljava/lang/String;)Z
.end method

.method public abstract engineDeleteEntry(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public engineEntryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 3
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

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-ne p2, v2, :cond_0

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-class v2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-ne p2, v2, :cond_3

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const-class v2, Ljava/security/KeyStore$SecretKeyEntry;

    if-ne p2, v2, :cond_5

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    if-nez v2, :cond_4

    move v1, v0

    :cond_4
    return v1

    :cond_5
    return v1
.end method

.method public abstract engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
.end method

.method public abstract engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
.end method

.method public abstract engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
.end method

.method public abstract engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
.end method

.method public engineGetEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    return-object v5

    :cond_0
    if-eqz p2, :cond_1

    instance-of v4, p2, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v4, :cond_2

    :cond_1
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez p2, :cond_3

    new-instance v4, Ljava/security/KeyStore$TrustedCertificateEntry;

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStore$TrustedCertificateEntry;-><init>(Ljava/security/cert/Certificate;)V

    return-object v4

    :cond_2
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    :cond_3
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v5, "trusted certificate entries are not password-protected"

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    move-object v3, p2

    check-cast v3, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v3}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v2

    :cond_5
    invoke-virtual {p0, p1, v2}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    instance-of v4, v1, Ljava/security/PrivateKey;

    if-eqz v4, :cond_6

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    new-instance v4, Ljava/security/KeyStore$PrivateKeyEntry;

    check-cast v1, Ljava/security/PrivateKey;

    invoke-direct {v4, v1, v0}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V

    return-object v4

    :cond_6
    instance-of v4, v1, Ljavax/crypto/SecretKey;

    if-eqz v4, :cond_7

    new-instance v4, Ljava/security/KeyStore$SecretKeyEntry;

    check-cast v1, Ljavax/crypto/SecretKey;

    invoke-direct {v4, v1}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    return-object v4

    :cond_7
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method public abstract engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation
.end method

.method public abstract engineIsCertificateEntry(Ljava/lang/String;)Z
.end method

.method public abstract engineIsKeyEntry(Ljava/lang/String;)Z
.end method

.method public abstract engineLoad(Ljava/io/InputStream;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x0

    if-nez p1, :cond_0

    move-object v5, v6

    check-cast v5, Ljava/io/InputStream;

    check-cast v6, [C

    invoke-virtual {p0, v5, v6}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    return-void

    :cond_0
    instance-of v5, p1, Ljava/security/KeyStore$SimpleLoadStoreParameter;

    if-eqz v5, :cond_4

    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v4

    instance-of v5, v4, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v5, :cond_2

    check-cast v4, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v4}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v3

    :cond_1
    invoke-virtual {p0, v6, v3}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    return-void

    :cond_2
    instance-of v5, v4, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v5, :cond_3

    check-cast v4, Ljava/security/KeyStore$CallbackHandlerProtection;

    invoke-virtual {v4}, Ljava/security/KeyStore$CallbackHandlerProtection;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    move-result-object v2

    new-instance v0, Ljavax/security/auth/callback/PasswordCallback;

    const-string/jumbo v5, "Password: "

    invoke-direct {v0, v5, v7}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    const/4 v5, 0x1

    :try_start_0
    new-array v5, v5, [Ljavax/security/auth/callback/Callback;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    invoke-interface {v2, v5}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V
    :try_end_0
    .catch Ljavax/security/auth/callback/UnsupportedCallbackException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v3

    invoke-virtual {v0}, Ljavax/security/auth/callback/PasswordCallback;->clearPassword()V

    if-nez v3, :cond_1

    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v6, "No password provided"

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    :catch_0
    move-exception v1

    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v6, "Could not obtain password"

    invoke-direct {v5, v6, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :cond_3
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v6, "ProtectionParameter must be PasswordProtection or CallbackHandlerProtection"

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5
.end method

.method public abstract engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p3, :cond_0

    instance-of v4, p3, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v4, :cond_2

    :cond_0
    const/4 v0, 0x0

    if-eqz p3, :cond_1

    move-object v0, p3

    check-cast v0, Ljava/security/KeyStore$PasswordProtection;

    :cond_1
    if-nez v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    instance-of v4, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v4, :cond_4

    move-object v2, p2

    check-cast v2, Ljava/security/KeyStore$TrustedCertificateEntry;

    invoke-virtual {v2}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    return-void

    :cond_2
    new-instance v3, Ljava/security/KeyStoreException;

    const-string/jumbo v4, "unsupported protection parameter"

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-virtual {v0}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v1

    goto :goto_0

    :cond_4
    instance-of v4, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v4, :cond_5

    move-object v3, p2

    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v3}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v3

    check-cast p2, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p2}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v4

    invoke-virtual {p0, p1, v3, v1, v4}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    return-void

    :cond_5
    instance-of v4, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v4, :cond_6

    check-cast p2, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-virtual {p2}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v4

    check-cast v3, [Ljava/security/cert/Certificate;

    invoke-virtual {p0, p1, v4, v1, v3}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    return-void

    :cond_6
    new-instance v3, Ljava/security/KeyStoreException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unsupported entry type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public abstract engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract engineSize()I
.end method

.method public abstract engineStore(Ljava/io/OutputStream;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
