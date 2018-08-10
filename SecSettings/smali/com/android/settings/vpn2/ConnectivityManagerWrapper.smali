.class public interface abstract Lcom/android/settings/vpn2/ConnectivityManagerWrapper;
.super Ljava/lang/Object;
.source "ConnectivityManagerWrapper.java"


# virtual methods
.method public abstract getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;
.end method

.method public abstract getConnectivityManager()Landroid/net/ConnectivityManager;
.end method

.method public abstract getGlobalProxy()Landroid/net/ProxyInfo;
.end method

.method public abstract registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
.end method

.method public abstract startCaptivePortalApp(Landroid/net/Network;)V
.end method
