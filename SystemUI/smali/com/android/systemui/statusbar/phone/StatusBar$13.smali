.class Lcom/android/systemui/statusbar/phone/StatusBar$13;
.super Lcom/android/systemui/KnoxStateMonitorCallback;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersonaLaunch(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap37(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    return-void
.end method

.method public onPersonaStateChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    return-void
.end method

.method public onRCPPolicyChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNotifications()V

    return-void
.end method

.method public onUpdateNavigationBarHidden()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->-set14(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNavigationBarHidden()V

    return-void
.end method

.method public onUpdateQuickPanelButtonUsers()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateQuickSettingPanelVisibility()V

    return-void
.end method

.method public onUpdateQuickPanelButtons()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get43(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/bar/QSBarController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get43(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/bar/QSBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/QSBarController;->updateQSBarAvailable()V

    :cond_0
    return-void
.end method

.method public onUpdateStatusBarHidden()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap44(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public onUpdateStatusBarIcons()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap45(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public onUpdateStatusBarText()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$13;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/StatusBar;->mState:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setKnoxCustomStatusBarText(I)V

    :cond_0
    return-void
.end method
