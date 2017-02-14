.class final Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserManagerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/RunningState;

.field private volatile usersChanged:Z


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/RunningState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;-><init>(Lcom/android/settings/applications/RunningState;)V

    return-void
.end method


# virtual methods
.method public checkUsersChangedLocked()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->usersChanged:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->usersChanged:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v1, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->this$0:Lcom/android/settings/applications/RunningState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->usersChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method register(Landroid/content/Context;)V
    .locals 6

    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.USER_STOPPED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_STARTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v1, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
