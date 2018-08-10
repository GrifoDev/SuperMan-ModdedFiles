.class Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocalOnlyHotspotObserverProxy"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;

.field private final mMessenger:Landroid/os/Messenger;

.field private final mWifiManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/net/wifi/WifiManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mWifiManager:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method constructor <init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mWifiManager:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mLooper:Landroid/os/Looper;

    new-instance v0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$1;

    invoke-direct {v0, p0, p2, p3}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$1;-><init>(Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;)V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mMessenger:Landroid/os/Messenger;

    return-void
.end method


# virtual methods
.method public getMessenger()Landroid/os/Messenger;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mMessenger:Landroid/os/Messenger;

    return-object v0
.end method

.method public registered()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    return-void
.end method
