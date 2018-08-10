.class public Lcom/android/settings/vpn2/ConnectivityManagerWrapperImpl;
.super Ljava/lang/Object;
.source "ConnectivityManagerWrapperImpl.java"

# interfaces
.implements Lcom/android/settings/vpn2/ConnectivityManagerWrapper;


# instance fields
.field private final mCm:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/vpn2/ConnectivityManagerWrapperImpl;->mCm:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/vpn2/ConnectivityManagerWrapperImpl;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/vpn2/ConnectivityManagerWrapperImpl;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/vpn2/ConnectivityManagerWrapperImpl;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getGlobalProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    return-object v0
.end method

.method public registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/vpn2/ConnectivityManagerWrapperImpl;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public startCaptivePortalApp(Landroid/net/Network;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/vpn2/ConnectivityManagerWrapperImpl;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V

    return-void
.end method
