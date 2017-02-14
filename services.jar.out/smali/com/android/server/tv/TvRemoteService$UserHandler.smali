.class final Lcom/android/server/tv/TvRemoteService$UserHandler;
.super Landroid/os/Handler;
.source "TvRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserHandler"
.end annotation


# static fields
.field public static final MSG_INPUT_BRIDGE_CONNECTED:I = 0x2

.field public static final MSG_START:I = 0x1


# instance fields
.field private mRunning:Z

.field private final mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;

.field final synthetic this$0:Lcom/android/server/tv/TvRemoteService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteService$UserProvider;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/tv/TvRemoteService$UserHandler;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    new-instance v0, Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-direct {v0, p3, p2, p0}, Lcom/android/server/tv/TvRemoteProviderWatcher;-><init>(Landroid/content/Context;Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserHandler;->mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;

    return-void
.end method

.method private start()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteService$UserHandler;->mRunning:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteService$UserHandler;->mRunning:Z

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserHandler;->mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-virtual {v0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteService$UserHandler;->start()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/tv/TvRemoteService$UserHandler;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v2}, Lcom/android/server/tv/TvRemoteService;->-get2(Lcom/android/server/tv/TvRemoteService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/tv/TvRemoteProviderProxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/server/tv/TvRemoteProviderProxy;->inputBridgeConnected(Landroid/os/IBinder;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
