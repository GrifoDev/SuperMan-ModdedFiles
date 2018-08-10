.class Lcom/android/keyguard/KeyguardUpdateMonitor$5;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 33

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v5, "KeyguardUpdateMonitor"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "received broadcast "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "android.intent.action.TIME_TICK"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "android.intent.action.TIME_SET"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    const/16 v29, 0x12d

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "status"

    const/16 v29, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v5, "plugged"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v5, "level"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v5, "health"

    const/16 v29, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v5, "max_charging_current"

    const/16 v29, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const-string/jumbo v5, "max_charging_voltage"

    const/16 v29, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const-string/jumbo v5, "online"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v5, "hv_charger"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    if-gtz v19, :cond_3

    const v19, 0x4c4b40

    :cond_3
    if-lez v18, :cond_4

    move/from16 v0, v18

    div-int/lit16 v5, v0, 0x3e8

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v29, v0

    mul-int v10, v5, v29

    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v29

    new-instance v5, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;

    invoke-direct/range {v5 .. v12}, Lcom/android/keyguard/KeyguardUpdateMonitor$BatteryStatus;-><init>(IIIIIIZ)V

    const/16 v30, 0x12e

    move-object/from16 v0, v29

    move/from16 v1, v30

    invoke-virtual {v0, v1, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_4
    const/4 v10, -0x1

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static/range {p2 .. p2}, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->fromIntent(Landroid/content/Intent;)Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    move-result-object v14

    const-string/jumbo v5, "KeyguardUpdateMonitor"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "action "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " state: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, "ss"

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " slotId: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v14, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " subId: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v14, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimPinPassed:[Z

    iget v0, v14, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    move/from16 v29, v0

    aget-boolean v5, v5, v29

    if-eqz v5, :cond_6

    const-string/jumbo v5, "KeyguardUpdateMonitor"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "mSimPinPassed is reset for "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    iget v0, v14, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimPinPassed:[Z

    iget v0, v14, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    move/from16 v29, v0

    const/16 v30, 0x0

    aput-boolean v30, v5, v29

    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    iget v0, v14, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    move/from16 v29, v0

    iget v0, v14, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    move/from16 v30, v0

    iget-object v0, v14, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:Lcom/android/internal/telephony/IccCardConstants$State;

    move-object/from16 v31, v0

    const/16 v32, 0x130

    move/from16 v0, v32

    move/from16 v1, v29

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v5, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v29

    const-string/jumbo v30, "android.media.EXTRA_RINGER_MODE"

    const/16 v31, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v30

    const/16 v31, 0x131

    const/16 v32, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v30

    move/from16 v3, v32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v5, "android.intent.action.PHONE_STATE"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v29

    const/16 v30, 0x132

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v5, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    const/16 v29, 0x149

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchBootCompleted()V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v5, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v24

    const-string/jumbo v5, "subscription"

    const/16 v29, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    const-string/jumbo v5, "KeyguardUpdateMonitor"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "action "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " serviceState="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " subId="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v29

    const/16 v30, 0x14a

    const/16 v31, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v30

    move/from16 v2, v26

    move/from16 v3, v31

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    const/16 v29, 0x152

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v5, "com.sec.android.intent.action.BLACK_MEMO"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string/jumbo v5, "state"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFingerprintListeningState()V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v5, "com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get1(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v5

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get1(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get1(Lcom/android/keyguard/KeyguardUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    const-string/jumbo v5, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const-string/jumbo v5, "globalactions"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    const/16 v29, 0x156

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v5, "com.samsung.intent.action.PREINSTALLER_FINISH"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v29

    const/16 v30, 0x151

    invoke-virtual/range {v29 .. v30}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v5, "com.samsung.android.intent.action.RESPONSE_SERVICEBOX_REMOTEVIEWS"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    new-instance v16, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;-><init>(Landroid/content/Intent;)V

    move-object/from16 v0, v16

    iget-boolean v5, v0, Lcom/android/systemui/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isValidData:Z

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    const/16 v29, 0x15c

    move/from16 v0, v29

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_13
    const-string/jumbo v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string/jumbo v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string/jumbo v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_15

    return-void

    :cond_15
    const-string/jumbo v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    const/16 v28, 0x159

    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    move/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    const/16 v5, 0x15b

    move/from16 v0, v28

    if-ne v0, v5, :cond_16

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_1a

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v29, "android.intent.extra.REPLACING"

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, v20

    iput v5, v0, Landroid/os/Message;->arg1:I

    :cond_16
    :goto_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const/16 v28, 0x15b

    goto :goto_2

    :cond_18
    const/16 v28, 0x15a

    goto :goto_2

    :cond_19
    const/4 v5, 0x0

    goto :goto_3

    :cond_1a
    const/4 v5, 0x0

    move-object/from16 v0, v20

    iput v5, v0, Landroid/os/Message;->arg1:I

    goto :goto_4

    :cond_1b
    const-string/jumbo v5, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    const-string/jumbo v5, "KeyguardAutoLock"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Received "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5, v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap1(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get17(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-eqz v5, :cond_1d

    if-eqz v15, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get17(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set10(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v5, "com.samsung.bluetooth.device.extra.LINKTYPE"

    const/16 v29, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v29

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const/4 v5, 0x1

    move/from16 v0, v17

    if-ne v0, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get12(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get18()I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get12(Lcom/android/keyguard/KeyguardUpdateMonitor;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get18()I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSwipeLockBeforeTimeout(Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v29

    const/16 v30, 0x160

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-virtual/range {v29 .. v32}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v5, "KeyguardAutoLock"

    const-string/jumbo v29, "ACTION_ACL_DISCONNECTED : mWearableDevice =/= device !!"

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1d
    const-string/jumbo v5, "KeyguardAutoLock"

    const-string/jumbo v29, "ACTION_ACL_DISCONNECTED : mWearableDevice or device is null!!"

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v5, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string/jumbo v5, "KeyguardAutoLock"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Received "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v15

    check-cast v15, Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5, v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap1(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5, v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set10(Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->semGetModelMidRssi()I

    move-result v29

    move/from16 v0, v29

    invoke-static {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set1(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->semGetModelLowRssi()I

    move-result v29

    move/from16 v0, v29

    invoke-static {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set2(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/16 v29, 0x3

    move/from16 v0, v29

    invoke-static {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set8(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/16 v29, 0x0

    move/from16 v0, v29

    invoke-static {v5, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-set9(Lcom/android/keyguard/KeyguardUpdateMonitor;I)I

    goto/16 :goto_0

    :cond_1f
    const-string/jumbo v5, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    :try_start_0
    const-string/jumbo v5, "packageName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 v29, v0

    invoke-static/range {v29 .. v29}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v29

    const/16 v30, 0x163

    move-object/from16 v0, v29

    move/from16 v1, v30

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v5, "com.samsung.android.theme.themecenter.THEME_APPLY_START"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    const/16 v29, 0x164

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_21
    const-string/jumbo v5, "com.samsung.android.theme.themecenter.THEME_REAPPLY"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$5;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-get7(Lcom/android/keyguard/KeyguardUpdateMonitor;)Landroid/os/Handler;

    move-result-object v5

    const/16 v29, 0x165

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
