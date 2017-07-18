.class public Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;
.super Landroid/content/BroadcastReceiver;
.source "WifiIntentReciever.java"


# static fields
.field private static isWps:Z

.field private static mCountryChina:I

.field private static mSalesCodeCHM:I

.field private static prestate:Landroid/net/NetworkInfo$DetailedState;


# instance fields
.field private connMgr:Landroid/net/ConnectivityManager;

.field private mBeforeValue:Landroid/content/SharedPreferences;

.field private mDoNotShow:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    sput v0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private OnOffData(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->connMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    const-string/jumbo v0, "ConnHandler "

    const-string/jumbo v1, "The data service will be enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ConnHandler "

    const-string/jumbo v1, "ConnectivityManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isSIMCardReady(Landroid/content/Context;)Z
    .locals 9

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v1, 0x0

    const-string/jumbo v7, "phone"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v7

    if-le v7, v5, :cond_2

    move v0, v5

    :goto_0
    if-eqz v0, :cond_3

    const-string/jumbo v7, "gsm.sim.state"

    const-string/jumbo v8, "-1,-1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, ","

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "READY"

    aget-object v6, v3, v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    array-length v6, v3

    if-le v6, v5, :cond_1

    const-string/jumbo v6, "READY"

    aget-object v5, v3, v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v6

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v5

    const/4 v6, 0x5

    if-ne v6, v5, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private showPrompt(Landroid/content/Context;)V
    .locals 13

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v11, "airplane_mode_on"

    invoke-static {v8, v11, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1

    move v3, v9

    :goto_0
    if-nez v3, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->isSIMCardReady(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "connectivity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->connMgr:Landroid/net/ConnectivityManager;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->connMgr:Landroid/net/ConnectivityManager;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->connMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v8

    if-eqz v8, :cond_0

    sget-boolean v8, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    if-eqz v8, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v10

    goto :goto_0

    :cond_2
    sget v8, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    if-ne v8, v9, :cond_5

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mDoNotShow:Landroid/content/SharedPreferences;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mBeforeValue:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mDoNotShow:Landroid/content/SharedPreferences;

    const-string/jumbo v11, "connhan_do_not_show"

    invoke-interface {v8, v11, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mBeforeValue:Landroid/content/SharedPreferences;

    const-string/jumbo v11, "connhan_value"

    invoke-interface {v8, v11, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v0, :cond_4

    const-string/jumbo v8, "ConnHandler "

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "on Create Do not Show again enabled. the Button Value is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_3

    const-string/jumbo v8, "ConnHandler "

    const-string/jumbo v10, "Setted button is Connect"

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->OnOffData(Z)V

    goto :goto_1

    :cond_3
    const-string/jumbo v8, "ConnHandler "

    const-string/jumbo v9, "Setted button is Disconnect"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->OnOffData(Z)V

    goto :goto_1

    :cond_4
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    const-class v8, Lcom/samsung/android/settings/wifi/connectionhandler/WifiConnectionHandlerActivity;

    invoke-direct {v5, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v8, 0x10000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v8, 0x2000000

    invoke-virtual {v5, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v8, "ConnHandler "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ActivityNotFoundException:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catch_1
    move-exception v2

    const-string/jumbo v8, "ConnHandler "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0c3c

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "ro.build.scafe.cream"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "white"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    new-instance v7, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x103012b

    invoke-direct {v7, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v7, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v6, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    sget v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "Country"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v13, "CHINA"

    invoke-virtual {v13, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    sput v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    :cond_0
    :goto_0
    sget v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    sget v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "SalesCode"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v13, "CHM"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    sput v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    :cond_1
    :goto_1
    const-string/jumbo v13, "com.samsung.android.intent.action.WLAN_CHECK_WPS_OPERATION"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string/jumbo v13, "state"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    sput-boolean v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    sget v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "wifi_cmcc_manual"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const-string/jumbo v13, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/WifiManager;

    if-eqz v11, :cond_2

    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    const/16 v13, 0xf

    iput v13, v8, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v14, "enable"

    sget-boolean v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    if-nez v13, :cond_5

    const/4 v13, 0x1

    :goto_2
    invoke-virtual {v2, v14, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v2, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string/jumbo v13, "ConnHandler "

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "WPS set KEY_WIFI_CONNECTION_TYPE acccording to the value of isWps = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->isWps:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v8}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v13

    if-eqz v13, :cond_2

    const-string/jumbo v13, "ConnHandler "

    const-string/jumbo v14, "KEY_WIFI_CONNECTION_TYPE config store error"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_3
    return-void

    :cond_3
    const/4 v13, 0x0

    sput v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mCountryChina:I

    goto/16 :goto_0

    :cond_4
    const/4 v13, 0x0

    sput v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    goto/16 :goto_1

    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    :cond_6
    const-string/jumbo v13, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    const-string/jumbo v13, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    sget-object v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v6, :cond_7

    return-void

    :cond_7
    sget-object v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_a

    sget-object v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_a

    sget-object v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_a

    :goto_4
    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v13, :cond_b

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v13, :cond_8

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_8
    sget-object v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_e

    sget-object v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_9

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_e

    :cond_9
    sput-object v6, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    return-void

    :cond_a
    sget-object v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_8

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_4

    :cond_b
    const-string/jumbo v13, "bssid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_c

    return-void

    :cond_c
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-nez v13, :cond_d

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->showPrompt(Landroid/content/Context;)V

    :cond_d
    sput-object v6, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    goto/16 :goto_3

    :cond_e
    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v6, v13, :cond_f

    sget-object v13, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v6, v13, :cond_9

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_9

    :cond_f
    const-string/jumbo v13, "bssid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_10

    return-void

    :cond_10
    sput-object v6, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->prestate:Landroid/net/NetworkInfo$DetailedState;

    goto/16 :goto_3

    :cond_11
    sget v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiIntentReciever;->mSalesCodeCHM:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_2

    const-string/jumbo v13, "com.samsung.android.settings.WLAN_SSID_AVAILABLE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "wifi_cmcc_manual"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v13, 0x2

    if-ne v4, v13, :cond_2

    new-instance v10, Landroid/content/Intent;

    const-class v13, Lcom/samsung/android/settings/wifi/connectionhandler/WifiSelectHandlerActivity;

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v13, 0x10000000

    invoke-virtual {v10, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v13, 0x2000000

    invoke-virtual {v10, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3
.end method
