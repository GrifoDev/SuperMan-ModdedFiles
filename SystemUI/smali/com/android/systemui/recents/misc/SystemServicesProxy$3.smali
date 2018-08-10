.class Lcom/android/systemui/recents/misc/SystemServicesProxy$3;
.super Landroid/app/TaskStackListener;
.source "SystemServicesProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/misc/SystemServicesProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTmpListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->mTmpListeners:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onActivityDismissingDockedStack()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onActivityForcedResizable(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p2, p3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onActivityLaunchOnSecondaryDisplayFailed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onActivityPinned(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v2, 0x66

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onActivityUnpinned()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v1, 0x67

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPinnedActivityRestartAttempt(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v3, 0x68

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onPinnedStackAnimationEnded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v1, 0x6a

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPinnedStackAnimationStarted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v1, 0x69

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTaskProfileLocked(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTaskSnapshotChanged(ILandroid/app/ActivityManager$TaskSnapshot;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {p2}, Lcom/android/systemui/recents/model/ThumbnailData;->createFromTaskSnapshot(Landroid/app/ActivityManager$TaskSnapshot;)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v1

    const/16 v2, 0x6f

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTaskStackChanged()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/16 v4, 0x65

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->mTmpListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->mTmpListeners:Ljava/util/List;

    iget-object v3, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get1(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->mTmpListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->mTmpListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;

    invoke-virtual {v1}, Lcom/samsung/systemui/splugins/recents/misc/PluginSystemServicesProxy$TaskStackListener;->onTaskStackChangedBackground()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/misc/SystemServicesProxy$3;->this$0:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->-get0(Lcom/android/systemui/recents/misc/SystemServicesProxy;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
