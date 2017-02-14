.class public abstract Lsun/security/ssl/HandshakeMessage;
.super Ljava/lang/Object;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/ssl/HandshakeMessage$CertificateMsg;,
        Lsun/security/ssl/HandshakeMessage$CertificateRequest;,
        Lsun/security/ssl/HandshakeMessage$CertificateVerify;,
        Lsun/security/ssl/HandshakeMessage$ClientHello;,
        Lsun/security/ssl/HandshakeMessage$DH_ServerKeyExchange;,
        Lsun/security/ssl/HandshakeMessage$DistinguishedName;,
        Lsun/security/ssl/HandshakeMessage$ECDH_ServerKeyExchange;,
        Lsun/security/ssl/HandshakeMessage$Finished;,
        Lsun/security/ssl/HandshakeMessage$HelloRequest;,
        Lsun/security/ssl/HandshakeMessage$RSA_ServerKeyExchange;,
        Lsun/security/ssl/HandshakeMessage$ServerHello;,
        Lsun/security/ssl/HandshakeMessage$ServerHelloDone;,
        Lsun/security/ssl/HandshakeMessage$ServerKeyExchange;
    }
.end annotation


# static fields
.field static final MD5_pad1:[B

.field static final MD5_pad2:[B

.field static final SHA_pad1:[B

.field static final SHA_pad2:[B

.field public static final debug:Lsun/security/ssl/Debug;

.field static final ht_certificate:B = 0xbt

.field static final ht_certificate_request:B = 0xdt

.field static final ht_certificate_verify:B = 0xft

.field static final ht_client_hello:B = 0x1t

.field static final ht_client_key_exchange:B = 0x10t

.field static final ht_finished:B = 0x14t

.field static final ht_hello_request:B = 0x0t

.field static final ht_server_hello:B = 0x2t

.field static final ht_server_hello_done:B = 0xet

.field static final ht_server_key_exchange:B = 0xct


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0x5c

    const/16 v3, 0x36

    const/16 v2, 0x30

    const/16 v1, 0x28

    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    move-result-object v0

    sput-object v0, Lsun/security/ssl/HandshakeMessage;->debug:Lsun/security/ssl/Debug;

    invoke-static {v3, v2}, Lsun/security/ssl/HandshakeMessage;->genPad(II)[B

    move-result-object v0

    sput-object v0, Lsun/security/ssl/HandshakeMessage;->MD5_pad1:[B

    invoke-static {v4, v2}, Lsun/security/ssl/HandshakeMessage;->genPad(II)[B

    move-result-object v0

    sput-object v0, Lsun/security/ssl/HandshakeMessage;->MD5_pad2:[B

    invoke-static {v3, v1}, Lsun/security/ssl/HandshakeMessage;->genPad(II)[B

    move-result-object v0

    sput-object v0, Lsun/security/ssl/HandshakeMessage;->SHA_pad1:[B

    invoke-static {v4, v1}, Lsun/security/ssl/HandshakeMessage;->genPad(II)[B

    move-result-object v0

    sput-object v0, Lsun/security/ssl/HandshakeMessage;->SHA_pad2:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static genPad(II)[B
    .locals 2

    new-array v0, p1, [B

    int-to-byte v1, p0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-object v0
.end method

.method static toByteArray(Ljava/math/BigInteger;)[B
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v3, v0

    if-le v3, v5, :cond_0

    aget-byte v3, v0, v4

    if-nez v3, :cond_0

    array-length v3, v0

    add-int/lit8 v1, v3, -0x1

    new-array v2, v1, [B

    invoke-static {v0, v5, v2, v4, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    move-object v0, v2

    :cond_0
    return-object v0
.end method


# virtual methods
.method abstract messageLength()I
.end method

.method abstract messageType()I
.end method

.method abstract print(Ljava/io/PrintStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract send(Lsun/security/ssl/HandshakeOutStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final write(Lsun/security/ssl/HandshakeOutStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeMessage;->messageLength()I

    move-result v0

    const/high16 v1, 0x1000000

    if-lt v0, v1, :cond_0

    new-instance v1, Ljavax/net/ssl/SSLException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Handshake message too big, type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeMessage;->messageType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", len = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeMessage;->messageType()I

    move-result v1

    invoke-virtual {p1, v1}, Lsun/security/ssl/HandshakeOutStream;->write(I)V

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt24(I)V

    invoke-virtual {p0, p1}, Lsun/security/ssl/HandshakeMessage;->send(Lsun/security/ssl/HandshakeOutStream;)V

    return-void
.end method
