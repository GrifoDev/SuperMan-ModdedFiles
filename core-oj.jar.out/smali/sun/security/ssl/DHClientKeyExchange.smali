.class final Lsun/security/ssl/DHClientKeyExchange;
.super Lsun/security/ssl/HandshakeMessage;
.source "DHClientKeyExchange.java"


# instance fields
.field private dh_Yc:[B


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    .line 65
    return-void
.end method

.method constructor <init>(Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "publicKey"    # Ljava/math/BigInteger;

    .prologue
    .line 61
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    .line 62
    invoke-static {p1}, Lsun/security/ssl/DHClientKeyExchange;->toByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    .line 61
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 2
    .param p1, "input"    # Lsun/security/ssl/HandshakeInStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    .line 75
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->available()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 76
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes16()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    .line 74
    return-void

    .line 80
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    .line 81
    const-string/jumbo v1, "Unsupported implicit client DiffieHellman public key"

    .line 80
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method getClientPublicKey()Ljava/math/BigInteger;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 53
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

    .prologue
    .line 86
    iget-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    return v0

    .line 89
    :cond_0
    iget-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method messageType()I
    .locals 1

    .prologue
    .line 43
    const/16 v0, 0x10

    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/PrintStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const-string/jumbo v0, "*** ClientKeyExchange, DH"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 102
    sget-object v0, Lsun/security/ssl/DHClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    const-string/jumbo v0, "DH Public key"

    iget-object v1, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    .line 99
    :cond_0
    return-void
.end method

.method send(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 1
    .param p1, "s"    # Lsun/security/ssl/HandshakeOutStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    array-length v0, v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lsun/security/ssl/DHClientKeyExchange;->dh_Yc:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes16([B)V

    .line 93
    :cond_0
    return-void
.end method
