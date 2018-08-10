.class public final Lcom/android/server/display/GoogleCastController;
.super Ljava/lang/Object;
.source "GoogleCastController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/GoogleCastController$1;
    }
.end annotation


# static fields
.field private static final CONNECTED_STATE:I = 0x1

.field private static final DISCONNECTED_STATE:I = 0x0

.field private static final GOOGLE_CAST_ROUTE_TYPE:I = 0x7

.field private static final TAG:Ljava/lang/String; = "GoogleCastController"


# instance fields
.field private mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;

.field private mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

.field private final mContext:Landroid/content/Context;

.field private mControllerUtils:Lcom/android/server/display/ControllerUtils;

.field private mHandler:Landroid/os/Handler;

.field private final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field private mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;


# direct methods
.method static synthetic -get0(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter$RouteInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/display/GoogleCastController;)Landroid/hardware/display/SemDeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/display/GoogleCastController;)Lcom/android/server/display/ControllerUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/display/GoogleCastController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/display/GoogleCastController;)Landroid/media/MediaRouter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/display/GoogleCastController;Landroid/media/MediaRouter$RouteInfo;)Landroid/media/MediaRouter$RouteInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/display/GoogleCastController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/GoogleCastController;->broadcastGoogleCastState(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/GoogleCastController;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/GoogleCastController;->setLastConnectedGoogleCast(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/PersistentDataStore;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/GoogleCastController$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/GoogleCastController$1;-><init>(Lcom/android/server/display/GoogleCastController;)V

    iput-object v0, p0, Lcom/android/server/display/GoogleCastController;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    iput-object p1, p0, Lcom/android/server/display/GoogleCastController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/display/GoogleCastController;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/server/display/GoogleCastController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "media_router"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;

    new-instance v0, Lcom/android/server/display/ControllerUtils;

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/display/ControllerUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/GoogleCastController;->mControllerUtils:Lcom/android/server/display/ControllerUtils;

    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v0}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    return-void
.end method

.method private broadcastGoogleCastState(I)V
    .locals 4

    const-string/jumbo v1, "GoogleCastController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "broadcastGCastState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.intent.action.GOOGLE_CAST_MIRRORING_CONNECTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendRemoteDisplayStateChangeEvent(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/GoogleCastController$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/display/GoogleCastController$2;-><init>(Lcom/android/server/display/GoogleCastController;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setLastConnectedGoogleCast(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    const-string/jumbo v0, "GoogleCastController"

    const-string/jumbo v1, "setLastConnectedGoogleCast"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/PersistentDataStore;->setLastConnectedGoogleCast(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v0}, Lcom/android/server/display/PersistentDataStore;->saveIfNeeded()V

    :cond_0
    return-void
.end method


# virtual methods
.method public getActiveDeviceInfo()Landroid/hardware/display/SemDeviceInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    return-object v0
.end method

.method public getLastConnectedGoogleCast(Landroid/hardware/display/SemDeviceInfo;)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    invoke-virtual {v1}, Lcom/android/server/display/PersistentDataStore;->getLastConnectedGoogleCast()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/hardware/display/SemDeviceInfo;->setKey(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/hardware/display/SemDeviceInfo;->setConnectType(I)V

    :cond_0
    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mActiveGoogleCast:Landroid/media/MediaRouter$RouteInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestDeviceConnect(Landroid/hardware/display/SemDeviceInfo;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    return-void
.end method

.method public requestDeviceDisconnect()V
    .locals 2

    new-instance v0, Landroid/hardware/display/SemDeviceInfo;

    invoke-direct {v0}, Landroid/hardware/display/SemDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/server/display/GoogleCastController;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    return-void
.end method

.method public updateDeviceState(Landroid/hardware/display/SemDeviceInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/GoogleCastController;->mConnectDeviceInfo:Landroid/hardware/display/SemDeviceInfo;

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getRemoteDisplayState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/SemDeviceInfo;->setRemoteDisplayState(I)V

    invoke-virtual {p1}, Landroid/hardware/display/SemDeviceInfo;->getRemoteDisplayState()I

    move-result v0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/GoogleCastController;->sendRemoteDisplayStateChangeEvent(II)V

    return-void
.end method
