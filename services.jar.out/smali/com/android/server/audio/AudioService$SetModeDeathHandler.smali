.class Lcom/android/server/audio/AudioService$SetModeDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetModeDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mMode:I

.field private mPid:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method static synthetic -get0(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    return v0
.end method

.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    iput-object p2, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 10

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get57(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    const-string/jumbo v4, "AudioService"

    const-string/jumbo v6, "setMode() client died"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get57(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_1

    const-string/jumbo v4, "AudioService"

    const-string/jumbo v6, "unregistered setMode() client died"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v5

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v3}, Lcom/android/server/audio/AudioService;->-wrap25(Lcom/android/server/audio/AudioService;I)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    iget v7, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    const-string/jumbo v8, "AudioService"

    const/4 v9, 0x0

    invoke-static {v4, v9, v6, v7, v8}, Lcom/android/server/audio/AudioService;->-wrap13(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getMode()I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    return v0
.end method

.method public getPid()I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mPid:I

    return v0
.end method

.method public setMode(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$SetModeDeathHandler;->mMode:I

    return-void
.end method
