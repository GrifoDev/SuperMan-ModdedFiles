.class Lcom/android/server/cover/CoverManagerServiceImpl$4;
.super Ljava/lang/Object;
.source "CoverManagerServiceImpl.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/CoverManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cover/CoverManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/cover/CoverManagerServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cover/CoverManagerServiceImpl$4;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopModeStateChanged(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$4;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get7(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDesktopModeStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x1e

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$4;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get11(Lcom/android/server/cover/CoverManagerServiceImpl;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$4;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get11(Lcom/android/server/cover/CoverManagerServiceImpl;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$4;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get11(Lcom/android/server/cover/CoverManagerServiceImpl;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$4;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get10(Lcom/android/server/cover/CoverManagerServiceImpl;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$4;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get10(Lcom/android/server/cover/CoverManagerServiceImpl;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$4;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get10(Lcom/android/server/cover/CoverManagerServiceImpl;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    const/16 v1, 0x32

    if-ne v1, v0, :cond_2

    invoke-static {}, Lcom/android/server/cover/CoverManagerUtils;->isSupportCoverLoggingPopupFeature()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$4;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get6(Lcom/android/server/cover/CoverManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$4;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get5(Lcom/android/server/cover/CoverManagerServiceImpl;)Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$4;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get2(Lcom/android/server/cover/CoverManagerServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$4;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-get2(Lcom/android/server/cover/CoverManagerServiceImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerUtils;->isAgreementNotGranted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/cover/CoverManagerServiceImpl$4;->this$0:Lcom/android/server/cover/CoverManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/cover/CoverManagerServiceImpl;->-wrap3(Lcom/android/server/cover/CoverManagerServiceImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
