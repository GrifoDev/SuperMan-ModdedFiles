.class Lcom/sec/android/cover/manager/CoverPopupManager$2;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "CoverPopupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/manager/CoverPopupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/CoverPopupManager;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/CoverPopupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPopupManager$2;->this$0:Lcom/sec/android/cover/manager/CoverPopupManager;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverAppCovered(Z)V
    .locals 3

    const-string/jumbo v0, "CoverPopupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCoverAppCovered() covered = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager$2;->this$0:Lcom/sec/android/cover/manager/CoverPopupManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->dismissPopupDialog()V

    :cond_0
    return-void
.end method

.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "CoverPopupManager"

    const-string/jumbo v1, "onCoverStateChanged() cover open"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager$2;->this$0:Lcom/sec/android/cover/manager/CoverPopupManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->dismissPopupDialog()V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    const-string/jumbo v0, "CoverPopupManager"

    const-string/jumbo v1, "onScreenTurnedOff()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager$2;->this$0:Lcom/sec/android/cover/manager/CoverPopupManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->dismissPopupDialog()V

    return-void
.end method
