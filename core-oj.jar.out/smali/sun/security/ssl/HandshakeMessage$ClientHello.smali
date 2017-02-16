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

    .prologue
    const/4 v1, 0x0

    .line 220
    const/4 v0, 0x1

    new-array v0, v0, [B

    aput-byte v1, v0, v1

    sput-object v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->NULL_COMPRESSION:[B

    .line 210
    return-void
.end method

.method constructor <init>(Ljava/security/SecureRandom;Lsun/security/ssl/ProtocolVersion;Lsun/security/ssl/SessionId;Lsun/security/ssl/CipherSuiteList;)V
    .locals 2
    .param p1, "generator"    # Ljava/security/SecureRandom;
    .param p2, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;
    .param p3, "sessionId"    # Lsun/security/ssl/SessionId;
    .param p4, "cipherSuites"    # Lsun/security/ssl/CipherSuiteList;

    .prologue
    .line 222
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    .line 218
    new-instance v0, Lsun/security/ssl/HelloExtensions;

    invoke-direct {v0}, Lsun/security/ssl/HelloExtensions;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    .line 225
    iput-object p2, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 226
    iput-object p3, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    .line 227
    iput-object p4, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->cipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 229
    invoke-virtual {p4}, Lsun/security/ssl/CipherSuiteList;->containsEC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    sget-object v1, Lsun/security/ssl/SupportedEllipticCurvesExtension;->DEFAULT:Lsun/security/ssl/SupportedEllipticCurvesExtension;

    invoke-virtual {v0, v1}, Lsun/security/ssl/HelloExtensions;->add(Lsun/security/ssl/HelloExtension;)V

    .line 231
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    sget-object v1, Lsun/security/ssl/SupportedEllipticPointFormatsExtension;->DEFAULT:Lsun/security/ssl/HelloExtension;

    invoke-virtual {v0, v1}, Lsun/security/ssl/HelloExtensions;->add(Lsun/security/ssl/HelloExtension;)V

    .line 234
    :cond_0
    new-instance v0, Lsun/security/ssl/RandomCookie;

    invoke-direct {v0, p1}, Lsun/security/ssl/RandomCookie;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->clnt_random:Lsun/security/ssl/RandomCookie;

    .line 235
    sget-object v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->NULL_COMPRESSION:[B

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->compression_methods:[B

    .line 223
    return-void
.end method

.method constructor <init>(Lsun/security/ssl/HandshakeInStream;I)V
    .locals 2
    .param p1, "s"    # Lsun/security/ssl/HandshakeInStream;
    .param p2, "messageLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-direct {p0}, Lsun/security/ssl/HandshakeMessage;-><init>()V

    .line 218
    new-instance v0, Lsun/security/ssl/HelloExtensions;

    invoke-direct {v0}, Lsun/security/ssl/HelloExtensions;-><init>()V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    .line 239
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v0

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getInt8()I

    move-result v1

    invoke-static {v0, v1}, Lsun/security/ssl/ProtocolVersion;->valueOf(II)Lsun/security/ssl/ProtocolVersion;

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    .line 240
    new-instance v0, Lsun/security/ssl/RandomCookie;

    invoke-direct {v0, p1}, Lsun/security/ssl/RandomCookie;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->clnt_random:Lsun/security/ssl/RandomCookie;

    .line 241
    new-instance v0, Lsun/security/ssl/SessionId;

    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes8()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/ssl/SessionId;-><init>([B)V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    .line 242
    new-instance v0, Lsun/security/ssl/CipherSuiteList;

    invoke-direct {v0, p1}, Lsun/security/ssl/CipherSuiteList;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->cipherSuites:Lsun/security/ssl/CipherSuiteList;

    .line 243
    invoke-virtual {p1}, Lsun/security/ssl/HandshakeInStream;->getBytes8()[B

    move-result-object v0

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->compression_methods:[B

    .line 244
    invoke-virtual {p0}, Lsun/security/ssl/HandshakeMessage$ClientHello;->messageLength()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 245
    new-instance v0, Lsun/security/ssl/HelloExtensions;

    invoke-direct {v0, p1}, Lsun/security/ssl/HelloExtensions;-><init>(Lsun/security/ssl/HandshakeInStream;)V

    iput-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    .line 238
    :cond_0
    return-void
.end method


# virtual methods
.method addRenegotiationInfoExtension([B)V
    .locals 2
    .param p1, "clientVerifyData"    # [B

    .prologue
    .line 255
    new-instance v0, Lsun/security/ssl/RenegotiationInfoExtension;

    .line 256
    const/4 v1, 0x0

    new-array v1, v1, [B

    .line 255
    invoke-direct {v0, p1, v1}, Lsun/security/ssl/RenegotiationInfoExtension;-><init>([B[B)V

    .line 257
    .local v0, "renegotiationInfo":Lsun/security/ssl/HelloExtension;
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    invoke-virtual {v1, v0}, Lsun/security/ssl/HelloExtensions;->add(Lsun/security/ssl/HelloExtension;)V

    .line 254
    return-void
.end method

.method addServerNameIndicationExtension(Ljava/lang/String;)V
    .locals 4
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 263
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    .local v0, "hostnames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    :try_start_0
    iget-object v2, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    new-instance v3, Lsun/security/ssl/ServerNameExtension;

    invoke-direct {v3, v0}, Lsun/security/ssl/ServerNameExtension;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lsun/security/ssl/HelloExtensions;->add(Lsun/security/ssl/HelloExtension;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v1

    .local v1, "ioe":Ljava/io/IOException;
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

    .prologue
    .line 277
    .local p1, "algorithms":Ljava/util/Collection;, "Ljava/util/Collection<Lsun/security/ssl/SignatureAndHashAlgorithm;>;"
    new-instance v0, Lsun/security/ssl/SignatureAlgorithmsExtension;

    invoke-direct {v0, p1}, Lsun/security/ssl/SignatureAlgorithmsExtension;-><init>(Ljava/util/Collection;)V

    .line 278
    .local v0, "signatureAlgorithm":Lsun/security/ssl/HelloExtension;
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    invoke-virtual {v1, v0}, Lsun/security/ssl/HelloExtensions;->add(Lsun/security/ssl/HelloExtension;)V

    .line 275
    return-void
.end method

.method getCipherSuites()Lsun/security/ssl/CipherSuiteList;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->cipherSuites:Lsun/security/ssl/CipherSuiteList;

    return-object v0
.end method

.method messageLength()I
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {v0}, Lsun/security/ssl/SessionId;->length()I

    move-result v0

    .line 290
    add-int/lit8 v0, v0, 0x26

    .line 292
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->cipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v1}, Lsun/security/ssl/CipherSuiteList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 290
    add-int/2addr v0, v1

    .line 293
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->compression_methods:[B

    array-length v1, v1

    .line 290
    add-int/2addr v0, v1

    .line 294
    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    invoke-virtual {v1}, Lsun/security/ssl/HelloExtensions;->length()I

    move-result v1

    .line 290
    add-int/2addr v0, v1

    return v0
.end method

.method messageType()I
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x1

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
    .line 310
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

    .line 312
    sget-object v0, Lsun/security/ssl/HandshakeMessage$ClientHello;->debug:Lsun/security/ssl/Debug;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "verbose"

    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    const-string/jumbo v0, "RandomCookie:  "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->clnt_random:Lsun/security/ssl/RandomCookie;

    invoke-virtual {v0, p1}, Lsun/security/ssl/RandomCookie;->print(Ljava/io/PrintStream;)V

    .line 316
    const-string/jumbo v0, "Session ID:  "

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 319
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

    .line 321
    const-string/jumbo v0, "Compression Methods"

    iget-object v1, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->compression_methods:[B

    invoke-static {p1, v0, v1}, Lsun/security/ssl/Debug;->println(Ljava/io/PrintStream;Ljava/lang/String;[B)V

    .line 322
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    invoke-virtual {v0, p1}, Lsun/security/ssl/HelloExtensions;->print(Ljava/io/PrintStream;)V

    .line 323
    const-string/jumbo v0, "***"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
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
    .line 299
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v0, v0, Lsun/security/ssl/ProtocolVersion;->major:B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 300
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    iget-byte v0, v0, Lsun/security/ssl/ProtocolVersion;->minor:B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putInt8(I)V

    .line 301
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->clnt_random:Lsun/security/ssl/RandomCookie;

    invoke-virtual {v0, p1}, Lsun/security/ssl/RandomCookie;->send(Lsun/security/ssl/HandshakeOutStream;)V

    .line 302
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->sessionId:Lsun/security/ssl/SessionId;

    invoke-virtual {v0}, Lsun/security/ssl/SessionId;->getId()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 303
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->cipherSuites:Lsun/security/ssl/CipherSuiteList;

    invoke-virtual {v0, p1}, Lsun/security/ssl/CipherSuiteList;->send(Lsun/security/ssl/HandshakeOutStream;)V

    .line 304
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->compression_methods:[B

    invoke-virtual {p1, v0}, Lsun/security/ssl/HandshakeOutStream;->putBytes8([B)V

    .line 305
    iget-object v0, p0, Lsun/security/ssl/HandshakeMessage$ClientHello;->extensions:Lsun/security/ssl/HelloExtensions;

    invoke-virtual {v0, p1}, Lsun/security/ssl/HelloExtensions;->send(Lsun/security/ssl/HandshakeOutStream;)V

    .line 298
    return-void
.end method
