.class Lcom/android/incallui/InCallActivity$9;
.super Landroid/os/Handler;


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

    iput-object p1, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$400(Lcom/android/incallui/InCallActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$800(Lcom/android/incallui/InCallActivity;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->dismissPostCharPauseDialog()V

    goto :goto_0

    :pswitch_3
    const-string v0, "TURN_ON_SCREEN_FOR_NEW_INCOMING"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/SystemServiceUtils;->forceWakeUpScreen(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updatePhotoringState()V

    goto :goto_0

    :pswitch_5
    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "feature_hktw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Update notification once again to display correct icon in multisim models"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->updateNotification()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$900(Lcom/android/incallui/InCallActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "perf - INITIALIZE_INCALL"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$1000(Lcom/android/incallui/InCallActivity;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$1100(Lcom/android/incallui/InCallActivity;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v2}, Lcom/android/incallui/InCallActivity;->setIsFromPopupForAnswer(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/incallui/CallButtonUi;->setVisible(Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->sendMsgCallListChange()V

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "EVENT_COLLAPSE_PANELS"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/ProximitySensor;->isScreenReallyOff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$1200(Lcom/android/incallui/InCallActivity;)Landroid/app/SemStatusBarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallActivity$9;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-static {v0}, Lcom/android/incallui/InCallActivity;->access$1200(Lcom/android/incallui/InCallActivity;)Landroid/app/SemStatusBarManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
