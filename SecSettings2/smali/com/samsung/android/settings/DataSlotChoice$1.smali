.class Lcom/samsung/android/settings/DataSlotChoice$1;
.super Landroid/content/BroadcastReceiver;
.source "DataSlotChoice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/DataSlotChoice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/DataSlotChoice;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/DataSlotChoice;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v6, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string/jumbo v6, "ACTION_CARD_STATUS_CHANGED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {p1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v7

    invoke-static {v6, v7}, Lcom/samsung/android/settings/DataSlotChoice;->-set0(Lcom/samsung/android/settings/DataSlotChoice;Z)Z

    const-string/jumbo v6, "gsm.sim.currentcardstatus"

    const-string/jumbo v7, "9"

    invoke-static {v6, v8, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "gsm.sim.currentcardstatus"

    const-string/jumbo v7, "9"

    invoke-static {v6, v9, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "gsm.sim.state"

    const-string/jumbo v7, "UNKNOWN"

    invoke-static {v6, v8, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "gsm.sim.state"

    const-string/jumbo v7, "UNKNOWN"

    invoke-static {v6, v9, v7}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "DataSlotChoice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive: action - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mMobileData = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v8}, Lcom/samsung/android/settings/DataSlotChoice;->-wrap0(Lcom/samsung/android/settings/DataSlotChoice;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", SIM_STATE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", CURRENT_SIM_STATE = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", SIM_STATE2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", CURRENT_SIM_STATE2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", isAirPlaneMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v8}, Lcom/samsung/android/settings/DataSlotChoice;->-get0(Lcom/samsung/android/settings/DataSlotChoice;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-wrap0(Lcom/samsung/android/settings/DataSlotChoice;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-get3(Lcom/samsung/android/settings/DataSlotChoice;)Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-wrap3(Lcom/samsung/android/settings/DataSlotChoice;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-get3(Lcom/samsung/android/settings/DataSlotChoice;)Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-get1(Lcom/samsung/android/settings/DataSlotChoice;)Landroid/app/AlertDialog;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-get1(Lcom/samsung/android/settings/DataSlotChoice;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-get1(Lcom/samsung/android/settings/DataSlotChoice;)Landroid/app/AlertDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_1

    :cond_4
    const-string/jumbo v6, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "phone"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v6, "DataSlotChoice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "DATA_CONNECTION_CHANGE_SUCCESS simSlot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-get4(Lcom/samsung/android/settings/DataSlotChoice;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v3, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-get3(Lcom/samsung/android/settings/DataSlotChoice;)Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_5
    const-string/jumbo v6, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "phone"

    invoke-virtual {p2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v6, "DataSlotChoice"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ACTION_DEFAULT_DATA_SUBSCRIPTION_FAILED simSlot = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-get4(Lcom/samsung/android/settings/DataSlotChoice;)Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6, v3, v9}, Landroid/widget/ListView;->setItemChecked(IZ)V

    iget-object v6, p0, Lcom/samsung/android/settings/DataSlotChoice$1;->this$0:Lcom/samsung/android/settings/DataSlotChoice;

    invoke-static {v6}, Lcom/samsung/android/settings/DataSlotChoice;->-get3(Lcom/samsung/android/settings/DataSlotChoice;)Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;

    move-result-object v6

    invoke-virtual {v6, v10}, Lcom/samsung/android/settings/DataSlotChoice$SwitchHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method
