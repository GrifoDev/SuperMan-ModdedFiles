.class final Lsun/security/ssl/DHClientKeyExchange;
.super Lsun/security/ssl/HandshakeMessage;
.source "DHClientKeyExchange.java"


# instance fields
.field private dh_Yc:[B


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    invoke-static {p1}, Lsun/security/ssl/DHClientKeyExchange;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->available()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    return-void

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string/jumbo v1, "Unsupported implicit client DiffieHellman public key"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getClientPublicKey()Ljava/math/BigInteger;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_0
.end method

.method messageLength()I
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method messageType()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "*** ClientKeyExchange, DH"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/ssl/DHClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DH Public key"

    iget-object v1, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    :cond_0
    return-void
.end method
