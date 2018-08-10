.class public Landroid/net/NetworkRequest$Builder;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-void
.end method


# virtual methods
.method public addCapability(I)Landroid/net/NetworkRequest$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public addTransportType(I)Landroid/net/NetworkRequest$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public build()Landroid/net/NetworkRequest;
    .locals 5

    new-instance v0, Landroid/net/NetworkCapabilities;

    iget-object v1, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v0, v1}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->maybeMarkCapabilitiesRestricted()V

    new-instance v1, Landroid/net/NetworkRequest;

    sget-object v2, Landroid/net/NetworkRequest$Type;->NONE:Landroid/net/NetworkRequest$Type;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {v1, v0, v3, v4, v2}, Landroid/net/NetworkRequest;-><init>(Landroid/net/NetworkCapabilities;IILandroid/net/NetworkRequest$Type;)V

    return-object v1
.end method

.method public clearCapabilities()Landroid/net/NetworkRequest$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->clearAll()V

    return-object p0
.end method

.method public removeCapability(I)Landroid/net/NetworkRequest$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public removeTransportType(I)Landroid/net/NetworkRequest$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->removeTransportType(I)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public setCapabilities(Landroid/net/NetworkCapabilities;)Landroid/net/NetworkRequest$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->clearAll()V

    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->combineCapabilities(Landroid/net/NetworkCapabilities;)V

    return-object p0
.end method

.method public setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkRequest$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)V

    return-object p0
.end method

.method public setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkRequest$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)V

    return-object p0
.end method

.method public setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;
    .locals 1

    invoke-static {p1}, Landroid/net/MatchAllNetworkSpecifier;->checkNotMatchAllNetworkSpecifier(Landroid/net/NetworkSpecifier;)V

    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public setNetworkSpecifier(Ljava/lang/String;)Landroid/net/NetworkRequest$Builder;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/net/StringNetworkSpecifier;

    invoke-direct {v0, p1}, Landroid/net/StringNetworkSpecifier;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSignalStrength(I)Landroid/net/NetworkRequest$Builder;
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkRequest$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, p1}, Landroid/net/NetworkCapabilities;->setSignalStrength(I)V

    return-object p0
.end method
