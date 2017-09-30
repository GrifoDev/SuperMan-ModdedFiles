.class Lcom/android/incallui/InCallActivity$6;
.super Landroid/content/BroadcastReceiver;


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

    iput-object p1, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

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

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "UI"

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->isEcholocateEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getEcholocatePhoneNumber()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->SCREEN_OFF:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    invoke-virtual {v2}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/incallui/util/SystemServiceUtils;->isKeyguardLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$400(Lcom/android/incallui/InCallActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/incallui/util/PhoneModeUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v1, v1, Lcom/android/incallui/InCallActivity;->mAccessibilityTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v1, v1, Lcom/android/incallui/InCallActivity;->mAccessibilityTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    const-string v0, "UI"

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->isEcholocateEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/util/NameNumberUtils;->getEcholocatePhoneNumber()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->SCREEN_ON:Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;

    invoke-virtual {v2}, Lcom/android/incallui/operator/usa/InCallUIConstants$UICallState;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->senduiCallState(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$500(Lcom/android/incallui/InCallActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "showPostCharWaitDialog wait dialgog: "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$500(Lcom/android/incallui/InCallActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v2}, Lcom/android/incallui/InCallActivity;->access$600(Lcom/android/incallui/InCallActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallActivity;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$6;->this$0:Lcom/android/incallui/InCallActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/incallui/InCallActivity;->access$602(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/InCallActivity;->access$502(Lcom/android/incallui/InCallActivity;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0
.end method
