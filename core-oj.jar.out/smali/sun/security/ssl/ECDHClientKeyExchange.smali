.class final Lsun/security/ssl/ECDHClientKeyExchange;
.super Lsun/security/ssl/HandshakeMessage;
.source "ECDHClientKeyExchange.java"


# instance fields
.field private encodedPoint:[B


# direct methods
.method constructor <init>(Ljava/security/PublicKey;)V
    .locals 4

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-interface {v0}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v3

    invoke-static {v2, v3}, Lsun/security/ssl/JsseJce;->encodePoint(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)[B

    move-result-object v3

    iput-object v3, p0, Lsun/security/ssl/ECDHClientKeyExchange;->encodedPoint:[B

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes8()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/ECDHClientKeyExchange;->encodedPoint:[B

    return-void
.end method


# virtual methods
.method getEncodedPoint()[B
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/ECDHClientKeyExchange;->encodedPoint:[B

    return-object v0
.end method

.method messageLength()I
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/ECDHClientKeyExchange;->encodedPoint:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

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

    const-string/jumbo v0, "*** ECDHClientKeyExchange"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/ssl/ECDHClientKeyExchange;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ECDH Public value"

    iget-object v1, p0, Lsun/security/ssl/ECDHClientKeyExchange;->encodedPoint:[B

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

    iget-object v0, p0, Lsun/security/ssl/ECDHClientKeyExchange;->encodedPoint:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    return-void
.end method
