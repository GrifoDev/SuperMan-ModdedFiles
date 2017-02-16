.class Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;
.super Lsun/security/ssl/SSLContextImpl;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConservativeSSLContext"
.end annotation


# static fields
.field private static defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

.field private static defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

.field private static supportedSSLParams:Ljavax/net/ssl/SSLParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 431
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    sput-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    .line 433
    sget-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    new-array v1, v3, [Ljava/lang/String;

    .line 434
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 435
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 436
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v6

    .line 433
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 439
    sget-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    sput-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

    .line 441
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    sput-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    .line 442
    sget-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    new-array v1, v5, [Ljava/lang/String;

    .line 443
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 442
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 424
    :goto_0
    return-void

    .line 447
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    sput-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    .line 448
    sget-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 449
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 450
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 451
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v6

    .line 452
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 453
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 448
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 456
    sget-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    sput-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

    .line 458
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    sput-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    .line 459
    sget-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    new-array v1, v6, [Ljava/lang/String;

    .line 460
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 461
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 459
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Lsun/security/ssl/SSLContextImpl;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;-><init>()V

    return-void
.end method


# virtual methods
.method getDefaultClientSSLParams()Ljavax/net/ssl/SSLParameters;
    .locals 1

    .prologue
    .line 471
    sget-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    return-object v0
.end method

.method getDefaultServerSSLParams()Ljavax/net/ssl/SSLParameters;
    .locals 1

    .prologue
    .line 467
    sget-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

    return-object v0
.end method

.method getSupportedSSLParams()Ljavax/net/ssl/SSLParameters;
    .locals 1

    .prologue
    .line 475
    sget-object v0, Lsun/security/ssl/SSLContextImpl$ConservativeSSLContext;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    return-object v0
.end method
