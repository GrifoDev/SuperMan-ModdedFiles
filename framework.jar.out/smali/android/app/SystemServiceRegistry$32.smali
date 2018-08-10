.class final Landroid/app/SystemServiceRegistry$32;
.super Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.source "SystemServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/SystemServiceRegistry$CachedServiceFetcher",
        "<",
        "Landroid/net/wifi/WifiOffloadManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Landroid/net/wifi/WifiOffloadManager;
    .locals 4

    const-string/jumbo v2, "wifioffload"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IWifiOffloadManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiOffloadManager;

    move-result-object v1

    const-string/jumbo v2, "SystemServiceRegistry"

    const-string/jumbo v3, "return wifioffload service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/net/wifi/WifiOffloadManager;

    invoke-direct {v2, v1}, Landroid/net/wifi/WifiOffloadManager;-><init>(Landroid/net/wifi/IWifiOffloadManager;)V

    return-object v2
.end method

.method public bridge synthetic createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$32;->createService(Landroid/app/ContextImpl;)Landroid/net/wifi/WifiOffloadManager;

    move-result-object v0

    return-object v0
.end method
