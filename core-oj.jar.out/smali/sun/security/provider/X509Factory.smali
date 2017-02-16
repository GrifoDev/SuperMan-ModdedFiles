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

    .prologue
    const/16 v1, 0x2ee

    .line 67
    invoke-static {v1}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v0

    sput-object v0, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    .line 68
    invoke-static {v1}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v0

    sput-object v0, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    return-void
.end method

.method private static declared-synchronized addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    .locals 4
    .param p0, "cache"    # Lsun/security/util/Cache;
    .param p1, "encoding"    # [B
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const-class v2, Lsun/security/provider/X509Factory;

    monitor-enter v2

    .line 213
    :try_start_0
    array-length v1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/high16 v3, 0x400000

    if-le v1, v3, :cond_0

    monitor-exit v2

    .line 214
    return-void

    .line 216
    :cond_0
    :try_start_1
    new-instance v0, Lsun/security/util/Cache$EqualByteArray;

    invoke-direct {v0, p1}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    .line 217
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, v0, p2}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 212
    return-void

    .end local v0    # "key":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static checkHeaderFooter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "header"    # Ljava/lang/String;
    .param p1, "footer"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    const-string/jumbo v2, "-----BEGIN "

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 585
    const-string/jumbo v2, "-----"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 588
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_1

    const-string/jumbo v2, "-----END "

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 589
    const-string/jumbo v2, "-----"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 592
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 593
    .local v1, "headerType":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    const/16 v3, 0x9

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "footerType":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 595
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Header and footer do not match: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 596
    const-string/jumbo v4, " "

    .line 595
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 586
    .end local v0    # "footerType":Ljava/lang/String;
    .end local v1    # "headerType":Ljava/lang/String;
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

    .line 590
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

    .line 583
    .restart local v0    # "footerType":Ljava/lang/String;
    .restart local v1    # "headerType":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static declared-synchronized getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;
    .locals 4
    .param p0, "cache"    # Lsun/security/util/Cache;
    .param p1, "encoding"    # [B

    .prologue
    const-class v3, Lsun/security/provider/X509Factory;

    monitor-enter v3

    .line 203
    :try_start_0
    new-instance v0, Lsun/security/util/Cache$EqualByteArray;

    invoke-direct {v0, p1}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    .line 204
    .local v0, "key":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;
    monitor-exit v3

    .line 205
    return-object v1

    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static declared-synchronized intern(Ljava/security/cert/X509CRL;)Lsun/security/x509/X509CRLImpl;
    .locals 6
    .param p0, "c"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-class v5, Lsun/security/provider/X509Factory;

    monitor-enter v5

    .line 174
    if-nez p0, :cond_0

    monitor-exit v5

    .line 175
    return-object v4

    .line 177
    :cond_0
    :try_start_0
    instance-of v2, p0, Lsun/security/x509/X509CRLImpl;

    .line 179
    .local v2, "isImpl":Z
    if-eqz v2, :cond_1

    .line 180
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CRLImpl;

    move-object v4, v0

    invoke-virtual {v4}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v1

    .line 184
    .local v1, "encoding":[B
    :goto_0
    sget-object v4, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    invoke-static {v4, v1}, Lsun/security/provider/X509Factory;->getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/X509CRLImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .local v3, "newC":Lsun/security/x509/X509CRLImpl;
    if-eqz v3, :cond_2

    monitor-exit v5

    .line 186
    return-object v3

    .line 182
    .end local v1    # "encoding":[B
    .end local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto :goto_0

    .line 188
    .restart local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    :cond_2
    if-eqz v2, :cond_3

    .line 189
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CRLImpl;

    move-object v3, v0

    .line 194
    :goto_1
    sget-object v4, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    invoke-static {v4, v1, v3}, Lsun/security/provider/X509Factory;->addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 195
    return-object v3

    .line 191
    :cond_3
    :try_start_2
    new-instance v3, Lsun/security/x509/X509CRLImpl;

    .end local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    invoke-direct {v3, v1}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    .line 192
    .restart local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    invoke-virtual {v3}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_1

    .end local v1    # "encoding":[B
    .end local v2    # "isImpl":Z
    .end local v3    # "newC":Lsun/security/x509/X509CRLImpl;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public static declared-synchronized intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;
    .locals 6
    .param p0, "c"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-class v5, Lsun/security/provider/X509Factory;

    monitor-enter v5

    .line 144
    if-nez p0, :cond_0

    monitor-exit v5

    .line 145
    return-object v4

    .line 147
    :cond_0
    :try_start_0
    instance-of v2, p0, Lsun/security/x509/X509CertImpl;

    .line 149
    .local v2, "isImpl":Z
    if-eqz v2, :cond_1

    .line 150
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CertImpl;

    move-object v4, v0

    invoke-virtual {v4}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v1

    .line 154
    .local v1, "encoding":[B
    :goto_0
    sget-object v4, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    invoke-static {v4, v1}, Lsun/security/provider/X509Factory;->getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/security/x509/X509CertImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .local v3, "newC":Lsun/security/x509/X509CertImpl;
    if-eqz v3, :cond_2

    monitor-exit v5

    .line 156
    return-object v3

    .line 152
    .end local v1    # "encoding":[B
    .end local v3    # "newC":Lsun/security/x509/X509CertImpl;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v1

    .restart local v1    # "encoding":[B
    goto :goto_0

    .line 158
    .restart local v3    # "newC":Lsun/security/x509/X509CertImpl;
    :cond_2
    if-eqz v2, :cond_3

    .line 159
    move-object v0, p0

    check-cast v0, Lsun/security/x509/X509CertImpl;

    move-object v3, v0

    .line 164
    :goto_1
    sget-object v4, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    invoke-static {v4, v1, v3}, Lsun/security/provider/X509Factory;->addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 165
    return-object v3

    .line 161
    :cond_3
    :try_start_2
    new-instance v3, Lsun/security/x509/X509CertImpl;

    .end local v3    # "newC":Lsun/security/x509/X509CertImpl;
    invoke-direct {v3, v1}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    .line 162
    .restart local v3    # "newC":Lsun/security/x509/X509CertImpl;
    invoke-virtual {v3}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_1

    .end local v1    # "encoding":[B
    .end local v2    # "isImpl":Z
    .end local v3    # "newC":Lsun/security/x509/X509CertImpl;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private parseX509orPKCS7CRL(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
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

    .prologue
    const/4 v6, 0x0

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/X509CRLImpl;>;"
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 447
    .local v2, "data":[B
    if-nez v2, :cond_0

    .line 448
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    return-object v5

    .line 451
    :cond_0
    :try_start_0
    new-instance v4, Lsun/security/pkcs/PKCS7;

    invoke-direct {v4, v2}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    .line 452
    .local v4, "pkcs7":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v4}, Lsun/security/pkcs/PKCS7;->getCRLs()[Ljava/security/cert/X509CRL;

    move-result-object v1

    .line 454
    .local v1, "crls":[Ljava/security/cert/X509CRL;
    if-eqz v1, :cond_1

    .line 455
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 458
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lsun/security/pkcs/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 461
    .end local v1    # "crls":[Ljava/security/cert/X509CRL;
    .end local v4    # "pkcs7":Lsun/security/pkcs/PKCS7;
    .local v3, "e":Lsun/security/pkcs/ParsingException;
    :goto_0
    if-eqz v2, :cond_2

    .line 462
    new-instance v5, Lsun/security/x509/X509CRLImpl;

    invoke-direct {v5, v2}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    invoke-interface {v0, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    move-result-object v2

    goto :goto_0

    .line 466
    :cond_2
    return-object v0

    .line 460
    .end local v3    # "e":Lsun/security/pkcs/ParsingException;
    :catch_0
    move-exception v3

    .restart local v3    # "e":Lsun/security/pkcs/ParsingException;
    goto :goto_0
.end method

.method private parseX509orPKCS7Cert(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 7
    .param p1, "is"    # Ljava/io/InputStream;
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

    .prologue
    const/4 v6, 0x0

    .line 412
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/x509/X509CertImpl;>;"
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 414
    .local v2, "data":[B
    if-nez v2, :cond_0

    .line 415
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    return-object v5

    .line 418
    :cond_0
    :try_start_0
    new-instance v4, Lsun/security/pkcs/PKCS7;

    invoke-direct {v4, v2}, Lsun/security/pkcs/PKCS7;-><init>([B)V

    .line 419
    .local v4, "pkcs7":Lsun/security/pkcs/PKCS7;
    invoke-virtual {v4}, Lsun/security/pkcs/PKCS7;->getCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 421
    .local v0, "certs":[Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_1

    .line 422
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 425
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Lsun/security/pkcs/ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 428
    .end local v0    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v4    # "pkcs7":Lsun/security/pkcs/PKCS7;
    .local v3, "e":Lsun/security/pkcs/ParsingException;
    :goto_0
    if-eqz v2, :cond_2

    .line 429
    new-instance v5, Lsun/security/x509/X509CertImpl;

    invoke-direct {v5, v2}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    move-result-object v2

    goto :goto_0

    .line 433
    :cond_2
    return-object v1

    .line 427
    .end local v3    # "e":Lsun/security/pkcs/ParsingException;
    :catch_0
    move-exception v3

    .restart local v3    # "e":Lsun/security/pkcs/ParsingException;
    goto :goto_0
.end method

.method private static readBERInternal(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;I)I
    .locals 11
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "bout"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x80

    const/4 v9, -0x1

    .line 613
    if-ne p2, v9, :cond_2

    .line 614
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p2

    .line 615
    if-ne p2, v9, :cond_0

    .line 616
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "BER/DER tag info absent"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 618
    :cond_0
    and-int/lit8 v7, p2, 0x1f

    const/16 v8, 0x1f

    if-ne v7, v8, :cond_1

    .line 619
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Multi octets tag not supported"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 621
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 624
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    .line 625
    .local v4, "n":I
    if-ne v4, v9, :cond_3

    .line 626
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "BER/DER length info ansent"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 628
    :cond_3
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 632
    if-ne v4, v10, :cond_6

    .line 633
    and-int/lit8 v7, p2, 0x20

    const/16 v8, 0x20

    if-eq v7, v8, :cond_4

    .line 634
    new-instance v7, Ljava/io/IOException;

    .line 635
    const-string/jumbo v8, "Non constructed encoding must have definite length"

    .line 634
    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 638
    :cond_4
    invoke-static {p0, p1, v9}, Lsun/security/provider/X509Factory;->readBERInternal(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;I)I

    move-result v6

    .line 639
    .local v6, "subTag":I
    if-nez v6, :cond_4

    .line 696
    .end local v6    # "subTag":I
    :cond_5
    return p2

    .line 644
    :cond_6
    if-ge v4, v10, :cond_7

    .line 645
    move v1, v4

    .line 692
    .local v1, "length":I
    :goto_0
    invoke-static {p0, p1, v1}, Lsun/security/provider/X509Factory;->readFully(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;I)I

    move-result v7

    if-eq v7, v1, :cond_5

    .line 693
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Incomplete BER/DER data"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 646
    .end local v1    # "length":I
    :cond_7
    const/16 v7, 0x81

    if-ne v4, v7, :cond_9

    .line 647
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 648
    .restart local v1    # "length":I
    if-ne v1, v9, :cond_8

    .line 649
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Incomplete BER/DER length info"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 651
    :cond_8
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 652
    .end local v1    # "length":I
    :cond_9
    const/16 v7, 0x82

    if-ne v4, v7, :cond_b

    .line 653
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 654
    .local v0, "highByte":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 655
    .local v2, "lowByte":I
    if-ne v2, v9, :cond_a

    .line 656
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Incomplete BER/DER length info"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 658
    :cond_a
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 659
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 660
    shl-int/lit8 v7, v0, 0x8

    or-int v1, v7, v2

    .restart local v1    # "length":I
    goto :goto_0

    .line 661
    .end local v0    # "highByte":I
    .end local v1    # "length":I
    .end local v2    # "lowByte":I
    :cond_b
    const/16 v7, 0x83

    if-ne v4, v7, :cond_d

    .line 662
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 663
    .restart local v0    # "highByte":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 664
    .local v3, "midByte":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 665
    .restart local v2    # "lowByte":I
    if-ne v2, v9, :cond_c

    .line 666
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Incomplete BER/DER length info"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 668
    :cond_c
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 669
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 670
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 671
    shl-int/lit8 v7, v0, 0x10

    shl-int/lit8 v8, v3, 0x8

    or-int/2addr v7, v8

    or-int v1, v7, v2

    .restart local v1    # "length":I
    goto :goto_0

    .line 672
    .end local v0    # "highByte":I
    .end local v1    # "length":I
    .end local v2    # "lowByte":I
    .end local v3    # "midByte":I
    :cond_d
    const/16 v7, 0x84

    if-ne v4, v7, :cond_10

    .line 673
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 674
    .restart local v0    # "highByte":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 675
    .local v5, "nextByte":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 676
    .restart local v3    # "midByte":I
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 677
    .restart local v2    # "lowByte":I
    if-ne v2, v9, :cond_e

    .line 678
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Incomplete BER/DER length info"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 680
    :cond_e
    const/16 v7, 0x7f

    if-le v0, v7, :cond_f

    .line 681
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid BER/DER data (a little huge?)"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 683
    :cond_f
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 684
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 685
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 686
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 687
    shl-int/lit8 v7, v0, 0x18

    shl-int/lit8 v8, v5, 0x10

    or-int/2addr v7, v8

    .line 688
    shl-int/lit8 v8, v3, 0x8

    .line 687
    or-int/2addr v7, v8

    or-int v1, v7, v2

    .restart local v1    # "length":I
    goto/16 :goto_0

    .line 690
    .end local v0    # "highByte":I
    .end local v1    # "length":I
    .end local v2    # "lowByte":I
    .end local v3    # "midByte":I
    .end local v5    # "nextByte":I
    :cond_10
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Invalid BER/DER data (too huge?)"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static readFully(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;I)I
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "bout"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x800

    const/4 v5, 0x0

    .line 115
    const/4 v2, 0x0

    .line 116
    .local v2, "read":I
    new-array v0, v4, [B

    .line 117
    .local v0, "buffer":[B
    :goto_0
    if-lez p2, :cond_0

    .line 118
    if-ge p2, v4, :cond_1

    move v3, p2

    :goto_1
    invoke-virtual {p0, v0, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 119
    .local v1, "n":I
    if-gtz v1, :cond_2

    .line 126
    .end local v1    # "n":I
    :cond_0
    return v2

    :cond_1
    move v3, v4

    .line 118
    goto :goto_1

    .line 122
    .restart local v1    # "n":I
    :cond_2
    invoke-virtual {p1, v0, v5, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 123
    add-int/2addr v2, v1

    .line 124
    sub-int/2addr p2, v1

    goto :goto_0
.end method

.method private static readOneBlock(Ljava/io/InputStream;)[B
    .locals 14
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 484
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 485
    .local v1, "c":I
    const/4 v12, -0x1

    if-ne v1, v12, :cond_0

    .line 486
    const/4 v12, 0x0

    return-object v12

    .line 488
    :cond_0
    const/16 v12, 0x30

    if-ne v1, v12, :cond_1

    .line 489
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v12, 0x800

    invoke-direct {v0, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 490
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 491
    invoke-static {p0, v0, v1}, Lsun/security/provider/X509Factory;->readBERInternal(Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;I)I

    .line 492
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    return-object v12

    .line 495
    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    :cond_1
    const/16 v12, 0x800

    new-array v2, v12, [C

    .line 496
    .local v2, "data":[C
    const/4 v10, 0x0

    .line 499
    .local v10, "pos":I
    const/16 v12, 0x2d

    if-ne v1, v12, :cond_3

    const/4 v7, 0x1

    .line 500
    .local v7, "hyphen":I
    :goto_0
    const/16 v12, 0x2d

    if-ne v1, v12, :cond_4

    const/4 v8, -0x1

    .line 502
    .local v8, "last":I
    :cond_2
    :goto_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 503
    .local v9, "next":I
    const/4 v12, -0x1

    if-ne v9, v12, :cond_5

    .line 506
    const/4 v12, 0x0

    return-object v12

    .line 499
    .end local v7    # "hyphen":I
    .end local v8    # "last":I
    .end local v9    # "next":I
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "hyphen":I
    goto :goto_0

    .line 500
    :cond_4
    move v8, v1

    .restart local v8    # "last":I
    goto :goto_1

    .line 508
    .restart local v9    # "next":I
    :cond_5
    const/16 v12, 0x2d

    if-ne v9, v12, :cond_7

    .line 509
    add-int/lit8 v7, v7, 0x1

    .line 514
    :goto_2
    const/4 v12, 0x5

    if-ne v7, v12, :cond_2

    const/4 v12, -0x1

    if-eq v8, v12, :cond_6

    const/16 v12, 0xd

    if-ne v8, v12, :cond_8

    .line 521
    :cond_6
    :goto_3
    new-instance v6, Ljava/lang/StringBuffer;

    const-string/jumbo v12, "-----"

    invoke-direct {v6, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 523
    .local v6, "header":Ljava/lang/StringBuffer;
    :goto_4
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 524
    const/4 v12, -0x1

    if-ne v9, v12, :cond_9

    .line 525
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Incomplete data"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 511
    .end local v6    # "header":Ljava/lang/StringBuffer;
    :cond_7
    const/4 v7, 0x0

    .line 512
    move v8, v9

    goto :goto_2

    .line 514
    :cond_8
    const/16 v12, 0xa

    if-ne v8, v12, :cond_2

    goto :goto_3

    .line 527
    .restart local v6    # "header":Ljava/lang/StringBuffer;
    :cond_9
    const/16 v12, 0xa

    if-ne v9, v12, :cond_a

    .line 528
    const/16 v4, 0xa

    .line 549
    .local v4, "end":I
    :goto_5
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 550
    const/4 v12, -0x1

    if-ne v9, v12, :cond_e

    .line 551
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Incomplete data"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 531
    .end local v4    # "end":I
    :cond_a
    const/16 v12, 0xd

    if-ne v9, v12, :cond_d

    .line 532
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 533
    const/4 v12, -0x1

    if-ne v9, v12, :cond_b

    .line 534
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Incomplete data"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 536
    :cond_b
    const/16 v12, 0xa

    if-ne v9, v12, :cond_c

    .line 537
    const/16 v4, 0xa

    .restart local v4    # "end":I
    goto :goto_5

    .line 539
    .end local v4    # "end":I
    :cond_c
    const/16 v4, 0xd

    .line 496
    .restart local v4    # "end":I
    const/4 v12, 0x0

    .line 540
    const/4 v10, 0x1

    int-to-char v13, v9

    aput-char v13, v2, v12

    goto :goto_5

    .line 544
    .end local v4    # "end":I
    :cond_d
    int-to-char v12, v9

    invoke-virtual {v6, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    .line 553
    .restart local v4    # "end":I
    :cond_e
    const/16 v12, 0x2d

    if-eq v9, v12, :cond_10

    .line 554
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "pos":I
    .local v11, "pos":I
    int-to-char v12, v9

    aput-char v12, v2, v10

    .line 555
    array-length v12, v2

    if-lt v11, v12, :cond_f

    .line 556
    array-length v12, v2

    add-int/lit16 v12, v12, 0x400

    invoke-static {v2, v12}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v2

    :cond_f
    move v10, v11

    .end local v11    # "pos":I
    .restart local v10    # "pos":I
    goto :goto_5

    .line 564
    :cond_10
    new-instance v5, Ljava/lang/StringBuffer;

    const-string/jumbo v12, "-"

    invoke-direct {v5, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 566
    .local v5, "footer":Ljava/lang/StringBuffer;
    :cond_11
    :goto_6
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v9

    .line 569
    const/4 v12, -0x1

    if-eq v9, v12, :cond_12

    if-ne v9, v4, :cond_13

    .line 575
    :cond_12
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lsun/security/provider/X509Factory;->checkHeaderFooter(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v3, Lsun/misc/BASE64Decoder;

    invoke-direct {v3}, Lsun/misc/BASE64Decoder;-><init>()V

    .line 578
    .local v3, "decoder":Lsun/misc/BASE64Decoder;
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v12, v2, v13, v10}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v3, v12}, Lsun/misc/BASE64Decoder;->decodeBuffer(Ljava/lang/String;)[B

    move-result-object v12

    return-object v12

    .line 569
    .end local v3    # "decoder":Lsun/misc/BASE64Decoder;
    :cond_13
    const/16 v12, 0xa

    if-eq v9, v12, :cond_12

    .line 572
    const/16 v12, 0xd

    if-eq v9, v12, :cond_11

    int-to-char v12, v9

    invoke-virtual {v5, v12}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 356
    if-nez p1, :cond_0

    .line 358
    sget-object v3, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    invoke-virtual {v3}, Lsun/security/util/Cache;->clear()V

    .line 359
    new-instance v3, Ljava/security/cert/CRLException;

    const-string/jumbo v4, "Missing input stream"

    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 362
    :cond_0
    :try_start_0
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 363
    .local v1, "encoding":[B
    if-eqz v1, :cond_2

    .line 364
    sget-object v3, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    invoke-static {v3, v1}, Lsun/security/provider/X509Factory;->getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/X509CRLImpl;

    .line 365
    .local v0, "crl":Lsun/security/x509/X509CRLImpl;
    if-eqz v0, :cond_1

    .line 366
    return-object v0

    .line 368
    :cond_1
    new-instance v0, Lsun/security/x509/X509CRLImpl;

    .end local v0    # "crl":Lsun/security/x509/X509CRLImpl;
    invoke-direct {v0, v1}, Lsun/security/x509/X509CRLImpl;-><init>([B)V

    .line 369
    .restart local v0    # "crl":Lsun/security/x509/X509CRLImpl;
    sget-object v3, Lsun/security/provider/X509Factory;->crlCache:Lsun/security/util/Cache;

    invoke-virtual {v0}, Lsun/security/x509/X509CRLImpl;->getEncodedInternal()[B

    move-result-object v4

    invoke-static {v3, v4, v0}, Lsun/security/provider/X509Factory;->addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V

    .line 370
    return-object v0

    .line 372
    .end local v0    # "crl":Lsun/security/x509/X509CRLImpl;
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Empty input"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v1    # "encoding":[B
    :catch_0
    move-exception v2

    .line 375
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CRLException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
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

    .prologue
    .line 393
    if-nez p1, :cond_0

    .line 394
    new-instance v1, Ljava/security/cert/CRLException;

    const-string/jumbo v2, "Missing input stream"

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 397
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->parseX509orPKCS7CRL(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 234
    if-nez p1, :cond_0

    .line 235
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string/jumbo v3, "Missing input stream"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 238
    :cond_0
    :try_start_0
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 239
    .local v0, "encoding":[B
    if-eqz v0, :cond_1

    .line 240
    new-instance v2, Lsun/security/provider/certpath/X509CertPath;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Lsun/security/provider/certpath/X509CertPath;-><init>(Ljava/io/InputStream;)V

    return-object v2

    .line 242
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Empty input"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v0    # "encoding":[B
    :catch_0
    move-exception v1

    .line 245
    .local v1, "ioe":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 4
    .param p1, "inStream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 266
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string/jumbo v3, "Missing input stream"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_0
    :try_start_0
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 270
    .local v0, "data":[B
    if-eqz v0, :cond_1

    .line 271
    new-instance v2, Lsun/security/provider/certpath/X509CertPath;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3, p2}, Lsun/security/provider/certpath/X509CertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v2

    .line 273
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Empty input"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v0    # "data":[B
    :catch_0
    move-exception v1

    .line 276
    .local v1, "ioe":Ljava/io/IOException;
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

    .prologue
    .line 298
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/Certificate;>;"
    new-instance v0, Lsun/security/provider/certpath/X509CertPath;

    invoke-direct {v0, p1}, Lsun/security/provider/certpath/X509CertPath;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 6
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 86
    sget-object v3, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    invoke-virtual {v3}, Lsun/security/util/Cache;->clear()V

    .line 87
    invoke-static {}, Lsun/security/provider/certpath/X509CertificatePair;->clearCache()V

    .line 88
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string/jumbo v4, "Missing input stream"

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 91
    :cond_0
    :try_start_0
    invoke-static {p1}, Lsun/security/provider/X509Factory;->readOneBlock(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 92
    .local v1, "encoding":[B
    if-eqz v1, :cond_2

    .line 93
    sget-object v3, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    invoke-static {v3, v1}, Lsun/security/provider/X509Factory;->getFromCache(Lsun/security/util/Cache;[B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/security/x509/X509CertImpl;

    .line 94
    .local v0, "cert":Lsun/security/x509/X509CertImpl;
    if-eqz v0, :cond_1

    .line 95
    return-object v0

    .line 97
    :cond_1
    new-instance v0, Lsun/security/x509/X509CertImpl;

    .end local v0    # "cert":Lsun/security/x509/X509CertImpl;
    invoke-direct {v0, v1}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    .line 98
    .restart local v0    # "cert":Lsun/security/x509/X509CertImpl;
    sget-object v3, Lsun/security/provider/X509Factory;->certCache:Lsun/security/util/Cache;

    invoke-virtual {v0}, Lsun/security/x509/X509CertImpl;->getEncodedInternal()[B

    move-result-object v4

    invoke-static {v3, v4, v0}, Lsun/security/provider/X509Factory;->addToCache(Lsun/security/util/Cache;[BLjava/lang/Object;)V

    .line 99
    return-object v0

    .line 101
    .end local v0    # "cert":Lsun/security/x509/X509CertImpl;
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Empty input"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "encoding":[B
    :catch_0
    move-exception v2

    .line 104
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateException;

    .line 105
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

    .line 104
    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/security/cert/CertificateException;

    throw v3
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 3
    .param p1, "is"    # Ljava/io/InputStream;
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

    .prologue
    .line 331
    if-nez p1, :cond_0

    .line 332
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string/jumbo v2, "Missing input stream"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lsun/security/provider/X509Factory;->parseX509orPKCS7Cert(Ljava/io/InputStream;)Ljava/util/Collection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 336
    :catch_0
    move-exception v0

    .line 337
    .local v0, "ioe":Ljava/io/IOException;
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

    .prologue
    .line 314
    invoke-static {}, Lsun/security/provider/certpath/X509CertPath;->getEncodingsStatic()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
