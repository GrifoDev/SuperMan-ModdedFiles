.class final Lsun/security/ssl/HandshakeMessage$ClientHello;
.super Lsun/security/ssl/HandshakeMessage;
.source "HandshakeMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/HandshakeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ClientHello"
.end annotation


# static fields
.field private static final NULL_COMPRESSION:[B


# instance fields
.field private cipherSuites:Lsun/security/ssl/CipherSuiteList;

.field clnt_random:Lsun/security/ssl/RandomCookie;

.field compression_methods:[B

.field extensions:Lsun/security/ssl/HelloExtensions;

.field protocolVersion:Lsun/security/ssl/ProtocolVersion;

.field sessionId:Lsun/security/ssl/SessionId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    sput-object v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->NULL_COMPRESSION:[B

    return-void
.end method

.method constructor <init>(Ljava/security/SecureRandom;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/SessionId;Lsun/security/ssl/CipherSuiteList;)V
    .locals 2

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    new-instance v0, Lsun/security/ssl/HelloExtensions;

    invoke-direct {v0}, Lsun/security/ssl/HelloExtensions;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    iput-object p2, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iput-object p3, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    iput-object p4, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->cipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {p4}, Lsun/security/ssl/CipherSuiteList;->containsEC()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    sget-object v1, Lsun/security/ssl/SupportedEllipticCurvesExtension;->DEFAULT:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    invoke-virtual {v0, v1}, Lsun/security/ssl/HelloExtensions;->add(Lsun/security/ssl/HelloExtension;)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    sget-object v1, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->DEFAULT:Lsun/security/ssl/HelloExtension;

    invoke-virtual {v0, v1}, Lsun/security/ssl/HelloExtensions;->add(Lsun/security/ssl/HelloExtension;)V

    :cond_0
    new-instance v0, Lsun/security/ssl/RandomCookie;

    invoke-direct {v0, p1}, Lsun/security/ssl/RandomCookie;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->clnt_random:Lsun/security/ssl/RandomCookie;

    sget-object v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->NULL_COMPRESSION:[B

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->compression_methods:[B

    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    new-instance v0, Lsun/security/ssl/HelloExtensions;

    invoke-direct {v0}, Lsun/security/ssl/HelloExtensions;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v0

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v1

    invoke-static {v0, v1}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    new-instance v0, Lsun/security/ssl/RandomCookie;

    invoke-direct {v0, p1}, Lsun/security/ssl/RandomCookie;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->clnt_random:Lsun/security/ssl/RandomCookie;

    new-instance v0, Lsun/security/ssl/SessionId;

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes8()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/ssl/SessionId;-><init>([B)V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    new-instance v0, Lsun/security/ssl/CipherSuiteList;

    invoke-direct {v0, p1}, Lsun/security/ssl/CipherSuiteList;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->cipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes8()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->compression_methods:[B

    invoke-virtual {p0}, Lsun/security/ssl/HandshakeMessage$ClientHello;->messageLength()I

    move-result v0

    if-eq v0, p2, :cond_0

    new-instance v0, Lsun/security/ssl/HelloExtensions;

    invoke-direct {v0, p1}, Lsun/security/ssl/HelloExtensions;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    :cond_0
    return-void
.end method


# virtual methods
.method addRenegotiationInfoExtension([B)V
    .locals 2

    new-instance v0, Lsun/security/ssl/RenegotiationInfoExtension;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, p1, v1}, Lsun/security/ssl/RenegotiationInfoExtension;-><init>([B[B)V

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    invoke-virtual {v1, v0}, Lsun/security/ssl/HelloExtensions;->add(Lsun/security/ssl/HelloExtension;)V

    return-void
.end method

.method addServerNameIndicationExtension(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    new-instance v3, Lsun/security/ssl/ServerNameExtension;

    invoke-direct {v3, v0}, Lsun/security/ssl/ServerNameExtension;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lsun/security/ssl/HelloExtensions;->add(Lsun/security/ssl/HelloExtension;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method addSignatureAlgorithmsExtension(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lsun/security/ssl/SignatureAndHashAlgorithm;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lsun/security/ssl/SignatureAlgorithmsExtension;

    invoke-direct {v0, p1}, Lsun/security/ssl/SignatureAlgorithmsExtension;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    invoke-virtual {v1, v0}, Lsun/security/ssl/HelloExtensions;->add(Lsun/security/ssl/HelloExtension;)V

    return-void
.end method

.method getCipherSuites()Lsun/security/ssl/CipherSuiteList;
    .locals 1

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->cipherSuites:Lsun/security/ssl/CipherSuiteList;

    return-object v0
.end method

.method messageLength()I
    .locals 2

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {v0}, Lsun/security/ssl/SessionId;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x26

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->cipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v1}, Lsun/security/ssl/CipherSuiteList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->compression_methods:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    invoke-virtual {v1}, Lsun/security/ssl/HelloExtensions;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method messageType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method print(Ljava/io/PrintStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "*** ClientHello, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "RandomCookie:  "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->clnt_random:Lsun/security/ssl/RandomCookie;

    invoke-virtual {v0, p1}, Lsun/security/ssl/RandomCookie;->print(Ljava/io/PrintStream;)V

    const-string/jumbo v0, "Session ID:  "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Cipher Suites: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->cipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "Compression Methods"

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->compression_methods:[B

    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    invoke-virtual {v0, p1}, Lsun/security/ssl/HelloExtensions;->print(Ljava/io/PrintStream;)V

    const-string/jumbo v0, "***"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

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

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v0, v0, Lsun/security/ssl/ProtocolVersion;->major:B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v0, v0, Lsun/security/ssl/ProtocolVersion;->minor:B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->clnt_random:Lsun/security/ssl/RandomCookie;

    invoke-virtual {v0, p1}, Lsun/security/ssl/RandomCookie;->send(Lsun/security/ssl/HandshakeOutStream;)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {v0}, Lsun/security/ssl/SessionId;->getId()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->cipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v0, p1}, Lsun/security/ssl/CipherSuiteList;->send(Lsun/security/ssl/HandshakeOutStream;)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->compression_methods:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    invoke-virtual {v0, p1}, Lsun/security/ssl/HelloExtensions;->send(Lsun/security/ssl/HandshakeOutStream;)V

    return-void
.end method
