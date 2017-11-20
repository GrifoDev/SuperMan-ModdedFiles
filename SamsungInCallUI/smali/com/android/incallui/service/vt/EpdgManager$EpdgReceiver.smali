.class Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/EpdgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EpdgReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/vt/EpdgManager;


# direct methods
.method private constructor <init>(Lcom/android/incallui/service/vt/EpdgManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/service/vt/EpdgManager;Lcom/android/incallui/service/vt/EpdgManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;-><init>(Lcom/android/incallui/service/vt/EpdgManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v6, "EpdgManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EpdgReceiver : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v6

    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnWiFi()Z

    move-result v7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v8

    const-string v9, "EpdgManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isVideoCall : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", isWiFiOn : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", incallState : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter$InCallState;->whatIs()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", hasLiveCall : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", att popup flag: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-static {v10}, Lcom/android/incallui/service/vt/EpdgManager;->access$100(Lcom/android/incallui/service/vt/EpdgManager;)Z

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-virtual {v7, v0, v8}, Lcom/android/incallui/service/vt/EpdgManager;->allowVoiceCall(Ljava/lang/String;Lcom/android/incallui/InCallPresenter$InCallState;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v6, "EpdgManager"

    const-string v7, "voice call show toast by volte ui 4.1.27"

    invoke-static {v6, v7, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_3
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "ikeerror"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "apntype"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "count"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v6, "EpdgManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_EPDG_ERROR_EVENT InCallState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", errorReason:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", apnType:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mIsDisplayedEpdgError:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-static {v8}, Lcom/android/incallui/service/vt/EpdgManager;->access$100(Lcom/android/incallui/service/vt/EpdgManager;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/EpdgManager;->access$102(Lcom/android/incallui/service/vt/EpdgManager;Z)Z

    goto/16 :goto_0

    :cond_4
    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v8, v6, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_5
    const-string v0, "EpdgManager"

    const-string v1, "not videocall or not incallstate or no LiveCall"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :sswitch_0
    const-string v6, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto/16 :goto_1

    :sswitch_1
    const-string v6, "com.sec.epdg.SHOW_POPUP_TO_NOTIFY_CURRENT_EPDG_STATUS"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto/16 :goto_1

    :sswitch_2
    const-string v6, "HANDOVER_WLAN_TO_LTE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    goto/16 :goto_1

    :sswitch_3
    const-string v6, "HANDOVER_LTE_TO_WLAN"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v5

    goto/16 :goto_1

    :cond_6
    const/16 v1, 0x2000

    if-ne v0, v1, :cond_7

    if-eqz v2, :cond_0

    const-string v0, "ims"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-static {v0}, Lcom/android/incallui/service/vt/EpdgManager;->access$100(Lcom/android/incallui/service/vt/EpdgManager;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EpdgManager"

    const-string v1, "ACTION_EPDG_ERROR_EVENT pdn rejection display toast"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-static {v0, v3}, Lcom/android/incallui/service/vt/EpdgManager;->access$102(Lcom/android/incallui/service/vt/EpdgManager;Z)Z

    const v0, 0x7f090376

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(I)V

    goto/16 :goto_0

    :cond_7
    if-eqz v2, :cond_0

    const-string v0, "ims"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-static {v0}, Lcom/android/incallui/service/vt/EpdgManager;->access$100(Lcom/android/incallui/service/vt/EpdgManager;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ne v4, v5, :cond_0

    const-string v0, "EpdgManager"

    const-string v1, "ACTION_EPDG_ERROR_EVENT display toast"

    invoke-static {v0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-static {v0, v3}, Lcom/android/incallui/service/vt/EpdgManager;->access$102(Lcom/android/incallui/service/vt/EpdgManager;Z)Z

    const v0, 0x7f090376

    invoke-static {v0}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(I)V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "showPopup"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "EpdgManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showPopup = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/EpdgManager;->getBaseInCallComponent()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    const-string v1, "W36a"

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/EpdgManager;->displayEpdgPopup(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/EpdgManager;->getBaseInCallComponent()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    const-string v1, "W36c"

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/EpdgManager;->displayEpdgPopup(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "EpdgManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "result"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", apntype = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "apntype"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "result"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ims"

    const-string v1, "apntype"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/EpdgManager;->isShowingW36Popup()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/EpdgErrorUtils;->onWifiToLteHandover()V

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "EpdgManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "result"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", apntype = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "apntype"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "result"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ims"

    const-string v1, "apntype"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/EpdgErrorUtils;->onLteToWifiHandover()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x434d47f4 -> :sswitch_1
        0x3d8cc89a -> :sswitch_2
        0x637b6608 -> :sswitch_3
        0x6581ecdf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
