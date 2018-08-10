.class Lcom/android/systemui/statusbar/phone/StatusBar$10;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamingStateChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->maybeEscalateHeadsUp()V

    :cond_0
    return-void
.end method

.method public onFotaPreinstallerFinish()V
    .locals 2

    const-string/jumbo v0, "StatusBar"

    const-string/jumbo v1, "onFotaPreinstallerFinish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get50(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->refreshTileList()V

    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set0(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getTaskBar()Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getTaskBar()Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getTaskBarView()Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/views/TaskBarView;->updateIsKeyguardState()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set0(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    goto :goto_0
.end method

.method public onSecurityModeChanged(Z)V
    .locals 3

    const-string/jumbo v0, "StatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSecurityModeChanged isSecure = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set11(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get25(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get26(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get3(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->disableSwipeLockTouch(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get26(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap27(Lcom/android/systemui/statusbar/phone/StatusBar;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap38(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap43(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->updateBackgroundAlpha()V

    :cond_0
    return-void
.end method
