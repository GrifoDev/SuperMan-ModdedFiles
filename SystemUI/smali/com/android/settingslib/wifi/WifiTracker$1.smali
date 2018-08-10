.class Lcom/android/settingslib/wifi/WifiTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v18

    if-eqz v18, :cond_0

    const-string/jumbo v18, "WifiTracker"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, ">>> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v18, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    const-string/jumbo v19, "wifi_state"

    const/16 v20, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    invoke-static/range {v18 .. v19}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap7(Lcom/android/settingslib/wifi/WifiTracker;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v18, "android.net.wifi.SCAN_RESULTS"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get12(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    move-result-object v18

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get12(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;

    move-result-object v18

    const/16 v19, 0x2

    invoke-interface/range {v18 .. v19}, Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;->onScanStateChange(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get15(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v18

    const-string/jumbo v19, "scan"

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_4
    const-string/jumbo v18, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const-string/jumbo v18, "multipleChanges"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    const-string/jumbo v18, "wifiConfiguration"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    const-string/jumbo v18, "changeReason"

    const/16 v19, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    move-object/from16 v19, v0

    if-eqz v11, :cond_6

    const/16 v18, 0x1

    :goto_1
    const/16 v20, 0xa

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v13, v7}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v13, v0, :cond_1

    const/4 v8, 0x1

    if-eqz v7, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get6(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiInfo;

    move-result-object v18

    if-eqz v18, :cond_5

    iget v0, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settingslib/wifi/WifiTracker;->-get6(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    const/4 v8, 0x2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get15(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v18

    const-string/jumbo v19, "config"

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v8, v3}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_6
    const/16 v18, 0x0

    goto :goto_1

    :cond_7
    const-string/jumbo v18, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v19, v0

    const-string/jumbo v18, "linkProperties"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/net/LinkProperties;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->-set2(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get15(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v18

    const-string/jumbo v19, "link"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v18, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    const-string/jumbo v18, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/NetworkInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get2(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v18

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v18

    if-eqz v18, :cond_9

    const-string/jumbo v18, "WifiTracker"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "networkState: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settingslib/wifi/WifiTracker;->-get2(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", currentNetworkState: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get2(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v19, v0

    const-string/jumbo v18, "linkProperties"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v18

    check-cast v18, Landroid/net/LinkProperties;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->-set2(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/settingslib/wifi/WifiTracker;->-set4(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/settingslib/wifi/WifiTracker;->-set0(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get15(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v18

    if-eqz v18, :cond_b

    const-string/jumbo v18, "WifiTracker"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "previousNetworkState:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settingslib/wifi/WifiTracker;->-get9(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " => currentNetworkState:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settingslib/wifi/WifiTracker;->-get9(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap0(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;Landroid/net/NetworkInfo$DetailedState;)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker;->mMainHandler:Lcom/android/settingslib/wifi/WifiTracker$MainHandler;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settingslib/wifi/WifiTracker$MainHandler;->sendEmptyMessage(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get15(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v18

    const-string/jumbo v19, "network"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_c
    const-string/jumbo v18, "android.net.wifi.supplicant.STATE_CHANGE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    const-string/jumbo v18, "newState"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/SupplicantState;

    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v18

    if-eqz v18, :cond_d

    const-string/jumbo v18, "WifiTracker"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "supplicantState: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", getDetailedStateOf: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, ", currentNetworkState: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get3(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;

    move-result-object v18

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v17

    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v18

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settingslib/wifi/WifiTracker;->-get14(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/settingslib/wifi/WifiTracker;->-set1(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    goto/16 :goto_0

    :cond_e
    invoke-virtual/range {v17 .. v17}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get2(Lcom/android/settingslib/wifi/WifiTracker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v18

    xor-int/lit8 v18, v18, 0x1

    if-eqz v18, :cond_1

    sget-object v18, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v18

    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v18

    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v18

    sget-object v19, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/settingslib/wifi/WifiTracker;->-set4(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/settingslib/wifi/WifiTracker;->-set0(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v18

    if-eqz v18, :cond_f

    const-string/jumbo v18, "WifiTracker"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "previousNetworkState:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settingslib/wifi/WifiTracker;->-get9(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string/jumbo v20, " => currentNetworkState:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settingslib/wifi/WifiTracker;->-get9(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/settingslib/wifi/WifiTracker;->-get5(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap0(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo$DetailedState;Landroid/net/NetworkInfo$DetailedState;)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get15(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v18, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_11

    const-string/jumbo v18, "android.net.conn.INET_CONDITION_ACTION"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get15(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v18

    const-string/jumbo v19, "connectivity"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v18, "com.samsung.android.net.wifi.SHOW_NOTI_MESSAGE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    const-string/jumbo v18, "info_type"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const/16 v18, 0x12e

    move/from16 v0, v18

    if-eq v12, v0, :cond_13

    const/16 v18, 0xb

    move/from16 v0, v18

    if-ne v12, v0, :cond_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get15(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v18

    const-string/jumbo v19, "show_noti"

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v18, "android.net.wifi.RSSI_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get3(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/settingslib/wifi/WifiTracker;->-get14(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get15(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v18

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v18, "com.samsung.android.net.wifi.WECHAT_AP_LIST"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v18

    if-eqz v18, :cond_16

    const-string/jumbo v18, "WifiTracker"

    const-string/jumbo v19, "onReceive, WECHAT_AP_LIST"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get13(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v18

    if-nez v18, :cond_17

    return-void

    :cond_17
    const-string/jumbo v18, "ssid"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v14

    const-string/jumbo v18, "bssid"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string/jumbo v18, "storename"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get13(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v6, v15}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->setWeChatAccessPoint(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap4(Lcom/android/settingslib/wifi/WifiTracker;ZZ)V

    goto/16 :goto_0

    :cond_18
    const-string/jumbo v18, "com.samsung.android.net.wifi.WECHAT_ERRORCODE"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b

    const-string/jumbo v18, "errorcode"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v18, "WifiTracker"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "onReceive, WECHAT_ERRORCODE errorCode: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get13(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v18

    if-nez v18, :cond_19

    return-void

    :cond_19
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v9, v0, :cond_1a

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_1

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get13(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap1(Lcom/android/settingslib/wifi/WifiTracker;)V

    goto/16 :goto_0

    :cond_1b
    const-string/jumbo v18, "com.samsung.android.net.wifi.WECHAT_LOGOUT"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1e

    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->-get0()Z

    move-result v18

    if-eqz v18, :cond_1c

    const-string/jumbo v18, "WifiTracker"

    const-string/jumbo v19, "onReceive, WECHAT_LOGOUT"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get13(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v18

    if-nez v18, :cond_1d

    return-void

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get13(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/settingslib/wifi/WeChatWifiManager;->clearAll()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-wrap1(Lcom/android/settingslib/wifi/WifiTracker;)V

    goto/16 :goto_0

    :cond_1e
    const-string/jumbo v18, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_AUTHENTICATED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1f

    const-string/jumbo v18, "com.samsung.android.net.wifi.CAPTIVE_PORTAL_DETECTED"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settingslib/wifi/WifiTracker$1;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/wifi/WifiTracker;->-get15(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;

    move-result-object v18

    const-string/jumbo v19, "captive"

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settingslib/wifi/WifiTracker$WorkHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method
