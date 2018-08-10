.class Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiSIMPreferredSlotBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v8, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "subscription"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v8, "MultiSIMPreferredSlotBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive() - ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED : subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    iget-object v9, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v9, v7}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-wrap0(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-set6(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)I

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    iget-object v8, v8, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-static {v8}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->-wrap0(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v8, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "subscription"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v8, "MultiSIMPreferredSlotBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive() - ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED : subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    iget-object v9, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v9, v7}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-wrap0(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-set5(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)I

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    iget-object v8, v8, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-static {v8}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->-wrap0(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v8, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "subscription"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v8, "MultiSIMPreferredSlotBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive() - ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED :: subId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    iget-object v9, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v9, v7}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-wrap0(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-set4(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)I

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    iget-object v8, v8, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-static {v8}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->-wrap0(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v8, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "MultiSIMPreferredSlotBar"

    const-string/jumbo v9, "onReceive() - ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS ::"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v8}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get5(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v8}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get11(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v8}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get7(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I

    move-result v8

    invoke-static {v8}, Lcom/android/systemui/util/MultiSimMgrUtils;->getSubId(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v8}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get11(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v9}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get11(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v10}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get7(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I

    move-result v10

    const/16 v11, 0x3e9

    invoke-virtual {v9, v11, v7, v10}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v8, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_FAIL"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "MultiSIMPreferredSlotBar"

    const-string/jumbo v9, "onReceive() - ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_FAIL ::"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v8}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get5(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v8}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get20(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v8}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get20(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v9}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get20(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;

    move-result-object v9

    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v8, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string/jumbo v8, "simcard_sim_id"

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v8, "simcard_sim_icon"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v8, "simcard_sim_name"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string/jumbo v8, "MultiSIMPreferredSlotBar"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive() - ACTION_SIM_MGT_CHANGED : simId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",simIconIndex="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",simName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v8}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get1(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)[I

    move-result-object v8

    aput v3, v8, v5

    :cond_6
    if-eqz v6, :cond_7

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v8}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get2(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)[Ljava/lang/String;

    move-result-object v8

    aput-object v6, v8, v5

    :cond_7
    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v8}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get19(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->-wrap0(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V

    goto :goto_1

    :cond_8
    sget-boolean v8, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_QS_MULTISIM_SWITCH_MANAGER:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v8}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-wrap9(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v8, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-set6(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)I

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    iget-object v9, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-wrap0(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-set5(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)I

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    iget-object v9, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-wrap0(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-set4(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)I

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v8}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get19(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->-wrap0(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V

    goto :goto_2

    :cond_a
    const-string/jumbo v8, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string/jumbo v8, "MultiSIMPreferredSlotBar"

    const-string/jumbo v9, "onReceive() - ACTION_LOCALE_CHANGED : "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v8}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get19(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->refreshLocale()V

    goto :goto_3

    :cond_b
    const-string/jumbo v8, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    const-string/jumbo v8, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    :cond_c
    const-string/jumbo v8, "MultiSIMPreferredSlotBar"

    const-string/jumbo v9, "onReceive() - ACTION_SIM_STATE_CHANGED or ACTION_SIM_MGT_ACTIVATED_CHANGED : "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v8}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-wrap8(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v8, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {}, Lcom/android/systemui/util/MultiSimMgrUtils;->checkCall()Z

    move-result v9

    invoke-static {v8, v9}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-set7(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z

    iget-object v8, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {v8}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->-get19(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->updateTextColor()V

    invoke-static {v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->-wrap0(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;)V

    goto :goto_4
.end method
