.class Lcom/android/server/policy/SamsungPhoneWindowManager$8;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, -0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/android/server/policy/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getPenState()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v5, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    const-string/jumbo v6, "penInsert"

    if-ne v1, v3, :cond_3

    move v2, v3

    :goto_0
    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    const-string/jumbo v5, "isScreenOn"

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    const-string/jumbo v5, "isKeyguardLocked"

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v6}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-boolean v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mBootCompleted:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "any_screen_enabled"

    invoke-static {v5, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set6(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "one_handed_op_wakeup_type"

    invoke-static {v5, v6, v3, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set7(Lcom/android/server/policy/SamsungPhoneWindowManager;I)I

    sget-boolean v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->SAFE_DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SamsungPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "userSwitched.  mEasyOneHandEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get6(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", mEasyOneHandTriggerType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v6}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get7(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get6(Lcom/android/server/policy/SamsungPhoneWindowManager;)I

    move-result v2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$8;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/SamsungPhoneWindowManager;->mReduceScreenManager:Lcom/android/server/policy/ReduceScreenManager;

    invoke-virtual {v2, v4}, Lcom/android/server/policy/ReduceScreenManager;->startService(I)V

    :cond_2
    return-void

    :cond_3
    move v2, v4

    goto/16 :goto_0
.end method
