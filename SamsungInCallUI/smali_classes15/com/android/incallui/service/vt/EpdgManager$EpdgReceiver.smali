.class Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EpdgManager.java"


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

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/service/vt/EpdgManager;Lcom/android/incallui/service/vt/EpdgManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/incallui/service/vt/EpdgManager;
    .param p2, "x1"    # Lcom/android/incallui/service/vt/EpdgManager$1;

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;-><init>(Lcom/android/incallui/service/vt/EpdgManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 169
    if-nez p2, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "action":Ljava/lang/String;
    const-string v8, "EpdgManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EpdgReceiver : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v5

    .line 176
    .local v5, "isVideoCall":Z
    invoke-static {}, Lcom/android/incallui/util/SystemServiceUtils;->isDeviceOnWiFi()Z

    move-result v6

    .line 177
    .local v6, "isWiFiOn":Z
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v4

    .line 179
    .local v4, "incallState":Lcom/android/incallui/InCallPresenter$InCallState;
    const-string v8, "EpdgManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isVideoCall : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", isWiFiOn : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", incallState : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter$InCallState;->whatIs()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", hasLiveCall : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", att popup flag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    # getter for: Lcom/android/incallui/service/vt/EpdgManager;->mIsDisplayedEpdgError:Z
    invoke-static {v10}, Lcom/android/incallui/service/vt/EpdgManager;->access$100(Lcom/android/incallui/service/vt/EpdgManager;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    if-eqz v5, :cond_2

    sget-object v8, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v4, v8, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v8

    if-nez v8, :cond_3

    .line 182
    :cond_2
    const-string v8, "EpdgManager"

    const-string v9, "not videocall or not incallstate or no LiveCall"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 186
    :cond_3
    const/4 v8, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_4
    :goto_1
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_0

    .line 188
    :pswitch_0
    const-string v8, "ikeerror"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 189
    .local v3, "error_reason":I
    const-string v8, "apntype"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 190
    .local v1, "apnType":Ljava/lang/String;
    const-string v8, "count"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 192
    .local v2, "error_count":I
    const-string v8, "EpdgManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ACTION_EPDG_ERROR_EVENT InCallState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", errorReason:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", apnType:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", mIsDisplayedEpdgError:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    .line 193
    # getter for: Lcom/android/incallui/service/vt/EpdgManager;->mIsDisplayedEpdgError:Z
    invoke-static {v10}, Lcom/android/incallui/service/vt/EpdgManager;->access$100(Lcom/android/incallui/service/vt/EpdgManager;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    .line 192
    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 194
    if-nez v3, :cond_5

    .line 195
    iget-object v8, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    const/4 v9, 0x0

    # setter for: Lcom/android/incallui/service/vt/EpdgManager;->mIsDisplayedEpdgError:Z
    invoke-static {v8, v9}, Lcom/android/incallui/service/vt/EpdgManager;->access$102(Lcom/android/incallui/service/vt/EpdgManager;Z)Z

    goto/16 :goto_0

    .line 186
    .end local v1    # "apnType":Ljava/lang/String;
    .end local v2    # "error_count":I
    .end local v3    # "error_reason":I
    :sswitch_0
    const-string v9, "com.sec.epdgservice.IPSEC_CONNECTION_EVENT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v8, 0x0

    goto :goto_1

    :sswitch_1
    const-string v9, "com.sec.epdg.SHOW_POPUP_TO_NOTIFY_CURRENT_EPDG_STATUS"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v8, 0x1

    goto :goto_1

    :sswitch_2
    const-string v9, "HANDOVER_WLAN_TO_LTE"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v8, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v9, "HANDOVER_LTE_TO_WLAN"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v8, 0x3

    goto/16 :goto_1

    .line 196
    .restart local v1    # "apnType":Ljava/lang/String;
    .restart local v2    # "error_count":I
    .restart local v3    # "error_reason":I
    :cond_5
    const/16 v8, 0x2000

    if-ne v3, v8, :cond_6

    .line 197
    if-eqz v1, :cond_0

    const-string v8, "ims"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v8

    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    # getter for: Lcom/android/incallui/service/vt/EpdgManager;->mIsDisplayedEpdgError:Z
    invoke-static {v8}, Lcom/android/incallui/service/vt/EpdgManager;->access$100(Lcom/android/incallui/service/vt/EpdgManager;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 198
    const-string v8, "EpdgManager"

    const-string v9, "ACTION_EPDG_ERROR_EVENT pdn rejection display toast"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 199
    iget-object v8, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    const/4 v9, 0x1

    # setter for: Lcom/android/incallui/service/vt/EpdgManager;->mIsDisplayedEpdgError:Z
    invoke-static {v8, v9}, Lcom/android/incallui/service/vt/EpdgManager;->access$102(Lcom/android/incallui/service/vt/EpdgManager;Z)Z

    .line 200
    const v8, 0x7f0902ee

    invoke-static {v8}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(I)V

    goto/16 :goto_0

    .line 203
    :cond_6
    if-eqz v1, :cond_0

    const-string v8, "ims"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v8

    sget-object v9, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    # getter for: Lcom/android/incallui/service/vt/EpdgManager;->mIsDisplayedEpdgError:Z
    invoke-static {v8}, Lcom/android/incallui/service/vt/EpdgManager;->access$100(Lcom/android/incallui/service/vt/EpdgManager;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v8, 0x3

    if-ne v2, v8, :cond_0

    .line 205
    const-string v8, "EpdgManager"

    const-string v9, "ACTION_EPDG_ERROR_EVENT display toast"

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 206
    iget-object v8, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    const/4 v9, 0x1

    # setter for: Lcom/android/incallui/service/vt/EpdgManager;->mIsDisplayedEpdgError:Z
    invoke-static {v8, v9}, Lcom/android/incallui/service/vt/EpdgManager;->access$102(Lcom/android/incallui/service/vt/EpdgManager;Z)Z

    .line 207
    const v8, 0x7f0902ee

    invoke-static {v8}, Lcom/android/incallui/util/EpdgErrorUtils;->displayToast(I)V

    goto/16 :goto_0

    .line 214
    .end local v1    # "apnType":Ljava/lang/String;
    .end local v2    # "error_count":I
    .end local v3    # "error_reason":I
    :pswitch_1
    const-string v8, "showPopup"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 215
    .local v7, "showPopup":I
    const-string v8, "EpdgManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showPopup = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 217
    const/4 v8, 0x1

    if-ne v7, v8, :cond_7

    .line 218
    iget-object v8, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-virtual {v8}, Lcom/android/incallui/service/vt/EpdgManager;->getBaseInCallComponent()Lcom/android/incallui/InCallActivity;

    move-result-object v8

    instance-of v8, v8, Lcom/android/incallui/InCallActivity;

    if-eqz v8, :cond_0

    .line 219
    iget-object v8, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    const-string v9, "W36a"

    invoke-virtual {v8, v9}, Lcom/android/incallui/service/vt/EpdgManager;->displayEpdgPopup(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 221
    :cond_7
    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 222
    iget-object v8, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-virtual {v8}, Lcom/android/incallui/service/vt/EpdgManager;->getBaseInCallComponent()Lcom/android/incallui/InCallActivity;

    move-result-object v8

    instance-of v8, v8, Lcom/android/incallui/InCallActivity;

    if-eqz v8, :cond_0

    .line 223
    iget-object v8, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    const-string v9, "W36c"

    invoke-virtual {v8, v9}, Lcom/android/incallui/service/vt/EpdgManager;->displayEpdgPopup(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    .end local v7    # "showPopup":I
    :pswitch_2
    const-string v8, "EpdgManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "result"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", apntype = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "apntype"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 229
    const-string v8, "result"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "ims"

    const-string v9, "apntype"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 230
    iget-object v8, p0, Lcom/android/incallui/service/vt/EpdgManager$EpdgReceiver;->this$0:Lcom/android/incallui/service/vt/EpdgManager;

    invoke-virtual {v8}, Lcom/android/incallui/service/vt/EpdgManager;->isShowingW36Popup()Z

    move-result v8

    if-nez v8, :cond_0

    .line 231
    invoke-static {}, Lcom/android/incallui/util/EpdgErrorUtils;->onWifiToLteHandover()V

    goto/16 :goto_0

    .line 236
    :pswitch_3
    const-string v8, "EpdgManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "result"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", apntype = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "apntype"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 237
    const-string v8, "result"

    const/4 v9, 0x0

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string v8, "ims"

    const-string v9, "apntype"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 238
    invoke-static {}, Lcom/android/incallui/util/EpdgErrorUtils;->onLteToWifiHandover()V

    goto/16 :goto_0

    .line 186
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
