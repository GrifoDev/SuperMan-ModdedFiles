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

    const/16 v0, 0x2ee

    invoke-static {v0}, Lsun/security/util/Cache;->newSoftMemoryCache(I)Lsun/security/util/Cache;

    move-result-object v0

    sput-object v0, Lsun/security/provider/certpath/X509CertificatePair;->cache:Lsun/security/util/Cache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string/jumbo v1, "at least one of certificate pair must be non-null"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    iput-object p2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->checkPair()V

    return-void
.end method

.method private constructor <init>([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v1, Lsun/security/util/DerValue;

    invoke-direct {v1, p1}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-direct {p0, v1}, Lsun/security/provider/certpath/X509CertificatePair;->parse(Lsun/security/util/DerValue;)V

    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->checkPair()V

    return-void

    :catch_0
    move-exception v0

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

    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v2, v6}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v5, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :try_start_0
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    instance-of v7, v4, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v7, :cond_2

    move-object v0, v4

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v7, v0

    invoke-interface {v7}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v7

    if-eqz v7, :cond_3

    :cond_2
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7, v4}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    :cond_3
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    instance-of v7, v4, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v7, :cond_4

    move-object v0, v4

    check-cast v0, Ljava/security/interfaces/DSAPublicKey;

    move-object v7, v0

    invoke-interface {v7}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v7

    if-eqz v7, :cond_5

    :cond_4
    iget-object v7, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v7, v4}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    return-void

    :cond_6
    new-instance v7, Ljava/security/cert/CertificateException;

    const-string/jumbo v8, "subject and issuer names in forward and reverse certificates do not match"

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7

    :catch_0
    move-exception v1

    new-instance v7, Ljava/security/cert/CertificateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "invalid signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public static declared-synchronized clearCache()V
    .locals 2

    const-class v1, Lsun/security/provider/certpath/X509CertificatePair;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lsun/security/provider/certpath/X509CertificatePair;->cache:Lsun/security/util/Cache;

    invoke-virtual {v0}, Lsun/security/util/Cache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private emit(Lsun/security/util/DerOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    const/16 v5, -0x80

    const/4 v4, 0x1

    new-instance v0, Lsun/security/util/DerOutputStream;

    invoke-direct {v0}, Lsun/security/util/DerOutputStream;-><init>()V

    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_0

    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    new-instance v2, Lsun/security/util/DerValue;

    iget-object v3, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    const/4 v2, 0x0

    invoke-static {v5, v4, v2}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    :cond_0
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_1

    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    new-instance v2, Lsun/security/util/DerValue;

    iget-object v3, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/util/DerValue;-><init>([B)V

    invoke-virtual {v1, v2}, Lsun/security/util/DerOutputStream;->putDerValue(Lsun/security/util/DerValue;)V

    invoke-static {v5, v4, v4}, Lsun/security/util/DerValue;->createTag(BZB)B

    move-result v2

    invoke-virtual {v0, v2, v1}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    :cond_1
    const/16 v2, 0x30

    invoke-virtual {p1, v2, v0}, Lsun/security/util/DerOutputStream;->write(BLsun/security/util/DerOutputStream;)V

    return-void
.end method

.method public static declared-synchronized generateCertificatePair([B)Lsun/security/provider/certpath/X509CertificatePair;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const-class v3, Lsun/security/provider/certpath/X509CertificatePair;

    monitor-enter v3

    :try_start_0
    new-instance v0, Lsun/security/util/Cache$EqualByteArray;

    invoke-direct {v0, p0}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    sget-object v2, Lsun/security/provider/certpath/X509CertificatePair;->cache:Lsun/security/util/Cache;

    invoke-virtual {v2, v0}, Lsun/security/util/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/security/provider/certpath/X509CertificatePair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v3

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Lsun/security/provider/certpath/X509CertificatePair;

    invoke-direct {v1, p0}, Lsun/security/provider/certpath/X509CertificatePair;-><init>([B)V

    new-instance v0, Lsun/security/util/Cache$EqualByteArray;

    iget-object v2, v1, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B

    invoke-direct {v0, v2}, Lsun/security/util/Cache$EqualByteArray;-><init>([B)V

    sget-object v2, Lsun/security/provider/certpath/X509CertificatePair;->cache:Lsun/security/util/Cache;

    invoke-virtual {v2, v0, v1}, Lsun/security/util/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private parse(Lsun/security/util/DerValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    iget-byte v2, p1, Lsun/security/util/DerValue;->tag:B

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Sequence tag missing for X509CertificatePair"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    new-instance v2, Lsun/security/x509/X509CertImpl;

    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    invoke-static {v2}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    :cond_1
    :goto_0
    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->available()I

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    iget-byte v2, v0, Lsun/security/util/DerValue;->tag:B

    and-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    int-to-short v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Invalid encoding of X509CertificatePair"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate forward certificate in X509CertificatePair"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    invoke-virtual {v0}, Lsun/security/util/DerValue;->isContextSpecific()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lsun/security/util/DerValue;->isConstructed()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_2

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Duplicate reverse certificate in X509CertificatePair"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    iget-object v2, v0, Lsun/security/util/DerValue;->data:Lsun/security/util/DerInputStream;

    invoke-virtual {v2}, Lsun/security/util/DerInputStream;->getDerValue()Lsun/security/util/DerValue;

    move-result-object v0

    new-instance v2, Lsun/security/x509/X509CertImpl;

    invoke-virtual {v0}, Lsun/security/util/DerValue;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lsun/security/x509/X509CertImpl;-><init>([B)V

    invoke-static {v2}, Lsun/security/provider/X509Factory;->intern(Ljava/security/cert/X509Certificate;)Lsun/security/x509/X509CertImpl;

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_4

    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_4

    new-instance v2, Ljava/security/cert/CertificateException;

    const-string/jumbo v3, "at least one of certificate pair must be non-null"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    return-void

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

    :try_start_0
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B

    if-nez v2, :cond_0

    new-instance v1, Lsun/security/util/DerOutputStream;

    invoke-direct {v1}, Lsun/security/util/DerOutputStream;-><init>()V

    invoke-direct {p0, v1}, Lsun/security/provider/certpath/X509CertificatePair;->emit(Lsun/security/util/DerOutputStream;)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->encoded:[B

    return-object v2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getForward()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getReverse()Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public setForward(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->checkPair()V

    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public setReverse(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/provider/certpath/X509CertificatePair;->checkPair()V

    iput-object p1, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "X.509 Certificate Pair: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "  Forward: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "  Reverse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/provider/certpath/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
