.class public Lcom/samsung/android/settings/GigaLteSettings;
.super Landroid/app/Fragment;
.source "GigaLteSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/GigaLteSettings$1;,
        Lcom/samsung/android/settings/GigaLteSettings$2;,
        Lcom/samsung/android/settings/GigaLteSettings$3;,
        Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;,
        Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;
    }
.end annotation


# static fields
.field private static IsKTT:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private isMobileDataEnabling:Z

.field private isNetworkEnabling:Z

.field private isWiFiEnabling:Z

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mHoldingHandler:Landroid/os/Handler;

.field private mHotSwapReceiver:Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;

.field private mIsKTtestOnly:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

.field private mRemoveProgress:Ljava/lang/Runnable;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/GigaLteSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->isMobileDataEnabling:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/GigaLteSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->isNetworkEnabling:Z

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/GigaLteSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->isWiFiEnabling:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/GigaLteSettings;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/GigaLteSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/GigaLteSettings;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/GigaLteSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/GigaLteSettings;->isMobileDataEnabling:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/GigaLteSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/GigaLteSettings;->isNetworkEnabling:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/GigaLteSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/GigaLteSettings;->isWiFiEnabling:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/GigaLteSettings;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/GigaLteSettings;->getWiFiState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/GigaLteSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/GigaLteSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimValid()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/GigaLteSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isTether()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/GigaLteSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->checkSwitchDisableStatus()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/GigaLteSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "KTT"

    const-string/jumbo v1, "EUR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/GigaLteSettings;->IsKTT:Z

    new-instance v0, Lcom/samsung/android/settings/GigaLteSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/GigaLteSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/GigaLteSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/settings/GigaLteSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/GigaLteSettings$1;-><init>(Lcom/samsung/android/settings/GigaLteSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/GigaLteSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/GigaLteSettings$2;-><init>(Lcom/samsung/android/settings/GigaLteSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private checkSwitchDisableStatus()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    sget-boolean v0, Lcom/samsung/android/settings/GigaLteSettings;->IsKTT:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsKTtestOnly:Z

    :goto_0
    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isTether()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private getWiFiState(I)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private isRoaming()Z
    .locals 8

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    const-string/jumbo v5, "GigaLteSettings"

    const-string/jumbo v6, "isRoaming() isAisSIMValid now and isRoaming"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v6

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "52015"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "GigaLteSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isRoaming() current networkId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    return v1
.end method

.method private isSKTSimValid()Z
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "45005"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isSimPresent()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isSimValid()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isEnabledDataWithAisSIM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    sget-boolean v2, Lcom/samsung/android/settings/GigaLteSettings;->IsKTT:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "45008"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "45002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private isTether()Z
    .locals 15

    const/4 v10, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "connectivity"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    array-length v12, v6

    move v11, v10

    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v5, v6, v11

    array-length v13, v3

    move v9, v10

    :goto_1
    if-ge v9, v13, :cond_1

    aget-object v4, v3, v9

    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v8, 0x1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    array-length v12, v2

    move v11, v10

    :goto_2
    if-ge v11, v12, :cond_5

    aget-object v5, v2, v11

    array-length v13, v3

    move v9, v10

    :goto_3
    if-ge v9, v13, :cond_4

    aget-object v4, v3, v9

    invoke-virtual {v5, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v7, 0x1

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    goto :goto_2

    :cond_5
    const-string/jumbo v9, "bluetooth.pan.tether_on"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    const/4 v8, 0x1

    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v9

    const/16 v10, 0xd

    if-ne v9, v10, :cond_7

    const/4 v8, 0x1

    :cond_7
    return v8
.end method

.method private registerReceivers()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    iput-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.samsung.android.mptcp.MPTCP_STATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;

    if-nez v2, :cond_1

    new-instance v2, Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    iput-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.samsung.intent.action.SIMHOTSWAP"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private sendMptcpStartBroadCast(Z)V
    .locals 5

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.mptcp.MPTCP_START"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "mptcp_start"

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "GigaLteSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Sending MPTCP Start Stop broadcast to MPTCP Service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "wifi_watchdog_poor_network_test_enabled"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unRegisterReceivers()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHotSwapReceiver:Lcom/samsung/android/settings/GigaLteSettings$HotSwapReceiver;

    :cond_1
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mptcp_value"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const v4, 0x7f0b0b9a

    const v3, 0x104000a

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v0, "persist.mptcp.limitation"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsKTtestOnly:Z

    const-string/jumbo v0, "GigaLteSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Is Test mode for KTT = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsKTtestOnly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "mptcp"

    const-string/jumbo v1, "gigaltesettings create"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsKTtestOnly:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/samsung/android/settings/GigaLteSettings;->IsKTT:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimPresent()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b0ba0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimValid()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b0ba1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0b0ba2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v3, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const v3, 0x7f04002b

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f110136

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0b99

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v3

    if-eqz v3, :cond_1

    const v1, 0x7f0b0ba8

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v1, 0x7f0b0bbe

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v1, 0x7f0b0bc3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v1, 0x7f0b0bc9

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->unRegisterReceivers()V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string/jumbo v1, "mptcp"

    const-string/jumbo v2, "gigaltesettings resume"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->registerReceivers()V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "airplane_mode_on"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->checkSwitchDisableStatus()V

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "mptcp_value"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 12

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "mptcp_value"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ne p2, v0, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    sget-boolean v9, Lcom/samsung/android/settings/GigaLteSettings;->IsKTT:Z

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsKTtestOnly:Z

    if-eqz v9, :cond_3

    :cond_2
    if-eqz p2, :cond_14

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isAisSIMValid(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "smart_bonding"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_10

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0bca

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wifi_watchdog_poor_network_test_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f0b0bd8

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0b0bd0

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$12;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$12;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v11, 0x104000a

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$13;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$13;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v11, 0x1040000

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_3
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "smart_bonding"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_8

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0b9a

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wifi_watchdog_poor_network_test_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0ba3

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_2
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$4;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$4;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v11, 0x104000a

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$5;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$5;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v11, 0x1040000

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_4
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0ba4

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wifi_watchdog_poor_network_test_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0ba5

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0ba6

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_7
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0b9e

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_b

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0b9a

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0b9c

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$8;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$8;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v11, 0x7f0b0be8

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$9;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$9;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v11, 0x1040000

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_a
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0b9a

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0b9b

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$6;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$6;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v11, 0x7f0b0bea

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$7;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$7;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v11, 0x1040000

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0b9a

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0b9d

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$10;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$10;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v11, 0x7f0b0be9

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$11;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$11;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v11, 0x1040000

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_c
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f0b0bd8

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0b0ca2

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const v10, 0x7f0b0bd1

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_f

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "wifi_watchdog_poor_network_test_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f0b0bd8

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0b0bd2

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_e
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f0b0bd8

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0b0ca2

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const v10, 0x7f0b0bd3

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_f
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f0b0bd8

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0b0bce

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_12

    :cond_11
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_13

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0bca

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f0b0ca2

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0b0bcc

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$16;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$16;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v11, 0x7f0b0be8

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$17;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$17;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v11, 0x1040000

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_12
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0bca

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f0b0ca2

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0b0bcb

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$14;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$14;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v11, 0x7f0b0bea

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$15;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$15;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v11, 0x1040000

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_13
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_14

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0bca

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f0b0ca2

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f0b0bcd

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/GigaLteSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$18;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$18;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v11, 0x7f0b0be9

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$19;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$19;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v11, 0x1040000

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_14
    if-eqz p2, :cond_1b

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v9

    if-eqz v9, :cond_1b

    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0ba7

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimPresent()Z

    move-result v9

    if-nez v9, :cond_15

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0ba9

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$20;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$20;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v11, 0x104000a

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    :goto_3
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSKTSimValid()Z

    move-result v9

    if-nez v9, :cond_16

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0baa

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$21;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$21;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v11, 0x104000a

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_16
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_17

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_18

    :cond_17
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0bab

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$22;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$22;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v11, 0x104000a

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :cond_18
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "smart_bonding"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_19

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0bac

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$23;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$23;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v11, 0x104000a

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$24;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$24;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v11, 0x1040000

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_3

    :cond_19
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1a

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0bae

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$27;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$27;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v11, 0x104000a

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$28;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$28;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v11, 0x1040000

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_3

    :cond_1a
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0baf

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$25;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$25;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v11, 0x104000a

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$26;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$26;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v11, 0x1040000

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_3

    :cond_1b
    if-eqz p2, :cond_23

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1c

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_23

    :cond_1c
    const/4 v7, 0x0

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v9, :cond_1d

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    const-string/jumbo v9, "GigaLteSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Connected Wi-Fi SSID = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1f

    const v5, 0x7f0b0ae8

    const v3, 0x7f0b0ae9

    const v6, 0x7f0b0bbd

    const v4, 0x7f0b0bbf

    const v8, 0x7f0b0bc0

    const v2, 0x7f0b0bc1

    :goto_4
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1e

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_20

    :cond_1e
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_21

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$31;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$31;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v9, v5, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$32;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$32;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v9, v3, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_1f
    const v5, 0x7f0b19dc

    const v3, 0x7f0b19dd

    const v6, 0x7f0b0bc2

    const v4, 0x7f0b0bc4

    const v8, 0x7f0b0bc5

    const v2, 0x7f0b0bc7

    goto :goto_4

    :cond_20
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$29;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$29;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v9, v5, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$30;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$30;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v9, v3, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_21
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_22

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$33;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$33;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v9, v5, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$34;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$34;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v9, v3, v10}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_22
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_23

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_23

    if-eqz v7, :cond_23

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "\"Supernet-SIM\""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_24

    :cond_23
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->showProgressDialog()V

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    return-void

    :cond_24
    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v10, 0x7f0b0bc6

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v10, Lcom/samsung/android/settings/GigaLteSettings$35;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/GigaLteSettings$35;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v11, 0x104000a

    invoke-virtual {v9, v11, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public showProgressDialog()V
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b104f

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/GigaLteSettings$36;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GigaLteSettings$36;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
