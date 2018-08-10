.class public Landroid/net/IpSecTransform$Builder;
.super Ljava/lang/Object;
.source "IpSecTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConfig:Landroid/net/IpSecConfig;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/net/IpSecTransform$Builder;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/net/IpSecConfig;

    invoke-direct {v0}, Landroid/net/IpSecConfig;-><init>()V

    iput-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    return-void
.end method


# virtual methods
.method public buildTransportModeTransform(Ljava/net/InetAddress;)Landroid/net/IpSecTransform;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    const/4 v1, 0x1

    iput v1, v0, Landroid/net/IpSecConfig;->mode:I

    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iput-object p1, v0, Landroid/net/IpSecConfig;->remoteAddress:Ljava/net/InetAddress;

    new-instance v0, Landroid/net/IpSecTransform;

    iget-object v1, p0, Landroid/net/IpSecTransform$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/IpSecTransform;-><init>(Landroid/content/Context;Landroid/net/IpSecConfig;Landroid/net/IpSecTransform;)V

    invoke-static {v0}, Landroid/net/IpSecTransform;->-wrap0(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform;

    move-result-object v0

    return-object v0
.end method

.method public buildTunnelModeTransform(Ljava/net/InetAddress;Ljava/net/InetAddress;)Landroid/net/IpSecTransform;
    .locals 4

    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iput-object p1, v0, Landroid/net/IpSecConfig;->localAddress:Ljava/net/InetAddress;

    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iput-object p2, v0, Landroid/net/IpSecConfig;->remoteAddress:Ljava/net/InetAddress;

    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/IpSecConfig;->mode:I

    new-instance v0, Landroid/net/IpSecTransform;

    iget-object v1, p0, Landroid/net/IpSecTransform$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/IpSecTransform;-><init>(Landroid/content/Context;Landroid/net/IpSecConfig;Landroid/net/IpSecTransform;)V

    return-object v0
.end method

.method public setAuthentication(ILandroid/net/IpSecAlgorithm;)Landroid/net/IpSecTransform$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iget-object v0, v0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, p1

    iput-object p2, v0, Landroid/net/IpSecConfig$Flow;->authentication:Landroid/net/IpSecAlgorithm;

    return-object p0
.end method

.method public setEncryption(ILandroid/net/IpSecAlgorithm;)Landroid/net/IpSecTransform$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iget-object v0, v0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, p1

    iput-object p2, v0, Landroid/net/IpSecConfig$Flow;->encryption:Landroid/net/IpSecAlgorithm;

    return-object p0
.end method

.method public setIpv4Encapsulation(Landroid/net/IpSecManager$UdpEncapsulationSocket;I)Landroid/net/IpSecTransform$Builder;
    .locals 2

    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    const/4 v1, 0x1

    iput v1, v0, Landroid/net/IpSecConfig;->encapType:I

    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {p1}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->getPort()I

    move-result v1

    iput v1, v0, Landroid/net/IpSecConfig;->encapLocalPort:I

    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iput p2, v0, Landroid/net/IpSecConfig;->encapRemotePort:I

    return-object p0
.end method

.method public setNattKeepalive(I)Landroid/net/IpSecTransform$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iput p1, v0, Landroid/net/IpSecConfig;->nattKeepaliveInterval:I

    return-object p0
.end method

.method public setSpi(ILandroid/net/IpSecManager$SecurityParameterIndex;)Landroid/net/IpSecTransform$Builder;
    .locals 2

    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iget-object v0, v0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, p1

    invoke-virtual {p2}, Landroid/net/IpSecManager$SecurityParameterIndex;->getSpi()I

    move-result v1

    iput v1, v0, Landroid/net/IpSecConfig$Flow;->spi:I

    return-object p0
.end method

.method public setUnderlyingNetwork(Landroid/net/Network;)Landroid/net/IpSecTransform$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iput-object p1, v0, Landroid/net/IpSecConfig;->network:Landroid/net/Network;

    return-object p0
.end method
