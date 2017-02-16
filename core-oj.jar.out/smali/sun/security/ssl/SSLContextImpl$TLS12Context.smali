.class public final Lsun/security/ssl/SSLContextImpl$TLS12Context;
.super Lsun/security/ssl/SSLContextImpl;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TLS12Context"
.end annotation


# static fields
.field private static defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

.field private static defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

.field private static supportedSSLParams:Ljavax/net/ssl/SSLParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 721
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    .line 723
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    new-array v1, v6, [Ljava/lang/String;

    .line 724
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 725
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 726
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 723
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 729
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

    .line 731
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    .line 732
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    new-array v1, v6, [Ljava/lang/String;

    .line 733
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 734
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 735
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 732
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 714
    :goto_0
    return-void

    .line 739
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    .line 740
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 741
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 742
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 743
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 744
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v6

    .line 745
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v7

    .line 740
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 748
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

    .line 750
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    .line 751
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    new-array v1, v7, [Ljava/lang/String;

    .line 752
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 753
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 754
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 755
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v6

    .line 751
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0}, Lsun/security/ssl/SSLContextImpl;-><init>()V

    return-void
.end method


# virtual methods
.method getDefaultClientSSLParams()Ljavax/net/ssl/SSLParameters;
    .locals 1

    .prologue
    .line 765
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    return-object v0
.end method

.method getDefaultServerSSLParams()Ljavax/net/ssl/SSLParameters;
    .locals 1

    .prologue
    .line 761
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

    return-object v0
.end method

.method getSupportedSSLParams()Ljavax/net/ssl/SSLParameters;
    .locals 1

    .prologue
    .line 769
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS12Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    return-object v0
.end method
