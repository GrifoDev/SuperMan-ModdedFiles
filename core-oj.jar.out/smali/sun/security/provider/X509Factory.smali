.class public Lsun/security/provider/X509Factory;
.super Ljava/security/cert/CertificateFactorySpi;
.source "X509Factory.java"


# static fields
.field public static final BEGIN_CERT:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----"

.field private static final ENC_MAX_LENGTH:I = 0x400000

.field public static final END_CERT:Ljava/lang/String; = "-----END CERTIFICATE-----"

.field private static final certCache:Lsun/security/util/Cache;

.field private static final crlCache:Lsun/security/util/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x2ee

    invoke-static {v1}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v0

    sput-object v0, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    invoke-static {v1}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v0

    sput-object v0, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    return-void
.end method

.method private static declared-synchronized addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    .locals 4

    const-class v2, Lsun/security/provider/X509Factory;

    monitor-enter v2

    :try_start_0
    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v3, 0x400000

    if-le v1, v3, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lsun/security/util/Cache$EqualByteArray;

    invoke-direct {v0, p1}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    invoke-virtual {p0, v0, p2}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static checkHeaderFooter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    const-string/jumbo v2, "-----BEGIN "

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "-----"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    const-string/jumbo v2, "-----END "

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "-----"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Header and footer do not match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal footer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-void
.end method

