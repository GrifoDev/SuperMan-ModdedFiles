.class public final Lsun/security/ssl/SSLContextImpl$TLS11Context;
.super Lsun/security/ssl/SSLContextImpl;
.source "SSLContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/ssl/SSLContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TLS11Context"
.end annotation


# static fields
.field private static defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

.field private static defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

.field private static supportedSSLParams:Ljavax/net/ssl/SSLParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 659
    invoke-static {}, Lsun/security/ssl/SunJSSE;->isFIPS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    .line 661
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    new-array v1, v7, [Ljava/lang/String;

    .line 662
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 663
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 664
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v6

    .line 661
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 667
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

    .line 669
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    .line 670
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    new-array v1, v6, [Ljava/lang/String;

    .line 671
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 672
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 670
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 652
    :goto_0
    return-void

    .line 676
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    .line 677
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    .line 678
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 679
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 680
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v6

    .line 681
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v7

    .line 682
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS12:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 677
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    .line 685
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

    .line 687
    new-instance v0, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v0}, Ljavax/net/ssl/SSLParameters;-><init>()V

    sput-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    .line 688
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    new-array v1, v7, [Ljava/lang/String;

    .line 689
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->SSL30:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v4

    .line 690
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS10:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v5

    .line 691
    sget-object v2, Lsun/security/ssl/ProtocolVersion;->TLS11:Lsun/security/ssl/ProtocolVersion;

    iget-object v2, v2, Lsun/security/ssl/ProtocolVersion;->name:Ljava/lang/String;

    aput-object v2, v1, v6

    .line 688
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setProtocols([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 652
    invoke-direct {p0}, Lsun/security/ssl/SSLContextImpl;-><init>()V

    return-void
.end method


# virtual methods
.method getDefaultClientSSLParams()Ljavax/net/ssl/SSLParameters;
    .locals 1

    .prologue
    .line 701
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->defaultClientSSLParams:Ljavax/net/ssl/SSLParameters;

    return-object v0
.end method

.method getDefaultServerSSLParams()Ljavax/net/ssl/SSLParameters;
    .locals 1

    .prologue
    .line 697
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->defaultServerSSLParams:Ljavax/net/ssl/SSLParameters;

    return-object v0
.end method

.method getSupportedSSLParams()Ljavax/net/ssl/SSLParameters;
    .locals 1

    .prologue
    .line 705
    sget-object v0, Lsun/security/ssl/SSLContextImpl$TLS11Context;->supportedSSLParams:Ljavax/net/ssl/SSLParameters;

    return-object v0
.end method
