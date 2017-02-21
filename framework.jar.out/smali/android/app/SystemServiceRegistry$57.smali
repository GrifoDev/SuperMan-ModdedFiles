.class final Landroid/app/SystemServiceRegistry$57;
.super Landroid/app/SystemServiceRegistry$StaticServiceFetcher;
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
        "Landroid/app/SystemServiceRegistry$StaticServiceFetcher",
        "<",
        "Landroid/net/wifi/nan/WifiNanManager;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/SystemServiceRegistry$StaticServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService()Landroid/net/wifi/nan/WifiNanManager;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v2, "wifinan"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/nan/IWifiNanManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nan/IWifiNanManager;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    new-instance v2, Landroid/net/wifi/nan/WifiNanManager;

    invoke-direct {v2, v1}, Landroid/net/wifi/nan/WifiNanManager;-><init>(Landroid/net/wifi/nan/IWifiNanManager;)V

    return-object v2
.end method

.method public bridge synthetic createService()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/app/SystemServiceRegistry$57;->createService()Landroid/net/wifi/nan/WifiNanManager;

    move-result-object v0

    return-object v0
.end method
