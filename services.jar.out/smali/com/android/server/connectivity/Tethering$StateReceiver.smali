.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$StateReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 42

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-string/jumbo v36, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get24(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v37

    monitor-enter v37

    :try_start_0
    const-string/jumbo v36, "connected"

    const/16 v38, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const-string/jumbo v38, "rndis"

    const/16 v39, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v38

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-set13(Lcom/android/server/connectivity/Tethering;Z)Z

    if-eqz v33, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get27(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get32(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v38, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-wrap23(Lcom/android/server/connectivity/Tethering;Z)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v38, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-set14(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const-string/jumbo v38, "ncm"

    const/16 v39, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v38

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-set11(Lcom/android/server/connectivity/Tethering;Z)Z

    if-eqz v33, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get21(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get22(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v38, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-wrap22(Lcom/android/server/connectivity/Tethering;Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v38, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v38

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-set12(Lcom/android/server/connectivity/Tethering;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v37

    :cond_3
    :goto_0
    :pswitch_0
    return-void

    :catchall_0
    move-exception v36

    monitor-exit v37

    throw v36

    :cond_4
    const-string/jumbo v36, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_5

    const-string/jumbo v36, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v21

    check-cast v21, Landroid/net/NetworkInfo;

    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v36

    sget-object v37, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_3

    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "Tethering got CONNECTIVITY_ACTION"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get29(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v36

    const v37, 0x50003

    move-object/from16 v0, v36

    move/from16 v1, v37

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v36, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    goto :goto_0

    :cond_6
    const-string/jumbo v36, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get33(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-set5(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/server/connectivity/Tethering;->-get18(Lcom/android/server/connectivity/Tethering;)I

    move-result v37

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-wrap19(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get34(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-set5(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/server/connectivity/Tethering;->-get18(Lcom/android/server/connectivity/Tethering;)I

    move-result v37

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-wrap20(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get4(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-set5(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/server/connectivity/Tethering;->-get18(Lcom/android/server/connectivity/Tethering;)I

    move-result v37

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-wrap19(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v36, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get34(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-nez v36, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get33(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_15

    :cond_a
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get25()I

    move-result v36

    if-nez v36, :cond_15

    const-string/jumbo v36, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "[WIFI] onReceive() WIFI_AP_STA_STATUS_CHANGED_ACTION intent, type of EVENT: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v32, :cond_3

    const-string/jumbo v36, "NUM"

    const/16 v37, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v22

    if-gez v22, :cond_b

    const/16 v22, 0x0

    :cond_b
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v36

    move/from16 v0, v36

    move/from16 v1, v22

    if-ne v0, v1, :cond_c

    return-void

    :cond_c
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v36

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-set10(I)I

    invoke-static/range {v22 .. v22}, Lcom/android/server/connectivity/Tethering;->-set3(I)I

    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "**number of client: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-set0(Lcom/android/server/connectivity/Tethering;Z)Z

    const-string/jumbo v36, "VZW"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const-string/jumbo v37, "statusbar"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/app/StatusBarManager;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const-string/jumbo v37, "wifi"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v36

    if-eqz v36, :cond_e

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v36

    sget-object v37, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    if-le v0, v1, :cond_d

    sget-object v36, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    sget-object v37, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    move-object/from16 v0, v37

    array-length v0, v0

    move/from16 v37, v0

    add-int/lit8 v37, v37, -0x1

    aget v15, v36, v37

    :goto_1
    const-string/jumbo v36, "wifi_ap"

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    move/from16 v2, v37

    move-object/from16 v3, v38

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    const-string/jumbo v36, "wifi_ap"

    const/16 v37, 0x1

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const v37, 0x10808c7

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-wrap20(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    :cond_d
    sget-object v36, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v37

    aget v15, v36, v37

    goto :goto_1

    :cond_e
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "Wifi Ap is not enabled."

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v36, "wifi_ap"

    const/16 v37, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    const-string/jumbo v36, "wifi_ap"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string/jumbo v36, "SPRINT"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const v37, 0x10808c6

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-wrap20(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v36, "TMO"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_11

    const-string/jumbo v36, "NEWCO"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const v37, 0x10808c3

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-wrap19(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const v37, 0x10808c5

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-wrap19(Lcom/android/server/connectivity/Tethering;I)V

    const-string/jumbo v36, "ATT"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_13

    const-string/jumbo v36, "AIO"

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->readSalesCode()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3

    :cond_13
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v36

    if-nez v36, :cond_3

    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "createMaxApNotification(), clients = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v36

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get0()I

    move-result v37

    move/from16 v0, v36

    move/from16 v1, v37

    if-lt v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->createMaxApNotification()V

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v36, "ATT"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_16

    const-string/jumbo v36, "com.samsung.android.net.wifi.MAXAP_NOTI"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v36, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_17

    const-string/jumbo v36, "wifi_state"

    const/16 v37, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :pswitch_1
    goto/16 :goto_0

    :pswitch_2
    const-string/jumbo v36, "ATT"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v36

    if-nez v36, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v36, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1f

    const-string/jumbo v36, "wifiap_power_mode_alarm_option"

    const/16 v37, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    if-nez v23, :cond_1b

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "wifi_ap_plugged_type"

    invoke-static/range {v36 .. v37}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v25

    :goto_2
    const-string/jumbo v36, "TMO"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_18

    if-nez v25, :cond_3

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "wifi_ap_time_out_value"

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get6()I

    move-result v38

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "ALARM_START : set "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, " sec"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v27, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    move/from16 v0, v27

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    add-long v12, v36, v38

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v36, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v36

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v36, "wifiap_power_mode_alarm_option"

    const/16 v37, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const/16 v37, 0x0

    const/high16 v38, 0x10000000

    move-object/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const-string/jumbo v37, "alarm"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    const/16 v36, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v6, v0, v12, v13, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-set1(Z)Z

    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-set2(Z)Z

    goto/16 :goto_0

    :catch_0
    move-exception v9

    const/16 v25, 0x0

    goto/16 :goto_2

    :cond_19
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get3()Z

    move-result v36

    if-eqz v36, :cond_1a

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v36, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v36

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v36, "wifiap_power_mode_alarm_option"

    const/16 v37, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const/16 v37, 0x0

    const/high16 v38, 0x10000000

    move-object/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const-string/jumbo v37, "alarm"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_1a
    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-set2(Z)Z

    goto/16 :goto_0

    :cond_1b
    const/16 v36, 0x4

    move/from16 v0, v23

    move/from16 v1, v36

    if-ne v0, v1, :cond_1c

    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "WIFIAP_POWER_MODE_VALUE_CHANGED, clients = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v36

    if-nez v36, :cond_3

    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v37

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Lcom/android/server/connectivity/Tethering;->-wrap15(Lcom/android/server/connectivity/Tethering;Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_1c
    const/16 v36, 0x1

    move/from16 v0, v23

    move/from16 v1, v36

    if-ne v0, v1, :cond_1e

    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "ALARM_EXPIRE"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-set1(Z)Z

    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-set2(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const-string/jumbo v37, "power"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/os/PowerManager;

    const-string/jumbo v36, "MobileAPCloseService"

    const/16 v37, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v37

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v20

    :try_start_2
    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const-string/jumbo v37, "wifi"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "wifi_ap_time_out_value"

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get6()I

    move-result v38

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "powermode_value = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get5()I

    move-result v36

    if-nez v36, :cond_1d

    const/16 v36, 0xd

    move/from16 v0, v34

    move/from16 v1, v36

    if-ne v0, v1, :cond_1d

    if-eqz v27, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const-string/jumbo v37, "connectivity"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/net/ConnectivityManager;

    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "--> data disable"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "--> ap disable"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_1d
    if-eqz v20, :cond_3

    :try_start_3
    invoke-virtual/range {v20 .. v20}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v20, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v11

    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_2
    move-exception v11

    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "Cannot release wake lock ~~"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1e
    const/16 v36, 0x2

    move/from16 v0, v23

    move/from16 v1, v36

    if-ne v0, v1, :cond_3

    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "ALARM_STOP"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get2()Z

    move-result v36

    if-nez v36, :cond_3

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get3()Z

    move-result v36

    if-eqz v36, :cond_3

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v36, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v36

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v36, "wifiap_power_mode_alarm_option"

    const/16 v37, 0x1

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const/16 v37, 0x0

    const/high16 v38, 0x10000000

    move-object/from16 v0, v36

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-static {v0, v1, v5, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const-string/jumbo v37, "alarm"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager;

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-set2(Z)Z

    goto/16 :goto_0

    :cond_1f
    const-string/jumbo v36, "android.net.wifi.wifiap_stand_by_mode_start"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_20

    const-string/jumbo v36, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    if-eqz v32, :cond_3

    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "[WIFI] onReceive() WIFIAP_STAND_BY_MODE_START intent, type of EVENT: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v36, "no_data"

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    const-string/jumbo v37, "wifi"

    invoke-virtual/range {v36 .. v37}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/net/wifi/WifiManager;

    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "--> ap disable"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v36, 0x0

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    :cond_20
    const-string/jumbo v36, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_29

    const-string/jumbo v36, "TMO"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_21

    const-string/jumbo v36, "NEWCO"

    sget-object v37, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3

    :cond_21
    const-string/jumbo v36, "level"

    const/16 v37, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    const-string/jumbo v36, "plugged"

    const/16 v37, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v25

    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "BATTERY_CHANGED, level = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string/jumbo v38, "lowBatteryThreshold = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const/16 v38, 0xf

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get33(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-nez v36, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get34(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_27

    :cond_22
    const/16 v36, 0xf

    move/from16 v0, v19

    move/from16 v1, v36

    if-gt v0, v1, :cond_27

    if-nez v25, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get19(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v36

    if-nez v36, :cond_27

    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "showLowBatteryNotification"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-wrap18(Lcom/android/server/connectivity/Tethering;)V

    :cond_23
    :goto_4
    if-nez v25, :cond_24

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get16()Z

    move-result v36

    if-nez v36, :cond_25

    :cond_24
    if-eqz v25, :cond_3

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->-get16()Z

    move-result v36

    if-nez v36, :cond_3

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "wifi_ap_plugged_type"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v36, "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v36

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v36, "wifiap_plug_state_changed_option"

    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get15(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_26
    if-nez v25, :cond_28

    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "Unplugged"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v36, 0x0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-set8(Z)Z

    goto/16 :goto_0

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get19(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v36

    if-eqz v36, :cond_23

    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "clearLowBatteryNotification"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-wrap7(Lcom/android/server/connectivity/Tethering;)V

    goto/16 :goto_4

    :cond_28
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "Plugged"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v36, 0x1

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-set8(Z)Z

    goto/16 :goto_0

    :cond_29
    const-string/jumbo v36, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_2c

    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "Boot complete."

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-set7(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get17(Lcom/android/server/connectivity/Tethering;)Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v36

    if-nez v36, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->-set9(Lcom/android/server/connectivity/Tethering;Lcom/samsung/android/knox/custom/SystemManager;)Lcom/samsung/android/knox/custom/SystemManager;

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get17(Lcom/android/server/connectivity/Tethering;)Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v36

    if-eqz v36, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get17(Lcom/android/server/connectivity/Tethering;)Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/samsung/android/knox/custom/SystemManager;->getUsbNetState()Z

    move-result v36

    if-eqz v36, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string/jumbo v37, "adb_enabled"

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    if-nez v36, :cond_2b

    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "Activate USB Net on boot up"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_0

    :cond_2b
    const-string/jumbo v36, "enabled"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v37

    const-string/jumbo v38, "TETHER_ALWAYS_ON_MODE"

    invoke-static/range {v37 .. v38}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3

    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "[Tethering always mode] call setUsbTethering()"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v36, "net.tether.always"

    const-string/jumbo v37, "1"

    invoke-static/range {v36 .. v37}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_0

    :cond_2c
    const-string/jumbo v36, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_30

    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "[ActiveSync] onReceive() ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED intent"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->-wrap2(Lcom/android/server/connectivity/Tethering;)Z

    move-result v36

    if-eqz v36, :cond_2f

    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "[ActiveSync] onReceive() Internet sharing has banned due to security policy."

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v36, "network_management"

    invoke-static/range {v36 .. v36}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v29

    const/16 v36, 0x0

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    :try_start_4
    invoke-interface/range {v29 .. v29}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v17

    const/16 v36, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v37, v0

    :goto_5
    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_3

    aget-object v16, v17, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-wrap4(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_2e

    const-string/jumbo v38, "Tethering"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "[ActiveSync] onReceive() Internet sharing is banned on "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/server/connectivity/Tethering;->-get24(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v38

    monitor-enter v38

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->-get14(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    if-eqz v30, :cond_2d

    invoke-virtual/range {v30 .. v30}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v39

    if-eqz v39, :cond_2d

    const-string/jumbo v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "[ActiveSync] onReceive() Untether on "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->-wrap6(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2d
    monitor-exit v38

    :cond_2e
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_5

    :catch_3
    move-exception v10

    const-string/jumbo v36, "Tethering"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "[ActiveSync] onReceive() Error listing Interfaces :"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception v36

    monitor-exit v38

    throw v36

    :cond_2f
    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "[ActiveSync] onReceive() Internet sharing is NOT banned any more."

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_30
    const-string/jumbo v36, "com.samsung.android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3

    const-string/jumbo v36, "KDI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_3

    const-string/jumbo v36, "Tethering"

    const-string/jumbo v37, "Tethering Denied"

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Lcom/android/server/connectivity/Tethering;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v17

    const/16 v36, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v37, v0

    :goto_6
    move/from16 v0, v36

    move/from16 v1, v37

    if-ge v0, v1, :cond_3

    aget-object v16, v17, v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/server/connectivity/Tethering;->-get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v38

    const-string/jumbo v39, "wifi"

    invoke-virtual/range {v38 .. v39}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/net/wifi/WifiManager;

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_31
    :goto_7
    add-int/lit8 v36, v36, 0x1

    goto :goto_6

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v38

    if-eqz v38, :cond_33

    const-string/jumbo v38, "Tethering"

    const-string/jumbo v39, "setBluetoothTethering"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-static/range {v38 .. v40}, Lcom/android/server/connectivity/Tethering;->-wrap16(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;)V

    goto :goto_7

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_31

    const-string/jumbo v38, "Tethering"

    const-string/jumbo v39, "Tether off error"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
