.class final Lsun/security/ssl/HandshakeMessage$CertificateMsg;
.super Lsun/security/ssl/HandshakeMessage;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CertificateMsg"
.end annotation


# instance fields
.field private chain:[Ljava/security/cert/X509Certificate;

.field private encodedChain:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private messageLength:I


# direct methods
.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt24()I

    move-result v2

    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-lez v2, :cond_1

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes24()[B

    move-result-object v0

    array-length v5, v0

    add-int/lit8 v5, v5, 0x3

    sub-int/2addr v2, v5

    if-nez v1, :cond_0

    :try_start_0
    const-string/jumbo v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    :cond_0
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/SSLProtocolException;

    throw v5

    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;

    iput-object v5, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->chain:[Ljava/security/cert/X509Certificate;

    return-void
.end method

.method constructor <init>([Ljava/security/cert/X509Certificate;)V
    .locals 0

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    iput-object p1, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->chain:[Ljava/security/cert/X509Certificate;

    return-void
.end method


# virtual methods
.method getCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->chain:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method messageLength()I
    .locals 9

    const/4 v8, 0x0

    iget-object v3, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->encodedChain:Ljava/util/List;

    if-nez v3, :cond_0

    const/4 v3, 0x3

    iput v3, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->messageLength:I

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->chain:[Ljava/security/cert/X509Certificate;

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->encodedChain:Ljava/util/List;

    :try_start_0
    iget-object v4, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->chain:[Ljava/security/cert/X509Certificate;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v4, v3

    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    iget-object v6, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->encodedChain:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v6, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->messageLength:I

    array-length v7, v0

    add-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    iput v6, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->messageLength:I
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    iput-object v8, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->encodedChain:Ljava/util/List;

    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Could not encode certificates"

    invoke-direct {v3, v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    iget v3, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->messageLength:I

    return v3
.end method

.method messageType()I
    .locals 1

    const/16 v0, 0xb

    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v1, "*** Certificate chain"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v1, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->debug:Lsun/security/ssl/Debug;

    if-eqz v1, :cond_1

    const-string/jumbo v1, "verbose"

    invoke-static {v1}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->chain:[Ljava/security/cert/X509Certificate;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "chain ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->chain:[Ljava/security/cert/X509Certificate;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "***"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->messageLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    invoke-virtual {p1, v2}, Lsun/security/ssl/HandshakeOutStream;->putInt24(I)V

    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$CertificateMsg;->encodedChain:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes24([B)V

    goto :goto_0

    :cond_0
    return-void
.end method
