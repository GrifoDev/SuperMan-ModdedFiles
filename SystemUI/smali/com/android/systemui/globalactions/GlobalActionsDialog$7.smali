.class Lcom/android/systemui/globalactions/GlobalActionsDialog$7;
.super Landroid/content/BroadcastReceiver;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get22(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "GlobalActionsDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mBroadcastReceiver : onReceive : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get38(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get38(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/app/KeyguardManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    :goto_0
    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_6

    :cond_1
    const-string/jumbo v3, ""

    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    const-string/jumbo v4, "globalactions"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "GlobalActionsDialog"

    const-string/jumbo v6, "mBroadcastReceiver : onReceive : MESSAGE_DISMISS"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4, v8}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set8(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z

    :cond_3
    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get22(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    :goto_1
    return-void

    :cond_5
    move v4, v5

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "PHONE_IN_ECM_STATE"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get34(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set13(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z

    const-string/jumbo v4, "GlobalActionsDialog"

    const-string/jumbo v5, "mBroadcastReceiver changeAirplaneModeSystemSetting called "

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4, v8}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap21(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)V

    goto :goto_1

    :cond_7
    const-string/jumbo v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "GlobalActionsDialog"

    const-string/jumbo v5, "ACTION_SUBINFO_RECORD_UPDATED received"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap39(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-object v5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get11(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-wrap35(Lcom/android/systemui/globalactions/GlobalActionsDialog;Landroid/content/Context;)V

    goto :goto_1

    :cond_8
    const-string/jumbo v4, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get22(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_9
    const-string/jumbo v4, "ACTION_DUALMODE_SETTING"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get22(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_a
    const-string/jumbo v4, "com.samsung.keyguard.KEYGUARD_STATE_UPDATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string/jumbo v4, "bouncerShowing"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get16(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get16(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v6, 0x8

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get16(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->dismiss()V

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4, v9}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set3(Lcom/android/systemui/globalactions/GlobalActionsDialog;Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;

    invoke-static {v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set19(Z)Z

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4, v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set7(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)Z

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v4, "POWER_OFF_CANCEL"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string/jumbo v4, "GlobalActionsDialog"

    const-string/jumbo v6, "ACTION_POWER_OFF_CANCEL received"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get22(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v4, "POWER_OFF_ANIMATION_START"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "GlobalActionsDialog"

    const-string/jumbo v6, "ACTION_POWER_OFF_ANIMATION_START received"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get22(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v4

    const-string/jumbo v6, "GlobalActions"

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$7;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {v4}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get22(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v6, 0x7d0

    invoke-virtual {v4, v2, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1
.end method
