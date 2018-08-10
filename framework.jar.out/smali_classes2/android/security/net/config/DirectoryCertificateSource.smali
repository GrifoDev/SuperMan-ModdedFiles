.class abstract Landroid/security/net/config/DirectoryCertificateSource;
.super Ljava/lang/Object;
.source "DirectoryCertificateSource.java"

# interfaces
.implements Landroid/security/net/config/CertificateSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/net/config/DirectoryCertificateSource$CertSelector;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DirectoryCertificateSrc"


# instance fields
.field private final mCertFactory:Ljava/security/cert/CertificateFactory;

.field private mCertificates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final mDir:Ljava/io/File;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Ljava/io/File;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    :try_start_0
    const-string/jumbo v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    iput-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Failed to obtain X.509 CertificateFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private findCert(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/security/cert/X509Certificate;
    .locals 7

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ltz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-direct {v4, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-object v6

    :cond_1
    invoke-virtual {p0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->isCertMarkedAsRemoved(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2, v0}, Landroid/security/net/config/DirectoryCertificateSource$CertSelector;->match(Ljava/security/cert/X509Certificate;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v0
.end method

.method private findCerts(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/security/auth/x500/X500Principal;",
            "Landroid/security/net/config/DirectoryCertificateSource$CertSelector;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/security/net/config/DirectoryCertificateSource;->getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ltz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    if-eqz v1, :cond_5

    :goto_1
    return-object v1

    :cond_1
    invoke-virtual {p0, v2}, Landroid/security/net/config/DirectoryCertificateSource;->isCertMarkedAsRemoved(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, v2}, Landroid/security/net/config/DirectoryCertificateSource;->readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p2, v0}, Landroid/security/net/config/DirectoryCertificateSource$CertSelector;->match(Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez v1, :cond_4

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    :cond_4
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_1
.end method

.method private getHash(Ljavax/security/auth/x500/X500Principal;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/android/org/conscrypt/NativeCrypto;->X509_NAME_hash_old(Ljavax/security/auth/x500/X500Principal;)I

    move-result v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/org/conscrypt/Hex;->intToHexString(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertFactory:Ljava/security/cert/CertificateFactory;

    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v3

    :catch_0
    move-exception v0

    :goto_0
    :try_start_2
    const-string/jumbo v3, "DirectoryCertificateSrc"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to read certificate from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v3

    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3

    :catchall_1
    move-exception v3

    move-object v1, v2

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method


# virtual methods
.method public findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    new-instance v1, Landroid/security/net/config/DirectoryCertificateSource$3;

    invoke-direct {v1, p0, p1}, Landroid/security/net/config/DirectoryCertificateSource$3;-><init>(Landroid/security/net/config/DirectoryCertificateSource;Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, v0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->findCerts(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    new-instance v1, Landroid/security/net/config/DirectoryCertificateSource$2;

    invoke-direct {v1, p0, p1}, Landroid/security/net/config/DirectoryCertificateSource$2;-><init>(Landroid/security/net/config/DirectoryCertificateSource;Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, v0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->findCert(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 2

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    new-instance v1, Landroid/security/net/config/DirectoryCertificateSource$1;

    invoke-direct {v1, p0, p1}, Landroid/security/net/config/DirectoryCertificateSource$1;-><init>(Landroid/security/net/config/DirectoryCertificateSource;Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, v0, v1}, Landroid/security/net/config/DirectoryCertificateSource;->findCert(Ljavax/security/auth/x500/X500Principal;Landroid/security/net/config/DirectoryCertificateSource$CertSelector;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getCertificates()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Landroid/security/net/config/DirectoryCertificateSource;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-object v3

    :cond_0
    :try_start_1
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iget-object v3, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/security/net/config/DirectoryCertificateSource;->mDir:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x0

    array-length v6, v5

    :goto_0
    if-ge v3, v6, :cond_3

    aget-object v0, v5, v3

    invoke-virtual {p0, v0}, Landroid/security/net/config/DirectoryCertificateSource;->isCertMarkedAsRemoved(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Landroid/security/net/config/DirectoryCertificateSource;->readCertificate(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_3
    :try_start_2
    iput-object v2, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;

    iget-object v3, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-object v3
.end method

.method public handleTrustStorageUpdate()V
    .locals 2

    iget-object v0, p0, Landroid/security/net/config/DirectoryCertificateSource;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/security/net/config/DirectoryCertificateSource;->mCertificates:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected abstract isCertMarkedAsRemoved(Ljava/lang/String;)Z
.end method
