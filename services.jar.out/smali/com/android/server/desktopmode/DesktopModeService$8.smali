.class Lcom/android/server/desktopmode/DesktopModeService$8;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Lcom/android/server/desktopmode/UiManager$InternalDialogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService;->showLaunchConfirmDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;

.field final synthetic val$coverPartiallySupported:Z

.field final synthetic val$externalDisplayConnected:Z


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iput-boolean p2, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->val$externalDisplayConnected:Z

    iput-boolean p3, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->val$coverPartiallySupported:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickButtonNegative()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap5(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0, v2}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    goto :goto_0
.end method

.method public onClickButtonPositive()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap5(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->scheduleUpdateDesktopMode(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/DesktopModeService;->setHdmiSettings(Z)V

    goto :goto_0
.end method

.method public onDismiss()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->val$externalDisplayConnected:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->val$coverPartiallySupported:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-get3(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v2, v6, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeHwManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/desktopmode/DesktopModeHwManager;->disableCoverManager(Z)V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-get19(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object v2

    const/16 v3, 0x67

    const/16 v4, 0x6f

    invoke-virtual {v2, v3, v4}, Lcom/android/server/desktopmode/UiManager;->dismissPresentation(II)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-get3(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v6, v3}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2}, Lcom/android/server/desktopmode/DesktopModeService;->-get19(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/desktopmode/UiManager;->getCurrentDialogType()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v2, v6, v5}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap20(Lcom/android/server/desktopmode/DesktopModeService;II)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/4 v3, 0x1

    invoke-static {v2, v5, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap31(Lcom/android/server/desktopmode/DesktopModeService;ZZ)V

    return-void
.end method

.method public onShow()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->val$externalDisplayConnected:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get19(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object v1

    const/16 v4, 0x67

    const/16 v5, 0x6f

    invoke-virtual {v1, v4, v5}, Lcom/android/server/desktopmode/UiManager;->showPresentation(II)V

    iget-boolean v1, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->val$coverPartiallySupported:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get6(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeHwManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/desktopmode/DesktopModeHwManager;->disableCoverManager(Z)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get3(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v7, v4}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->compareTo(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1}, Lcom/android/server/desktopmode/DesktopModeService;->-get19(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/UiManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/desktopmode/UiManager;->getCurrentDialogType()I

    move-result v0

    if-eq v0, v7, :cond_1

    if-ne v0, v6, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const/16 v4, 0xa

    invoke-static {v1, v7, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap20(Lcom/android/server/desktopmode/DesktopModeService;II)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/desktopmode/DesktopModeService$8;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v1, v6}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap32(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    return-void
.end method
