.class public Lsun/security/provider/certpath/X509CertificatePair;
.super Ljava/lang/Object;
.source "X509CertificatePair.java"


# static fields
.field private static final TAG_FORWARD:B = 0x0t

.field private static final TAG_REVERSE:B = 0x1t

.field private static final cache:Lsun/security/util/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lsun/security/util/Cache",
            "<",
            "Ljava/lang/Object;",
            "Lsun/security/provider/certpath/X509CertificatePair;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private encoded:[B

.field private forward:Ljava/security/cert/X509Certificate;

.field private reverse:Ljava/security/cert/X509Certificate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const/16 v0, 0x2ee

    invoke-static {v0}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v0

    .line 82
    sput-object v0, Lsun/security/provider/certpath/X509CertificatePair;->cache:Lsun/security/util/Cache;

    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)V
    .locals 2
    .param p1, "forward"    # Ljava/security/cert/X509Certificate;
    .param p2, "reverse"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 103
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "at least one of certificate pair must be non-null"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_0
    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    .line 108
    iput-object p2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    .line 110
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->checkPair()V

    .line 101
    return-void
.end method

.method private constructor <init>([B)V
    .locals 3
    .param p1, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-direct {p0, v1}, Lsun/security/provider/certpath/X509CertificatePair;->parse(Lsun/security/util/DerValue;)V

    .line 121
    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->checkPair()V

    .line 118
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkPair()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 297
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-nez v7, :cond_1

    .line 298
    :cond_0
    return-void

    .line 304
    :cond_1
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 305
    .local v3, "fwSubject":Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 306
    .local v2, "fwIssuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .line 307
    .local v6, "rvSubject":Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    .line 308
    .local v5, "rvIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v2, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 315
    :try_start_0
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 316
    .local v4, "pk":Ljava/security/PublicKey;
    instance-of v7, v4, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v7, :cond_2

    .line 317
    move-object v0, v4

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v7, v0

    invoke-interface {v7}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 318
    :cond_2
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7, v4}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    .line 320
    :cond_3
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 321
    instance-of v7, v4, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v7, :cond_4

    .line 322
    move-object v0, v4

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v7, v0

    invoke-interface {v7}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 323
    :cond_4
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7, v4}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :cond_5
    return-void

    .line 309
    .end local v4    # "pk":Ljava/security/PublicKey;
    :cond_6
    new-instance v7, Ljava/security/cert/CertificateException;

    const-string/jumbo v8, "subject and issuer names in forward and reverse certificates do not match"

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 325
    :catch_0
    move-exception v1

    .line 326
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v7, Ljava/security/cert/CertificateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "invalid signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 327
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 326
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static declared-synchronized clearCache()V
    .locals 2

    .prologue
    const-class v1, Lsun/security/provider/certpath/X509CertificatePair;

    monitor-enter v1

    .line 132
    :try_start_0
    sget-object v0, Lsun/security/provider/certpath/X509CertificatePair;->cache:Lsun/security/util/Cache;

    invoke-virtual {v0}, Lsun/security/util/Cache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 131
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private emit(Lsun/security/util/DerOutputStream;)V
    .locals 6
    .param p1, "out"    # Lsun/security/util/DerOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/16 v5, -0x80

    const/4 v4, 0x1

    .line 272
    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 274
    .local v0, "tagged":Lsun/security/util/DerOutputStream;
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_0

    .line 275
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 276
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    new-instance v2, Lsun/security/util/DerValue;

    iget-object v3, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    .line 278
    const/4 v2, 0x0

    .line 277
    invoke-static {v5, v4, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 281
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_0
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_1

    .line 282
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 283
    .restart local v1    # "tmp":Lsun/security/util/DerOutputStream;
    new-instance v2, Lsun/security/util/DerValue;

    iget-object v3, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    .line 284
    invoke-static {v5, v4, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 288
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_1
    const/16 v2, 0x30

    invoke-virtual {p1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    .line 270
    return-void
.end method

.method public static declared-synchronized generateCertificatePair([B)Lsun/security/provider/certpath/X509CertificatePair;
    .locals 4
    .param p0, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const-class v3, Lsun/security/provider/certpath/X509CertificatePair;

    monitor-enter v3

    .line 141
    :try_start_0
    new-instance v0, Lsun/security/util/Cache$EqualByteArray;

    invoke-direct {v0, p0}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    .line 142
    .local v0, "key":Ljava/lang/Object;
    sget-object v2, Lsun/security/provider/certpath/X509CertificatePair;->cache:Lsun/security/util/Cache;

    invoke-virtual {v2, v0}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/X509CertificatePair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .local v1, "pair":Lsun/security/provider/certpath/X509CertificatePair;
    if-eqz v1, :cond_0

    monitor-exit v3

    .line 144
    return-object v1

    .line 146
    :cond_0
    :try_start_1
    new-instance v1, Lsun/security/provider/certpath/X509CertificatePair;

    .end local v1    # "pair":Lsun/security/provider/certpath/X509CertificatePair;
    invoke-direct {v1, p0}, Lsun/security/provider/certpath/X509CertificatePair;-><init>([B)V

    .line 147
    .restart local v1    # "pair":Lsun/security/provider/certpath/X509CertificatePair;
    new-instance v0, Lsun/security/util/Cache$EqualByteArray;

    .end local v0    # "key":Ljava/lang/Object;
    iget-object v2, v1, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B

    invoke-direct {v0, v2}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    .line 148
    .restart local v0    # "key":Ljava/lang/Object;
    sget-object v2, Lsun/security/provider/certpath/X509CertificatePair;->cache:Lsun/security/util/Cache;

    invoke-virtual {v2, v0, v1}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 149
    return-object v1

    .end local v0    # "key":Ljava/lang/Object;
    .end local v1    # "pair":Lsun/security/provider/certpath/X509CertificatePair;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private parse(Lsun/security/util/DerValue;)V
    .locals 4
    .param p1, "val"    # Lsun/security/util/DerValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 226
    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    .line 227
    new-instance v2, Ljava/io/IOException;

    .line 228
    const-string/jumbo v3, "Sequence tag missing for X509CertificatePair"

    .line 227
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 241
    .local v0, "opt":Lsun/security/util/DerValue;
    .local v1, "tag":S
    :cond_0
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 243
    new-instance v2, Lsun/security/x509/X509CertImpl;

    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    .line 242
    invoke-static {v2}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    .line 231
    .end local v0    # "opt":Lsun/security/util/DerValue;
    .end local v1    # "tag":S
    :cond_1
    :goto_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_3

    .line 232
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 233
    .restart local v0    # "opt":Lsun/security/util/DerValue;
    iget-byte v2, v0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    int-to-short v1, v2

    .line 234
    .restart local v1    # "tag":S
    packed-switch v1, :pswitch_data_0

    .line 258
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of X509CertificatePair"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 236
    :pswitch_0
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_0

    .line 238
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate forward certificate in X509CertificatePair"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    :pswitch_1
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 248
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_2

    .line 249
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate reverse certificate in X509CertificatePair"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_2
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    .line 254
    new-instance v2, Lsun/security/x509/X509CertImpl;

    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    .line 253
    invoke-static {v2}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    goto :goto_0

    .line 262
    .end local v0    # "opt":Lsun/security/util/DerValue;
    .end local v1    # "tag":S
    :cond_3
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_4

    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_4

    .line 263
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string/jumbo v3, "at least one of certificate pair must be non-null"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 224
    :cond_4
    return-void

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getEncoded()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 194
    :try_start_0
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B

    if-nez v2, :cond_0

    .line 195
    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    .line 196
    .local v1, "tmp":Lsun/security/util/DerOutputStream;
    invoke-direct {p0, v1}, Lsun/security/provider/certpath/X509CertificatePair;->emit(Lsun/security/util/DerOutputStream;)V

    .line 197
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v1    # "tmp":Lsun/security/util/DerOutputStream;
    :cond_0
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B

    return-object v2

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getForward()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getReverse()Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public setForward(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->checkPair()V

    .line 157
    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    .line 155
    return-void
.end method

.method public setReverse(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->checkPair()V

    .line 165
    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    .line 163
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "X.509 Certificate Pair: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    .line 215
    const-string/jumbo v1, "  Forward: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_0
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1

    .line 217
    const-string/jumbo v1, "  Reverse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    :cond_1
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
