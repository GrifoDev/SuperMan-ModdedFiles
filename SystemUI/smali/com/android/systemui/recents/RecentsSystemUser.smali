.class public Lcom/android/systemui/recents/RecentsSystemUser;
.super Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;
.source "RecentsSystemUser.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImpl:Lcom/android/systemui/recents/RecentsImpl;

.field private final mNonSystemUserRecents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/RecentsSystemUser;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mNonSystemUserRecents:Landroid/util/SparseArray;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImpl;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/recents/IRecentsSystemUserCallbacks$Stub;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mNonSystemUserRecents:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    return-void
.end method


# virtual methods
.method public getNonSystemUserRecentsForUser(I)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mNonSystemUserRecents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    return-object v0
.end method

.method synthetic lambda$-com_android_systemui_recents_RecentsSystemUser_3540(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/recents/RecentsImpl;->onVisibilityChanged(Landroid/content/Context;Z)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_RecentsSystemUser_3731(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/recents/RecentsImpl;->onStartScreenPinning(Landroid/content/Context;I)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_recents_RecentsSystemUser_4600(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mImpl:Lcom/android/systemui/recents/RecentsImpl;

    iget-object v1, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/recents/RecentsImpl;->onStartSnapView(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public registerNonSystemUserCallbacks(Landroid/os/IBinder;I)V
    .locals 5

    :try_start_0
    invoke-static {p1}, Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/recents/RecentsSystemUser$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/systemui/recents/RecentsSystemUser$1;-><init>(Lcom/android/systemui/recents/RecentsSystemUser;Lcom/android/systemui/recents/IRecentsNonSystemUserCallbacks;I)V

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mNonSystemUserRecents:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const v3, 0x8cdc

    invoke-static {v3, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "RecentsSystemUser"

    const-string/jumbo v3, "Failed to register NonSystemUserCallbacks"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeNonSystemUserRecentsForUser(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/RecentsSystemUser;->mNonSystemUserRecents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public sendDockingTopTaskEvent(ILandroid/graphics/Rect;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/recents/events/activity/DockedTopTaskEvent;-><init>(ILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public sendLaunchRecentsEvent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/RecentsActivityStartingEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public sendRecentsDrawnEvent()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/ui/RecentsDrawnEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public sendUndockingTaskEvent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;

    invoke-direct {v1}, Lcom/android/systemui/recents/events/activity/UndockingTaskEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method public startScreenPinning(I)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/-$Lambda$s3onfRoxdAGXRhy8h9aH8AYjDzM$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/recents/-$Lambda$s3onfRoxdAGXRhy8h9aH8AYjDzM$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startSnapView(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/-$Lambda$s3onfRoxdAGXRhy8h9aH8AYjDzM;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recents/-$Lambda$s3onfRoxdAGXRhy8h9aH8AYjDzM;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateRecentsVisibility(Z)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/-$Lambda$s3onfRoxdAGXRhy8h9aH8AYjDzM$2;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/recents/-$Lambda$s3onfRoxdAGXRhy8h9aH8AYjDzM$2;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
