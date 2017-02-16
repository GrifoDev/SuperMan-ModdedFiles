.class Lcom/android/incallui/InCallActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 448
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScreenOnOffReceiver: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 453
    const-string v1, "UI"

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isEcholocateEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 454
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getEcholocatePhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->SCREEN_OFF:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    .line 455
    invoke-virtual {v3}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v3

    .line 454
    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    goto :goto_0

    .line 457
    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 458
    invoke-static {p1}, Lcom/android/incallui/util/SystemServiceUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mIsForegroundActivity:Z
    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$500(Lcom/android/incallui/InCallActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p1}, Lcom/android/incallui/util/PhoneModeUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 459
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v2, v2, Lcom/android/incallui/InCallActivity;->mAccessibilityTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 460
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v2, v2, Lcom/android/incallui/InCallActivity;->mAccessibilityTask:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 462
    :cond_3
    const-string v1, "UI"

    invoke-static {v1}, Lcom/android/incallui/util/InCallUtils;->isEcholocateEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 463
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getEcholocatePhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->SCREEN_ON:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    .line 464
    invoke-virtual {v3}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v3

    .line 463
    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    .line 467
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mWaitDialog_callId:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$600(Lcom/android/incallui/InCallActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 468
    const-string v1, "showPostCharWaitDialog wait dialgog: "

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v2, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mWaitDialog_callId:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$600(Lcom/android/incallui/InCallActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    # getter for: Lcom/android/incallui/InCallActivity;->mWaitDialog_chars:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/incallui/InCallActivity;->access$700(Lcom/android/incallui/InCallActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/InCallActivity;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v2, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    const/4 v3, 0x0

    # setter for: Lcom/android/incallui/InCallActivity;->mWaitDialog_chars:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/incallui/InCallActivity;->access$702(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    # setter for: Lcom/android/incallui/InCallActivity;->mWaitDialog_callId:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/incallui/InCallActivity;->access$602(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method
