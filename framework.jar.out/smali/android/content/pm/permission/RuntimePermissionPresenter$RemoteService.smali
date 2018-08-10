.class final Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;
.super Landroid/os/Handler;
.source "RuntimePermissionPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/permission/RuntimePermissionPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RemoteService"
.end annotation


# static fields
.field public static final MSG_GET_APPS_USING_PERMISSIONS:I = 0x2

.field public static final MSG_GET_APP_PERMISSIONS:I = 0x1

.field public static final MSG_UNBIND:I = 0x3

.field private static final UNBIND_TIMEOUT_MILLIS:J = 0x2710L


# instance fields
.field private mBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mPendingWork:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    iput-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private scheduleNextMessageIfNeededLocked()V
    .locals 3

    iget-boolean v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    invoke-virtual {p0, v0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private scheduleUnbind()V
    .locals 3

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->removeMessages(I)V

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v6, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleNextMessageIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit v6

    return-void

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    iget-object v6, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    iget-object v5, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    if-nez v5, :cond_0

    return-void

    :catchall_0
    move-exception v7

    monitor-exit v6

    throw v7

    :cond_0
    :try_start_2
    new-instance v6, Landroid/os/RemoteCallback;

    new-instance v7, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;

    invoke-direct {v7, p0, v2, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$1;-><init>(Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;Landroid/os/Handler;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;)V

    invoke-direct {v6, v7, p0}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;Landroid/os/Handler;)V

    invoke-interface {v5, v3, v6}, Landroid/content/pm/permission/IRuntimePermissionPresenter;->getAppPermissions(Ljava/lang/String;Landroid/os/RemoteCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleUnbind()V

    goto :goto_0

    :catch_0
    move-exception v4

    const-string/jumbo v6, "RuntimePermPresenter"

    const-string/jumbo v7, "Error getting app permissions"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :pswitch_2
    iget-object v7, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_3
    iget-boolean v6, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    :cond_1
    const/4 v6, 0x0

    iput-object v6, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v7

    throw v6

    :catchall_2
    move-exception v7

    monitor-exit v6

    throw v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p2}, Landroid/content/pm/permission/IRuntimePermissionPresenter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/permission/IRuntimePermissionPresenter;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;

    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleNextMessageIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mRemoteInstance:Landroid/content/pm/permission/IRuntimePermissionPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public processMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.permissionpresenterservice.RuntimePermissionPresenterService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, p0, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mBound:Z

    :cond_0
    iget-object v1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->mPendingWork:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->scheduleNextMessageIfNeededLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