.method private static declared-synchronized getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;
    .locals 4

    const-class v3, Lsun/security/provider/X509Factory;

    monitor-enter v3

    :try_start_0
    new-instance v0, Lsun/security/util/Cache$EqualByteArray;

    invoke-direct {v0, p1}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized intern(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    const/4 v4, 0x0

    const-class v5, Lsun/security/provider/X509Factory;

    monitor-enter v5

    if-nez p0, :cond_0

    monitor-exit v5

    return-object v4

    :cond_0
    :try_start_0
    instance-of v2, p0, Lsun/security/x509/X509CRLImpl;

    if-eqz v2, :cond_1

    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CRLImpl;

    move-object v4, v0

    invoke-virtual {v4}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v1

    :goto_0
    sget-object v4, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    invoke-static {v4, v1}, Lsun/security/provider/X509Factory;->getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/X509CRLImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    monitor-exit v5

    return-object v3

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CRLImpl;

    move-object v3, v0

    :goto_1
    sget-object v4, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    invoke-static {v4, v1, v3}, Lsun/security/provider/X509Factory;->addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v3

    :cond_3
    :try_start_2
    new-instance v3, Lsun/security/x509/X509CRLImpl;

    invoke-direct {v3, v1}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    invoke-virtual {v3}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v4, 0x0

    const-class v5, Lsun/security/provider/X509Factory;

    monitor-enter v5

    if-nez p0, :cond_0

    monitor-exit v5

    return-object v4

    :cond_0
    :try_start_0
    instance-of v2, p0, Lsun/security/x509/X509CertImpl;

    if-eqz v2, :cond_1

    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CertImpl;

    move-object v4, v0

    invoke-virtual {v4}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v1

    :goto_0
    sget-object v4, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    invoke-static {v4, v1}, Lsun/security/provider/X509Factory;->getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/X509CertImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    monitor-exit v5

    return-object v3

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CertImpl;

    move-object v3, v0

    :goto_1
    sget-object v4, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    invoke-static {v4, v1, v3}, Lsun/security/provider/X509Factory;->addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    return-object v3

    :cond_3
    :try_start_2
    new-instance v3, Lsun/security/x509/X509CertImpl;

    invoke-direct {v3, v1}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private parseX509orPKCS7CRL(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    return-object v5

    :cond_0
    :try_start_0
    new-instance v4, Lsun/security/pkcs/PKCS7;

    invoke-direct {v4, v2}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    invoke-virtual {v4}, Lsun/security/pkcs/PKCS7;->getCRLs()[Ljava/security/cert/X509CRL;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    return-object v5

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lsun/security/pkcs/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :goto_0
    if-eqz v2, :cond_2

    new-instance v5, Lsun/security/x509/X509CRLImpl;

    invoke-direct {v5, v2}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    move-result-object v2

    goto :goto_0

    :cond_2
    return-object v0

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private parseX509orPKCS7Cert(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    return-object v5

    :cond_0
    :try_start_0
    new-instance v4, Lsun/security/pkcs/PKCS7;

    invoke-direct {v4, v2}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    invoke-virtual {v4}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    return-object v5

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lsun/security/pkcs/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :goto_0
    if-eqz v2, :cond_2

    new-instance v5, Lsun/security/x509/X509CertImpl;

    invoke-direct {v5, v2}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    move-result-object v2

    goto :goto_0

    :cond_2
    return-object v1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static readBERInternal(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;I)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x80

    const/4 v9, -0x1

    if-ne p2, v9, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p2

    if-ne p2, v9, :cond_0

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "BER/DER tag info absent"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    and-int/lit8 v7, p2, 0x1f

    const/16 v8, 0x1f

    if-ne v7, v8, :cond_1

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Multi octets tag not supported"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ne v4, v9, :cond_3

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "BER/DER length info ansent"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-ne v4, v10, :cond_6

    and-int/lit8 v7, p2, 0x20

    const/16 v8, 0x20

    if-eq v7, v8, :cond_4

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Non constructed encoding must have definite length"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_4
    invoke-static {p0, p1, v9}, Lsun/security/provider/X509Factory;->readBERInternal(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;I)I

    move-result v6

    if-nez v6, :cond_4

    :cond_5
    return p2

    :cond_6
    if-ge v4, v10, :cond_7

    move v1, v4

    :goto_0
    invoke-static {p0, p1, v1}, Lsun/security/provider/X509Factory;->readFully(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;I)I

    move-result v7

    if-eq v7, v1, :cond_5

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Incomplete BER/DER data"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_7
    const/16 v7, 0x81

    if-ne v4, v7, :cond_9

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ne v1, v9, :cond_8

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Incomplete BER/DER length info"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_8
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_9
    const/16 v7, 0x82

    if-ne v4, v7, :cond_b

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v9, :cond_a

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Incomplete BER/DER length info"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_a
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shl-int/lit8 v7, v0, 0x8

    or-int v1, v7, v2

    goto :goto_0

    :cond_b
    const/16 v7, 0x83

    if-ne v4, v7, :cond_d

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v9, :cond_c

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Incomplete BER/DER length info"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_c
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shl-int/lit8 v7, v0, 0x10

    shl-int/lit8 v8, v3, 0x8

    or-int/2addr v7, v8

    or-int v1, v7, v2

    goto :goto_0

    :cond_d
    const/16 v7, 0x84

    if-ne v4, v7, :cond_10

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v9, :cond_e

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Incomplete BER/DER length info"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_e
    const/16 v7, 0x7f

    if-le v0, v7, :cond_f

    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid BER/DER data (a little huge?)"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_f
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shl-int/lit8 v7, v0, 0x18

    shl-int/lit8 v8, v5, 0x10

    or-int/2addr v7, v8

    shl-int/lit8 v8, v3, 0x8

    or-int/2addr v7, v8

    or-int v1, v7, v2

    goto/16 :goto_0

    :cond_10
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid BER/DER data (too huge?)"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static readFully(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0x800

    const/4 v5, 0x0

    const/4 v2, 0x0

    new-array v0, v4, [B

    :goto_0
    if-lez p2, :cond_0

    if-ge p2, v4, :cond_1

    move v3, p2

    :goto_1
    invoke-virtual {p0, v0, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_2

    :cond_0
    return v2

    :cond_1
    move v3, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/2addr v2, v1

    sub-int/2addr p2, v1

    goto :goto_0
.end method

.method private static readOneBlock(Ljava/io/InputStream;)[B
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v12, -0x1

    if-ne v1, v12, :cond_0

    const/4 v12, 0x0

    return-object v12

    :cond_0
    const/16 v12, 0x30

    if-ne v1, v12, :cond_1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v12, 0x800

    invoke-direct {v0, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p0, v0, v1}, Lsun/security/provider/X509Factory;->readBERInternal(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;I)I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    return-object v12

    :cond_1
    const/16 v12, 0x800

    new-array v2, v12, [C

    const/4 v10, 0x0

    const/16 v12, 0x2d

    if-ne v1, v12, :cond_3

    const/4 v7, 0x1

    :goto_0
    const/16 v12, 0x2d

    if-ne v1, v12, :cond_4

    const/4 v8, -0x1

    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v9

    const/4 v12, -0x1

    if-ne v9, v12, :cond_5

    const/4 v12, 0x0

    return-object v12

    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    move v8, v1

    goto :goto_1

    :cond_5
    const/16 v12, 0x2d

    if-ne v9, v12, :cond_7

    add-int/lit8 v7, v7, 0x1

    :goto_2
    const/4 v12, 0x5

    if-ne v7, v12, :cond_2

    const/4 v12, -0x1

    if-eq v8, v12, :cond_6

    const/16 v12, 0xd

    if-ne v8, v12, :cond_8

    :cond_6
    :goto_3
    new-instance v6, Ljava/lang/StringBuffer;

    const-string/jumbo v12, "-----"

    invoke-direct {v6, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v9

    const/4 v12, -0x1

    if-ne v9, v12, :cond_9

    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Incomplete data"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_7
    const/4 v7, 0x0

    move v8, v9

    goto :goto_2

    :cond_8
    const/16 v12, 0xa

    if-ne v8, v12, :cond_2

    goto :goto_3

    :cond_9
    const/16 v12, 0xa

    if-ne v9, v12, :cond_a

    const/16 v4, 0xa

    :goto_5
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v9

    const/4 v12, -0x1

    if-ne v9, v12, :cond_e

    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Incomplete data"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_a
    const/16 v12, 0xd

    if-ne v9, v12, :cond_d

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v9

    const/4 v12, -0x1

    if-ne v9, v12, :cond_b

    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Incomplete data"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_b
    const/16 v12, 0xa

    if-ne v9, v12, :cond_c

    const/16 v4, 0xa

    goto :goto_5

    :cond_c
    const/16 v4, 0xd

    const/4 v12, 0x0

    const/4 v10, 0x1

    int-to-char v13, v9

    aput-char v13, v2, v12

    goto :goto_5

    :cond_d
    int-to-char v12, v9

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_e
    const/16 v12, 0x2d

    if-eq v9, v12, :cond_10

    add-int/lit8 v11, v10, 0x1

    int-to-char v12, v9

    aput-char v12, v2, v10

    array-length v12, v2

    if-lt v11, v12, :cond_f

    array-length v12, v2

    add-int/lit16 v12, v12, 0x400

    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v2

    :cond_f
    move v10, v11

    goto :goto_5

    :cond_10
    new-instance v5, Ljava/lang/StringBuffer;

    const-string/jumbo v12, "-"

    invoke-direct {v5, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :cond_11
    :goto_6
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v9

    const/4 v12, -0x1

    if-eq v9, v12, :cond_12

    if-ne v9, v4, :cond_13

    :cond_12
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lsun/security/provider/X509Factory;->checkHeaderFooter(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lsun/misc/BASE64Decoder;

    invoke-direct {v3}, Lsun/misc/BASE64Decoder;-><init>()V

    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v12, v2, v13, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v12}, Lsun/misc/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v12

    return-object v12

    :cond_13
    const/16 v12, 0xa

    if-eq v9, v12, :cond_12

    const/16 v12, 0xd

    if-eq v9, v12, :cond_11

    int-to-char v12, v9

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object v3, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    invoke-virtual {v3}, Lsun/security/util/Cache;->clear()V

    new-instance v3, Ljava/security/cert/CRLException;

    const-string/jumbo v4, "Missing input stream"

    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    :try_start_0
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v3, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    invoke-static {v3, v1}, Lsun/security/provider/X509Factory;->getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/X509CRLImpl;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lsun/security/x509/X509CRLImpl;

    invoke-direct {v0, v1}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    sget-object v3, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    invoke-virtual {v0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v4

    invoke-static {v3, v4, v0}, Lsun/security/provider/X509Factory;->addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V

    return-object v0

    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Empty input"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/security/cert/CRLException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/security/cert/CRLException;

    const-string/jumbo v2, "Missing input stream"

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->parseX509orPKCS7CRL(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/security/cert/CertificateException;

    const-string/jumbo v3, "Missing input stream"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lsun/security/provider/certpath/X509CertPath;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lsun/security/provider/certpath/X509CertPath;-><init>(Ljava/io/InputStream;)V

    return-object v2

    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Empty input"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/security/cert/CertificateException;

    const-string/jumbo v3, "Missing input stream"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v2, Lsun/security/provider/certpath/X509CertPath;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3, p2}, Lsun/security/provider/certpath/X509CertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v2

    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Empty input"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/security/cert/CertPath;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    new-instance v0, Lsun/security/provider/certpath/X509CertPath;

    invoke-direct {v0, p1}, Lsun/security/provider/certpath/X509CertPath;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object v3, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    invoke-virtual {v3}, Lsun/security/util/Cache;->clear()V

    invoke-static {}, Lsun/security/provider/certpath/X509CertificatePair;->clearCache()V

    new-instance v3, Ljava/security/cert/CertificateException;

    const-string/jumbo v4, "Missing input stream"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    :try_start_0
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v3, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    invoke-static {v3, v1}, Lsun/security/provider/X509Factory;->getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/X509CertImpl;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Lsun/security/x509/X509CertImpl;

    invoke-direct {v0, v1}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    sget-object v3, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v4

    invoke-static {v3, v4, v0}, Lsun/security/provider/X509Factory;->addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V

    return-object v0

    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Empty input"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Could not parse certificate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/security/cert/CertificateException;

    throw v3
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/security/cert/CertificateException;

    const-string/jumbo v2, "Missing input stream"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->parseX509orPKCS7Cert(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lsun/security/provider/certpath/X509CertPath;->getEncodingsStatic()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
