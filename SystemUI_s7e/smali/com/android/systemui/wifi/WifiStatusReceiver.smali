.class public Lcom/android/systemui/wifi/WifiStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wifi/WifiStatusReceiver$AsyncRemoveOldNetworks;
    }
.end annotation


# static fields
.field static final CSC_EAP_METHOD:Ljava/lang/String;

.field static final CSC_ENABLE_WIFI_CONNECTION_TYPE:Z

.field private static final CSC_MAX_CONFIGURED_NETWORKS_SIZE:I

.field private static final CSC_VENDOR_NOTI_STYLE:Ljava/lang/String;

.field static final CSC_WIFI_ERRORCODE:Z

.field static final DEBUG:Z

.field private static mEnableWifiTriggeredByUser:Z

.field private static mShownConnectedToast:Z

.field public static sShowOnceFlag:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private volatile mWifiState:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/wifi/WifiStatusReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/wifi/WifiStatusReceiver;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->connectToWifiAfterP2pDisconnectedForSCC(Landroid/content/Context;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    sput-boolean v1, Lcom/android/systemui/wifi/WifiStatusReceiver;->sShowOnceFlag:Z

    sput-boolean v1, Lcom/android/systemui/wifi/WifiStatusReceiver;->mShownConnectedToast:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_WIFI_ERRORCODE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_EAP_METHOD:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_EnableMenuConnectionType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_ENABLE_WIFI_CONNECTION_TYPE:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigWifiNotificationStyle"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_VENDOR_NOTI_STYLE:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigMaxConfiguredNetworksSize"

    const/16 v2, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_MAX_CONFIGURED_NETWORKS_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/wifi/WifiStatusReceiver;->mWifiState:I

    return-void
.end method

.method private connectToWifiAfterP2pDisconnectedForSCC(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "CONNECT_WIFI_AFTER_P2P_DISCONNECTED_AS_SCC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "netid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static enableToShowWifiPickerDialog(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiStatusReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Want to show AP LIST:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-boolean p0, Lcom/android/systemui/wifi/WifiStatusReceiver;->sShowOnceFlag:Z

    return-void
.end method

.method private static isSameSecurity(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v3

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    :cond_3
    return v2

    :cond_4
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-eqz v0, :cond_5

    return v3

    :cond_5
    return v2

    :cond_6
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v0, v0, v2

    if-nez v0, :cond_7

    return v3

    :cond_7
    return v2
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/16 v3, 0x22

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    return-object p0
.end method

.method private startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    sget-boolean v1, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiStatusReceiver"

    const-string/jumbo v2, "SystemUI Call AP LIST dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 54

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;

    sget-boolean v49, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v49, :cond_0

    const-string/jumbo v49, "WifiStatusReceiver"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "action: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v49, "com.samsung.android.net.wifi.SHOW_AP_LIST_DIALOG"

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_2

    sget-boolean v49, Lcom/android/systemui/wifi/WifiStatusReceiver;->DEBUG:Z

    if-eqz v49, :cond_1

    const-string/jumbo v49, "WifiStatusReceiver"

    const-string/jumbo v50, "ACTION CAME : com.samsung.android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v49, "com.samsung.android.net.wifi.SHOW_INFO_MESSAGE"

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_12

    const-string/jumbo v49, "info_type"

    const/16 v50, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    sparse-switch v26, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const v49, 0x7f0f0348

    const/16 v50, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_1
    const v49, 0x7f0f0349

    const/16 v50, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual/range {v43 .. v43}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_2
    const v49, 0x7f0f034a

    const/16 v50, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_3
    const v49, 0x7f0f034b

    const/16 v50, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_4
    const v49, 0x7f0f034c

    const/16 v50, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_5
    const v49, 0x7f0f034d

    const/16 v50, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_6
    const v49, 0x7f0f034e

    const/16 v50, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_7
    sget-boolean v49, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_WIFI_ERRORCODE:Z

    if-eqz v49, :cond_e

    const-string/jumbo v49, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v49, "ssid"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string/jumbo v49, "WifiStatusReceiver"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "SHOW EAP SIM MESSAGE ACTION: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v21, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v49

    const-string/jumbo v50, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual/range {v49 .. v50}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v49

    if-nez v49, :cond_6

    const-string/jumbo v49, "General failure"

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0f0350

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    :cond_4
    :goto_1
    const/16 v49, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v49

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v49, "Not subscribed to the requested service"

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_4

    if-eqz v40, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const/16 v50, 0x1

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    const/16 v51, 0x0

    aput-object v40, v50, v51

    const v51, 0x7f0f0353

    move-object/from16 v0, v49

    move/from16 v1, v51

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v21

    goto :goto_1

    :cond_6
    const/16 v19, 0x1

    const-string/jumbo v49, "There is a problem connecting you to Verizon Wi-Fi Access"

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0f0354

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    :goto_2
    if-eqz v19, :cond_1

    const/16 v49, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v49

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v49, "There is a problem with your Verizon Wi-Fi Access account"

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0f0355

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_2

    :cond_8
    const-string/jumbo v49, "You are not subscribed to Verizon Wi-Fi Access"

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0f0356

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_2

    :cond_9
    const-string/jumbo v49, "You can\'t connect to Verizon Wi-Fi Access from outside the Verizon coverage area"

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0f0357

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_2

    :cond_a
    const-string/jumbo v49, "There is a problem with your Verizon Wi-Fi Access account2"

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0f0355

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_2

    :cond_b
    const-string/jumbo v49, "You are already connected to Verizon Wi-Fi Access"

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0f0358

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    :cond_c
    const-string/jumbo v49, "Verizon Wi-Fi Access is not available from your location"

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0f0359

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_2

    :cond_e
    sget-object v49, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_EAP_METHOD:Ljava/lang/String;

    const-string/jumbo v50, "AKA"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_1

    const-string/jumbo v49, "message"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v49, "WifiStatusReceiver"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "onReceive, message of received: "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v21, :cond_f

    return-void

    :cond_f
    const-string/jumbo v49, "KTT"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v50

    const-string/jumbo v51, "CscFeature_Wifi_ConfigAuthMsgDisplayPolicy"

    invoke-virtual/range {v50 .. v51}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0f034f

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v49

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_10

    return-void

    :cond_10
    const-string/jumbo v49, "General failure KT_AKA"

    move-object/from16 v0, v21

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_1

    const/16 v49, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v49

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_8
    const v49, 0x7f0f035d

    const/16 v50, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v49

    const v50, 0x102000b

    invoke-virtual/range {v49 .. v50}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/TextView;

    const/16 v49, 0x11

    move-object/from16 v0, v44

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_9
    const-string/jumbo v49, "ssid"

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    if-eqz v40, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    const v49, 0x7f0b0021

    move-object/from16 v0, v36

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v49

    const-string/jumbo v50, "#ff"

    const-string/jumbo v51, "#"

    invoke-virtual/range {v49 .. v51}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v49, "#DEAD00"

    move-object/from16 v0, v49

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_11

    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    aput-object v40, v49, v50

    const v50, 0x7f0f0347

    move-object/from16 v0, v36

    move/from16 v1, v50

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    const/16 v49, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v49

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_11
    const/16 v49, 0x1

    :try_start_0
    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "<font color="

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, ">"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-static/range {v40 .. v40}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v51

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, "</font>"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    const/16 v51, 0x0

    aput-object v50, v49, v51

    const v50, 0x7f0f0347

    move-object/from16 v0, v36

    move/from16 v1, v50

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v49

    const/16 v50, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v49

    const v50, 0x102000b

    invoke-virtual/range {v49 .. v50}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/TextView;

    const/16 v49, 0x11

    move-object/from16 v0, v44

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->show()V

    const-string/jumbo v49, "WifiStatusReceiver"

    const-string/jumbo v50, "Show NETWORK_NOT_FOUND Toast"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v16

    const-string/jumbo v49, "WifiStatusReceiver"

    invoke-virtual/range {v16 .. v16}, Ljava/util/UnknownFormatConversionException;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_12
    const-string/jumbo v49, "KTT"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v50

    const-string/jumbo v51, "CscFeature_Wifi_ConfigAuthMsgDisplayPolicy"

    invoke-virtual/range {v50 .. v51}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_17

    const-string/jumbo v49, "com.kt.wifiapi.OEMExtension.NOTIFICATION"

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_17

    const-string/jumbo v49, "ERROR_NOTIFICATION"

    const/16 v50, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    const/16 v21, 0x0

    if-nez v17, :cond_13

    return-void

    :cond_13
    const/16 v49, 0x4

    move/from16 v0, v17

    move/from16 v1, v49

    if-ne v0, v1, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0f035b

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    :goto_3
    const/16 v49, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v49

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_14
    const/16 v49, 0x5

    move/from16 v0, v17

    move/from16 v1, v49

    if-ne v0, v1, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0f0352

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_3

    :cond_15
    const/16 v49, 0x6

    move/from16 v0, v17

    move/from16 v1, v49

    if-ne v0, v1, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0f035a

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    return-void

    :cond_16
    return-void

    :cond_17
    const-string/jumbo v49, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v14

    if-nez v14, :cond_18

    const-string/jumbo v49, "WifiStatusReceiver"

    const-string/jumbo v50, "there is no extras"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_18
    const-string/jumbo v49, "command"

    move-object/from16 v0, v49

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_19

    const-string/jumbo v49, " "

    const-string/jumbo v50, ""

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    :cond_19
    const-string/jumbo v49, "AT+WIFIVALUE"

    move-object/from16 v0, v49

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_1

    const-string/jumbo v49, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v46 .. v46}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v48

    const/16 v49, 0x2

    move/from16 v0, v48

    move/from16 v1, v49

    if-eq v0, v1, :cond_1a

    const/16 v49, 0x3

    move/from16 v0, v48

    move/from16 v1, v49

    if-ne v0, v1, :cond_1b

    :cond_1a
    new-instance v49, Landroid/content/Intent;

    const-string/jumbo v50, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct/range {v49 .. v50}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v50, "response"

    const-string/jumbo v51, "ON"

    invoke-virtual/range {v49 .. v51}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v49

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1b
    new-instance v49, Landroid/content/Intent;

    const-string/jumbo v50, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct/range {v49 .. v50}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v50, "response"

    const-string/jumbo v51, "OFF"

    invoke-virtual/range {v49 .. v51}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v49

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1c
    const-string/jumbo v49, "android.net.wifi.SCAN_RESULTS"

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-nez v49, :cond_1d

    const-string/jumbo v49, "com.sec.android.wifi.scan.result"

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_2b

    :cond_1d
    sget-boolean v49, Lcom/android/systemui/wifi/WifiStatusReceiver;->sShowOnceFlag:Z

    if-eqz v49, :cond_1

    const/16 v49, 0x0

    sput-boolean v49, Lcom/android/systemui/wifi/WifiStatusReceiver;->sShowOnceFlag:Z

    const-string/jumbo v49, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v46 .. v46}, Landroid/net/wifi/WifiManager;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v47

    if-eqz v47, :cond_1e

    invoke-virtual/range {v47 .. v47}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v49

    if-eqz v49, :cond_1e

    return-void

    :cond_1e
    const/4 v11, 0x0

    invoke-virtual/range {v46 .. v46}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v39

    invoke-virtual/range {v46 .. v46}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v49

    if-eqz v49, :cond_1f

    invoke-virtual/range {v46 .. v46}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v11

    :cond_1f
    const/16 v41, 0x0

    if-nez v11, :cond_22

    const-string/jumbo v49, "WifiStatusReceiver"

    const-string/jumbo v50, "constructAccessPoints config is null"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_20
    :goto_4
    const-string/jumbo v49, "WifiStatusReceiver"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "SCAN_RESULTS_AVAILABLE_ACTION RECEIVED : sShowOnceFlag - true, ssid_count - "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v46 .. v46}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v49

    if-eqz v49, :cond_29

    sget-boolean v49, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_ENABLE_WIFI_CONNECTION_TYPE:Z

    if-eqz v49, :cond_29

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    const-string/jumbo v50, "wifi_cmcc_manual"

    const/16 v51, 0x0

    invoke-static/range {v49 .. v51}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    const-string/jumbo v49, "WifiStatusReceiver"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "wifiConnectionType is"

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v49, 0x2

    move/from16 v0, v45

    move/from16 v1, v49

    if-eq v0, v1, :cond_21

    if-eqz v41, :cond_28

    if-nez v45, :cond_28

    :cond_21
    return-void

    :cond_22
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_23
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_20

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    if-nez v9, :cond_24

    const-string/jumbo v49, "WifiStatusReceiver"

    const-string/jumbo v50, "constructAccessPoints config is null"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_24
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v49, v0

    if-nez v49, :cond_27

    const-string/jumbo v40, ""

    :goto_6
    invoke-interface/range {v39 .. v39}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_25
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v49

    if-eqz v49, :cond_26

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/net/wifi/ScanResult;

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_25

    move-object/from16 v0, v37

    invoke-static {v0, v9}, Lcom/android/systemui/wifi/WifiStatusReceiver;->isSameSecurity(Landroid/net/wifi/ScanResult;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v49

    if-eqz v49, :cond_25

    add-int/lit8 v41, v41, 0x1

    :cond_26
    if-eqz v41, :cond_23

    goto/16 :goto_4

    :cond_27
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v49, v0

    invoke-static/range {v49 .. v49}, Lcom/android/systemui/wifi/WifiStatusReceiver;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    goto :goto_6

    :cond_28
    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_29
    if-nez v41, :cond_1

    invoke-virtual/range {v46 .. v46}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v49

    if-eqz v49, :cond_2a

    invoke-direct/range {p0 .. p2}, Lcom/android/systemui/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_2a
    const/16 v49, 0x1

    sput-boolean v49, Lcom/android/systemui/wifi/WifiStatusReceiver;->sShowOnceFlag:Z

    const-string/jumbo v49, "WifiStatusReceiver"

    const-string/jumbo v50, "!wifiManager.isWifiEnabled(), sShowOnceFlag = true"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2b
    const-string/jumbo v49, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_2d

    const-string/jumbo v49, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v46 .. v46}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v49

    if-eqz v49, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v49

    if-eqz v49, :cond_1

    const-string/jumbo v49, "WifiStatusReceiver"

    const-string/jumbo v50, "Factory Mode is ON. Turn off Wi-Fi"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v49, 0x0

    move-object/from16 v0, v46

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-string/jumbo v49, "ATT"

    sget-object v50, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_VENDOR_NOTI_STYLE:Ljava/lang/String;

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_2c

    const-string/jumbo v49, "WifiStatusReceiver"

    const-string/jumbo v50, "Factory Mode is ON. Disabled internet service check"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    const-string/jumbo v50, "wifi_watchdog_poor_network_test_enabled"

    const/16 v51, 0x0

    invoke-static/range {v49 .. v51}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0f035f

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v49

    const/16 v50, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_2d
    const-string/jumbo v49, "ACTION_AGGREGATION_DELAY"

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_30

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v49

    const-string/jumbo v50, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual/range {v49 .. v50}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_30

    const-string/jumbo v49, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/net/wifi/WifiManager;

    const/16 v40, 0x0

    if-eqz v46, :cond_2e

    invoke-virtual/range {v46 .. v46}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v40

    :cond_2e
    if-eqz v40, :cond_1

    const-string/jumbo v49, "ro.build.scafe.cream"

    invoke-static/range {v49 .. v49}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    const-string/jumbo v50, "white"

    invoke-virtual/range {v49 .. v50}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v49

    if-eqz v49, :cond_2f

    new-instance v13, Landroid/view/ContextThemeWrapper;

    const v49, 0x103012b

    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-direct {v13, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object/from16 p1, v13

    :cond_2f
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0b0021

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v49

    const-string/jumbo v50, "#ff"

    const-string/jumbo v51, "#"

    invoke-virtual/range {v49 .. v51}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const/16 v50, 0x1

    move/from16 v0, v50

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v50, v0

    new-instance v51, Ljava/lang/StringBuilder;

    invoke-direct/range {v51 .. v51}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v52, "<font color="

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    move-object/from16 v0, v51

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string/jumbo v52, ">"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-static/range {v40 .. v40}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v52

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    const-string/jumbo v52, "</font>"

    invoke-virtual/range {v51 .. v52}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    const/16 v52, 0x0

    aput-object v51, v50, v52

    const v51, 0x7f0f009b

    move-object/from16 v0, v49

    move/from16 v1, v51

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v49

    const/16 v50, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v49

    const v50, 0x102000b

    invoke-virtual/range {v49 .. v50}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v44

    check-cast v44, Landroid/widget/TextView;

    const/16 v49, 0x11

    move-object/from16 v0, v44

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_30
    const-string/jumbo v49, "ACTION_AGGREGATION_DISCONNECT"

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_31

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v49

    const-string/jumbo v50, "CscFeature_Wifi_SupportWifiAggregation"

    invoke-virtual/range {v49 .. v50}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v49

    if-eqz v49, :cond_31

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v49

    const v50, 0x7f0f035c

    invoke-virtual/range {v49 .. v50}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v25

    const/16 v49, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v49

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_31
    const-string/jumbo v49, "com.samsung.android.net.wifi.SHOW_SCC_DIALOG"

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_32

    const-string/jumbo v49, "netid"

    const/16 v50, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    const-string/jumbo v49, "wifip2p"

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v49

    const/16 v50, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v49

    move-object/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v31

    new-instance v49, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v49

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    const v51, 0x7f0f035e

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v50

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    const v51, 0x7f0f0042

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v50

    new-instance v51, Lcom/android/systemui/wifi/WifiStatusReceiver$1;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    move-object/from16 v2, v34

    move-object/from16 v3, v31

    move/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/wifi/WifiStatusReceiver$1;-><init>(Lcom/android/systemui/wifi/WifiStatusReceiver;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)V

    invoke-virtual/range {v49 .. v51}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v50

    const v51, 0x7f0f0017

    invoke-virtual/range {v50 .. v51}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v50

    new-instance v51, Lcom/android/systemui/wifi/WifiStatusReceiver$2;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/wifi/WifiStatusReceiver$2;-><init>(Lcom/android/systemui/wifi/WifiStatusReceiver;)V

    invoke-virtual/range {v49 .. v51}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v49

    const/16 v50, 0x7d8

    invoke-virtual/range {v49 .. v50}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_32
    const-string/jumbo v49, "com.samsung.android.net.wifi.ENABLE_WIFI_TRIGGERED_BY_USER"

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_33

    const/16 v49, 0x1

    sput-boolean v49, Lcom/android/systemui/wifi/WifiStatusReceiver;->mEnableWifiTriggeredByUser:Z

    goto/16 :goto_0

    :cond_33
    const-string/jumbo v49, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v49

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v49

    if-eqz v49, :cond_1

    const-string/jumbo v49, "wifi_state"

    const/16 v50, 0x4

    move-object/from16 v0, p2

    move-object/from16 v1, v49

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v49

    move/from16 v0, v49

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/wifi/WifiStatusReceiver;->mWifiState:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->mWifiState:I

    move/from16 v49, v0

    const/16 v50, 0x3

    move/from16 v0, v49

    move/from16 v1, v50

    if-eq v0, v1, :cond_34

    const-string/jumbo v49, "WifiStatusReceiver"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "mWifiState = "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/wifi/WifiStatusReceiver;->mWifiState:I

    move/from16 v51, v0

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_34
    sget-boolean v49, Lcom/android/systemui/wifi/WifiStatusReceiver;->mEnableWifiTriggeredByUser:Z

    if-nez v49, :cond_35

    const-string/jumbo v49, "WifiStatusReceiver"

    const-string/jumbo v50, "wifi enabled not triggered by user action, return"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_35
    const/16 v49, 0x0

    sput-boolean v49, Lcom/android/systemui/wifi/WifiStatusReceiver;->mEnableWifiTriggeredByUser:Z

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v49

    const-string/jumbo v50, "wifi_setupwizard_complete_time_millis"

    const-wide/16 v52, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v50

    move-wide/from16 v2, v52

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v32

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    const-wide v22, 0x9cbebd50L

    const-string/jumbo v49, "WifiStatusReceiver"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "origin = "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, ", now = "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v50

    const-string/jumbo v51, ", margin = "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v50, 0x0

    cmp-long v49, v32, v50

    if-eqz v49, :cond_36

    const-wide/16 v50, 0x0

    cmp-long v49, v28, v50

    if-nez v49, :cond_37

    :cond_36
    const-string/jumbo v49, "WifiStatusReceiver"

    const-string/jumbo v50, "not passed one month from first boot"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_37
    sub-long v50, v28, v32

    const-wide v52, 0x9cbebd50L

    cmp-long v49, v50, v52

    if-ltz v49, :cond_36

    const-string/jumbo v49, "wifi"

    move-object/from16 v0, p1

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/net/wifi/WifiManager;

    if-nez v46, :cond_38

    const-string/jumbo v49, "WifiStatusReceiver"

    const-string/jumbo v50, "wifiManager is null"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_38
    invoke-virtual/range {v46 .. v46}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_39

    const-string/jumbo v49, "WifiStatusReceiver"

    const-string/jumbo v50, "configuredNetworks is null"

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_39
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v30

    const-string/jumbo v49, "WifiStatusReceiver"

    new-instance v50, Ljava/lang/StringBuilder;

    invoke-direct/range {v50 .. v50}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v51, "number of configured networks = "

    invoke-virtual/range {v50 .. v51}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v50

    move-object/from16 v0, v50

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v50

    invoke-static/range {v49 .. v50}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v49, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_MAX_CONFIGURED_NETWORKS_SIZE:I

    move/from16 v0, v49

    move/from16 v1, v30

    if-ge v0, v1, :cond_1

    const/16 v49, 0x2

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    sget v50, Lcom/android/systemui/wifi/WifiStatusReceiver;->CSC_MAX_CONFIGURED_NETWORKS_SIZE:I

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    const/16 v51, 0x0

    aput-object v50, v49, v51

    add-int/lit8 v50, v30, -0x32

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    const/16 v51, 0x1

    aput-object v50, v49, v51

    const v50, 0x7f0f0361

    move-object/from16 v0, p1

    move/from16 v1, v50

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v49, v0

    add-int/lit8 v50, v30, -0x32

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    const/16 v51, 0x0

    aput-object v50, v49, v51

    const v50, 0x7f0f0362

    move-object/from16 v0, p1

    move/from16 v1, v50

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    new-instance v49, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v49

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v50, 0x7f0f0360

    invoke-virtual/range {v49 .. v50}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    move-object/from16 v0, v49

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    new-instance v50, Lcom/android/systemui/wifi/WifiStatusReceiver$3;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/android/systemui/wifi/WifiStatusReceiver$3;-><init>(Lcom/android/systemui/wifi/WifiStatusReceiver;Ljava/util/List;)V

    move-object/from16 v0, v49

    move-object/from16 v1, v35

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    new-instance v50, Lcom/android/systemui/wifi/WifiStatusReceiver$4;

    move-object/from16 v0, v50

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/wifi/WifiStatusReceiver$4;-><init>(Lcom/android/systemui/wifi/WifiStatusReceiver;)V

    const v51, 0x7f0f0017

    move-object/from16 v0, v49

    move/from16 v1, v51

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v15

    invoke-virtual {v15}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v49

    const/16 v50, 0x7d8

    invoke-virtual/range {v49 .. v50}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x5 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0xa -> :sswitch_6
        0x14 -> :sswitch_7
        0x1e -> :sswitch_8
        0x32 -> :sswitch_9
    .end sparse-switch
.end method
