.class Lcom/android/incallui/InCallActivity$10;
.super Landroid/os/Handler;
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

    iput-object p1, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$500(Lcom/android/incallui/InCallActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$1000(Lcom/android/incallui/InCallActivity;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->dismissPostCharPauseDialog()V

    goto :goto_0

    :sswitch_2
    const-string v1, "TURN_ON_SCREEN_FOR_NEW_INCOMING"

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->updatePhotoringState()V

    goto :goto_0

    :sswitch_4
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "feature_hktw"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Update notification once again to display correct icon in multisim models"

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    goto :goto_0

    :sswitch_5
    const-string v1, "RECORD_INFO_STATE_CHANGED"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    goto :goto_0

    :sswitch_6
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$1100(Lcom/android/incallui/InCallActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "perf - INITIALIZE_INCALL"

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$1200(Lcom/android/incallui/InCallActivity;)V

    goto :goto_0

    :sswitch_7
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$1300(Lcom/android/incallui/InCallActivity;)V

    goto :goto_0

    :sswitch_8
    const-string v1, "EVENT_COLLAPSE_PANELS"

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/ProximitySensor;->isScreenReallyOff()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$1400(Lcom/android/incallui/InCallActivity;)Landroid/app/SemStatusBarManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallActivity$10;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v1}, Lcom/android/incallui/InCallActivity;->access$1400(Lcom/android/incallui/InCallActivity;)Landroid/app/SemStatusBarManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_2
        0xa2 -> :sswitch_1
        0xa3 -> :sswitch_3
        0xa4 -> :sswitch_4
        0xa6 -> :sswitch_6
        0xa7 -> :sswitch_7
        0xa9 -> :sswitch_8
        0xc9 -> :sswitch_5
    .end sparse-switch
.end method
