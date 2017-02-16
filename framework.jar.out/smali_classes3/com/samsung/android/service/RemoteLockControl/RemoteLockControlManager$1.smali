.class Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;
.super Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;
.source "RemoteLockControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    .prologue
    .line 725
    iput-object p1, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteLockMonitorCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public changeRemoteLockState(Lcom/android/internal/widget/RemoteLockInfo;)V
    .locals 3
    .param p1, "data"    # Lcom/android/internal/widget/RemoteLockInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 729
    const-string/jumbo v0, "RlcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeRemoteLockState data = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return-void
.end method

.method public checkRemoteLockPassword(Ljava/lang/String;)I
    .locals 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 735
    const/4 v1, -0x1

    .line 737
    .local v1, "failureCount":I
    const-string/jumbo v2, "RlcManager"

    const-string/jumbo v3, "checkRemoteLockPassword"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager$1;->this$0:Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v2, p1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->completeUnlocking(Ljava/lang/String;)I

    move-result v1

    .line 742
    if-nez v1, :cond_0

    .line 743
    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->-get1()Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 744
    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->-get1()Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/service/RemoteLockControl/IRemoteLockControlListener;->onUnlockedByPasscode()V

    .line 758
    :cond_0
    :goto_0
    return v1

    .line 746
    :cond_1
    const-string/jumbo v2, "RlcManager"

    const-string/jumbo v3, "RemoteLockControlListener is null, can\'t call onUnlockedByPasscode()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 750
    :catch_0
    move-exception v0

    .line 751
    .local v0, "e":Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 754
    invoke-static {}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->-get0()Z

    move-result v2

    if-nez v2, :cond_0

    .line 755
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Error in RLC Manager internally"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
