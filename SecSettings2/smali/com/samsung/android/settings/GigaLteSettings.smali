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

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimValid()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/GigaLteSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isTether()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/GigaLteSettings;Z)V
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
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    iput-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.mptcp.MPTCP_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMptcpStateReceiver:Lcom/samsung/android/settings/GigaLteSettings$MptcpStateReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
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

    const v4, 0x7f0b0b7e

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

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
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

    const v1, 0x7f0b0b84

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

    const v1, 0x7f0b0b85

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

    const v1, 0x7f0b0b86

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

    const v1, 0x7f0b0b7d

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v3

    if-eqz v3, :cond_1

    const v1, 0x7f0b0b8c

    :cond_0
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-object v2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v1, 0x7f0b0ba2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v1, 0x7f0b0ba7

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

    const/4 v5, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->registerReceivers()V

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "mobile_data"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/GigaLteSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    sget-boolean v1, Lcom/samsung/android/settings/GigaLteSettings;->IsKTT:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsKTtestOnly:Z

    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimValid()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isTether()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "mptcp_value"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_3
    return-void

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 11

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "mptcp_value"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-ne p2, v0, :cond_1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    sget-boolean v8, Lcom/samsung/android/settings/GigaLteSettings;->IsKTT:Z

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mIsKTtestOnly:Z

    if-eqz v8, :cond_3

    :cond_2
    if-eqz p2, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v8

    if-eqz v8, :cond_12

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b8b

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSimPresent()Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b8d

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$12;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$12;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    :goto_1
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "smart_bonding"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_8

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b7e

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "wifi_watchdog_poor_network_test_enabled"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b87

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_2
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$4;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$4;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$5;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$5;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_4
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b88

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "wifi_watchdog_poor_network_test_enabled"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b89

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_6
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b8a

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_7
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b82

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_b

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b7e

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b80

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$8;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$8;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v10, 0x7f0b0bc0

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$9;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$9;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_a
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b7e

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b7f

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$6;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$6;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v10, 0x7f0b0bc2

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$7;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$7;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b7e

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b81

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$10;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$10;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v10, 0x7f0b0bc1

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$11;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$11;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/GigaLteSettings;->isSKTSimValid()Z

    move-result v8

    if-nez v8, :cond_d

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b8e

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$13;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$13;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_d
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_e

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_f

    :cond_e
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b8f

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$14;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$14;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_f
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "smart_bonding"

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b90

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$15;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$15;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$16;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$16;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b92

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$19;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$19;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$20;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$20;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_11
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0b93

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$17;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$17;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$18;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$18;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_1

    :cond_12
    if-eqz p2, :cond_1a

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_13

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1a

    :cond_13
    const/4 v6, 0x0

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    const-string/jumbo v8, "GigaLteSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Connected Wi-Fi SSID = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isAveaSIMValid(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_16

    const v4, 0x7f0b0acc

    const v2, 0x7f0b0acd

    const v5, 0x7f0b0ba1

    const v3, 0x7f0b0ba3

    const v7, 0x7f0b0ba4

    const v1, 0x7f0b0ba5

    :goto_3
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_15

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_17

    :cond_15
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$23;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$23;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v8, v4, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$24;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$24;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v8, v2, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_16
    const v4, 0x7f0b18ae

    const v2, 0x7f0b18af

    const v5, 0x7f0b0ba6

    const v3, 0x7f0b0ba8

    const v7, 0x7f0b0ba9

    const v1, 0x7f0b0bab

    goto :goto_3

    :cond_17
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$21;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$21;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v8, v4, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$22;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$22;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v8, v2, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_18
    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isMobileNetworkEnabled(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_19

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$25;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$25;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v8, v4, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$26;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$26;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    invoke-virtual {v8, v2, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_19
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isVodafoneSIMValid(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1a

    if-eqz v6, :cond_1a

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "\"Supernet-SIM\""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    :cond_1a
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/GigaLteSettings;->showProgressDialog()V

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/GigaLteSettings;->sendMptcpStartBroadCast(Z)V

    return-void

    :cond_1b
    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const v9, 0x7f0b0baa

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    new-instance v9, Lcom/samsung/android/settings/GigaLteSettings$27;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/GigaLteSettings$27;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/samsung/android/settings/GigaLteSettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

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

    const v1, 0x7f0b0f21

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/GigaLteSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/GigaLteSettings$28;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/GigaLteSettings$28;-><init>(Lcom/samsung/android/settings/GigaLteSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/settings/GigaLteSettings;->mHoldingHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/GigaLteSettings;->mRemoveProgress:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
