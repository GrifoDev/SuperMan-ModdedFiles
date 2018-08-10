.class Lcom/android/systemui/statusbar/phone/StatusBar$17;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->dismiss()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs()V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar$17;->getSendingUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCurrentProfile(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x0

    const-string/jumbo v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v4, "recentapps"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x2

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->notifyHeadsUpScreenOff()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-wrap12(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->resetUserExpandedStates()V

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "android.app.action.SHOW_DEVICE_MONITORING_DIALOG"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get44(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->showDeviceMonitoringDialog()V

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "com.sec.aecmonitor.ONE_CYCLE_FINISH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateExpandNotificationsPanel()V

    :cond_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/StatusBar$H;

    new-instance v5, Lcom/android/systemui/statusbar/phone/StatusBar$17$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/StatusBar$17$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBar$17;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/systemui/statusbar/phone/StatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_7
    const-string/jumbo v4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/StatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get24(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get27(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->updatePowerSaver(ZZ)V

    goto :goto_0

    :cond_8
    const-string/jumbo v4, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get37(Lcom/android/systemui/statusbar/phone/StatusBar;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get33(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get33(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/StatusBar;->mContext:Landroid/content/Context;

    const v6, 0x7f0600e4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarCurrentColor(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->-get33(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarHideEnabled(Z)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v4, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onOpenThemeChanged()V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v4, "com.samsung.applock.intent.action.APPLOCKED_STATUS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "com.samsung.applock.status.APPLOCK_CHECKED_STATUS"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/StatusBar$17;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->animateCollapsePanels()V

    goto/16 :goto_0
.end method
