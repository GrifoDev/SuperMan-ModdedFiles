.class public Lcom/samsung/android/settings/deviceinfo/StatusVZW;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "StatusVZW.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$1;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$2;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$3;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$4;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$5;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$6;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$7;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$8;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$9;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$MyHandler;,
        Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;
    }
.end annotation


# static fields
.field private static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static buf:[B

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private NAI_length:I

.field private bShowImsStatus:Z

.field private isResetFileExist:Ljava/lang/Boolean;

.field private isSysScopeStatus:I

.field private mActivePhone:I

.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mBtAddress:Landroid/preference/Preference;

.field private mCM:Landroid/net/ConnectivityManager;

.field private mConnectivityIntentFilter:Landroid/content/IntentFilter;

.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mEthernetMacAddressPref:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mImsManager:Lcom/sec/ims/ImsManager;

.field private mImsRegistered:Z

.field private mIpAddress:Landroid/preference/Preference;

.field private mPhone:[Lcom/android/internal/telephony/Phone;

.field private mPhoneCount:I

.field private mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegiListener:Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

.field private mRes:Landroid/content/res/Resources;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mShowLatestAreaInfo:Z

.field private mSignalStrength:[Landroid/preference/Preference;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mSysScopeReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:[Landroid/telephony/TelephonyManager;

.field private mUnavailable:Ljava/lang/String;

.field private mUnknown:Ljava/lang/String;

.field private mUptime:Landroid/preference/Preference;

.field private mUserName:Landroid/preference/Preference;

.field private mWfcObserver:Landroid/database/ContentObserver;

.field private mWifiMacAddress:Landroid/preference/Preference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWimaxMacAddress:Landroid/preference/Preference;

.field private rilHandler:Landroid/os/Handler;

.field private user_name:Ljava/lang/String;

.field private zero_eight:Ljava/lang/String;

.field private zero_five:Ljava/lang/String;

.field private zero_four:Ljava/lang/String;

.field private zero_nine:Ljava/lang/String;

.field private zero_seven:Ljava/lang/String;

.field private zero_six:Ljava/lang/String;

.field private zero_three:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->NAI_length:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRegiListener:Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUserName:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->bShowImsStatus:Z

    return v0
.end method

.method static synthetic -get3()[B
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->buf:[B

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    return v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)Lcom/sec/ims/ImsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)[Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/deviceinfo/StatusVZW;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->NAI_length:I

    return p1
.end method

.method static synthetic -set1([B)[B
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->buf:[B

    return-object p0
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/deviceinfo/StatusVZW;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    return p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Lcom/sec/ims/ImsManager;)Lcom/sec/ims/ImsManager;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    return-object p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsRegistered:Z

    return p1
.end method

.method static synthetic -set5(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -set6(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUserName:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic -set7(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->changeSysScopeStatus()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getOemData()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateAreaInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateDataState()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateNetworkType()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/telephony/ServiceState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/deviceinfo/StatusVZW;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateStatus(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "data_state"

    aput-object v1, v0, v3

    const-string/jumbo v1, "service_state"

    aput-object v1, v0, v4

    const-string/jumbo v1, "operator_name"

    aput-object v1, v0, v5

    const-string/jumbo v1, "roaming_state"

    aput-object v1, v0, v6

    const-string/jumbo v1, "user_name"

    aput-object v1, v0, v7

    const-string/jumbo v1, "network_type"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "latest_area_info"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "imei"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "imei_sv"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "prl_version"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "eri_version"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "min_number"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "meid_number"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "signal_strength"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "icc_id"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "sid_number"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "nid_number"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    aput-object v1, v0, v5

    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->user_name:Ljava/lang/String;

    const-string/jumbo v0, "000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_three:Ljava/lang/String;

    const-string/jumbo v0, "0000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_four:Ljava/lang/String;

    const-string/jumbo v0, "00000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_five:Ljava/lang/String;

    const-string/jumbo v0, "000000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_six:Ljava/lang/String;

    const-string/jumbo v0, "0000000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_seven:Ljava/lang/String;

    const-string/jumbo v0, "00000000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_eight:Ljava/lang/String;

    const-string/jumbo v0, "000000000"

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_nine:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mServiceMessenger:Landroid/os/Messenger;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isResetFileExist:Ljava/lang/Boolean;

    iput v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRegiListener:Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    iput-boolean v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->bShowImsStatus:Z

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$1;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$2;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$3;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$4;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$5;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$6;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->rilHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSvcModeMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$7;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$8;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWfcObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$9;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private changeSysScopeStatus()V
    .locals 12

    const-wide/16 v10, 0x3e8

    const v9, 0x7f0b0521

    const/4 v8, -0x1

    const-string/jumbo v6, "sysscope_status"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    div-long v0, v6, v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    div-long v4, v6, v10

    iget v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    if-ne v6, v8, :cond_0

    const-wide/16 v6, 0x78

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isSysScopeStatus:I

    if-ne v6, v8, :cond_2

    const v6, 0x7f0b0523

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const v6, 0x7f0b0520

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private connectToRilService()V
    .locals 4

    const-string/jumbo v1, "Status"

    const-string/jumbo v2, "connect To Secphone service"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.phone"

    const-string/jumbo v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9

    const-wide/16 v6, 0x3c

    rem-long v4, p1, v6

    long-to-int v2, v4

    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private convert2VZWFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x1

    :goto_0
    add-int/lit8 v4, v3, 0x1

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v2, -0x1

    aget-char v4, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 v4, v2, 0x4

    if-nez v4, :cond_0

    const-string/jumbo v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0
.end method

.method private convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8

    const/16 v7, 0x10

    const/4 v6, 0x2

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    :pswitch_0
    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string/jumbo v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_6
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_7
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_8
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8

    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    return-object v3

    :pswitch_0
    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string/jumbo v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_4
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_5
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_6
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_7
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_eight:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_8
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_nine:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_9
    const-string/jumbo v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_a
    const-string/jumbo v3, "00"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_b
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_three:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_c
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_four:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_d
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_five:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_e
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_six:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_f
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->zero_seven:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private getIMEI(I)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "USC"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "XAR"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xd

    if-le v2, v3, :cond_2

    const/4 v2, 0x0

    const/16 v3, 0xe

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->convert2VZWFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getIccId(I)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "VZW"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->convert2VZWFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getMeidNumber(I)Ljava/lang/String;
    .locals 7

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v4, p1

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Setting_EnableConversion4MEIDAndESN"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getMeidNumber() => devId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    const-string/jumbo v2, ""

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Dec:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\nHex:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "KEY_MEID_NUMBER() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "VZW"

    sget-object v5, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v4

    :goto_1
    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private getOemData()V
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x51

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xe

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    return-void

    :catch_2
    move-exception v2

    const-string/jumbo v3, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_2
    throw v3

    :catch_3
    move-exception v2

    const-string/jumbo v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private getOperatorName(Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 4

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "DCM"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v2, "KDI"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "kddi"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, "au"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "TGY"

    sget-object v3, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    const-string/jumbo v2, "China Telecom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0526

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "CU GSM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "CHN-CUGSM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "China Unicom"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "CHN-UNICOM"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0527

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const-string/jumbo v2, "CMCC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string/jumbo v2, "CHINA MOBILE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0528

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "PCCW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "PCCW-HKT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_9
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f0b0529

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;

    invoke-direct {v0, p0, p1, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$10;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;II)V

    return-object v0
.end method

.method private getServiceStateString(I)Ljava/lang/String;
    .locals 2

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b1051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b1044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b1045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0b1047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hasBluetooth()Z
    .locals 1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasService()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    iget v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    return v1

    :pswitch_0
    return v2

    :pswitch_1
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hasWimax()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mCM:Landroid/net/ConnectivityManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 4

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v2, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "Status"

    const-string/jumbo v3, "mServiceMessenger is null. Do nothing."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private registerForWfcRegistrationStatus(Z)V
    .locals 3

    const-string/jumbo v0, "Status"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerForWfcRegistrationStatus "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setIpAddressStatus()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mIpAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mIpAddress:Landroid/preference/Preference;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setRssiNoti(I)V
    .locals 7

    const/4 v6, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v3, 0x5

    const/16 v4, 0x18

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v4, "Status"

    const-string/jumbo v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    const-string/jumbo v4, "Status"

    const-string/jumbo v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_1
    throw v4

    :catch_3
    move-exception v2

    const-string/jumbo v5, "Status"

    const-string/jumbo v6, "setRssiNoti : dos.close() error"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private setSysScopeStatus()V
    .locals 2

    const-string/jumbo v1, "sysscope_status"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f0b0523

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setWifiStatus()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWifiMacAddress:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    :cond_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setWimaxStatus()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "net.wimax.mac.address"

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private updateAreaInfo(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "latest_area_info"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateDataState()V
    .locals 6

    const v5, 0x7f0b104f

    iget v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getDataState(I)I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b1051

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    packed-switch v1, :pswitch_data_0

    :goto_0
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->hasService()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v3, "data_state"

    invoke-direct {p0, v3, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b1050

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b104e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v4, 0x7f0b104d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 9

    const/4 v8, 0x0

    iget v5, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    aget v5, v3, v8

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    iget v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    aget-object v5, v5, v6

    const-string/jumbo v5, "gsm.network.type"

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "Status"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateNetworkType() => networkType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    iget v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    aget-object v5, v5, v6

    const-string/jumbo v5, "gsm.voice.network.type"

    iget-object v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    invoke-static {v1, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Unknown"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "Unknown"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_0
    :goto_0
    const-string/jumbo v5, "CDMA-IS95A"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "CDMA-IS95B"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_1
    const-string/jumbo v0, "CDMA 1x"

    :cond_2
    :goto_1
    const-string/jumbo v5, "Status"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateNetworkType() => networkType name : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "Unknown"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    :cond_3
    const-string/jumbo v5, "network_type"

    invoke-direct {p0, v5, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    move-object v0, v4

    const-string/jumbo v5, "Status"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Replace networkType with voiceNetworkType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "EvDo-rev.0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v0, "CDMA EVDO"

    goto :goto_1

    :cond_6
    const-string/jumbo v5, "EvDo-rev.A"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v0, "CDMA EVDO"

    goto :goto_1

    :cond_7
    const-string/jumbo v5, "EvDo-rev.B"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v0, "CDMA EVDO"

    goto :goto_1

    :cond_8
    const-string/jumbo v5, "1xRTT"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v0, "CDMA 1x"

    goto :goto_1

    :cond_9
    const-string/jumbo v5, "UMTS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v0, "WCDMA"

    goto/16 :goto_1

    :cond_a
    const-string/jumbo v5, "HSDPA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string/jumbo v5, "HSUPA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    const-string/jumbo v5, "HSPA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    const-string/jumbo v0, "HSPA"

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v5, "HSPAP"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string/jumbo v0, "HSPA+"

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v5, "eHRPD"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string/jumbo v0, "eHRPD"

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v5, "LTE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string/jumbo v0, "LTE"

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v5, "GPRS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "EDGE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "GSM"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "TD-SCDMA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string/jumbo v0, "TD-SCDMA"

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    goto/16 :goto_1

    :cond_11
    iget-object v5, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    iget v6, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    aget-object v5, v5, v6

    aget v6, v3, v8

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v5

    invoke-static {v5}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "VZW"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    aget v6, v3, v8

    invoke-virtual {v5, v6}, Landroid/telephony/TelephonyManager;->getDataState(I)I

    move-result v2

    const-string/jumbo v5, "false"

    const-string/jumbo v6, "ro.ril.svlte1x"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    if-ne v2, v5, :cond_2

    const-string/jumbo v5, "LTE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string/jumbo v0, "1x RTT"

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v5, "OMN"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string/jumbo v5, "O2U"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_13

    const-string/jumbo v5, "XEC"

    sget-object v6, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_13
    const-string/jumbo v5, "LTE"

    const-string/jumbo v6, "4G"

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 6

    const v5, 0x7f0b1049

    const v4, 0x7f0b1048

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getServiceStateString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_UseChameleon"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportChameleonRoaming()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "roaming_state"

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string/jumbo v2, "operator_name"

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getOperatorName(Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v2, "roaming_state"

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "roaming_state"

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "roaming_state"

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateStatus(I)V
    .locals 25

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/16 v17, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_1

    :cond_0
    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    const/16 v22, 0x0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    :goto_0
    move/from16 v0, v22

    move/from16 v1, v24

    if-ge v0, v1, :cond_17

    aget-object v8, v23, v22

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v22, v0

    aget-object v17, v22, p1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    aget-object v11, v22, p1

    const-string/jumbo v22, "CDMA"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v22

    if-nez v22, :cond_2

    const-string/jumbo v22, "VZW"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    :cond_2
    const-string/jumbo v22, "VZW"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v22

    if-eqz v22, :cond_b

    :cond_3
    const-string/jumbo v22, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v22, "VZW"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_4

    const-string/jumbo v22, "CDMA"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    :cond_4
    :goto_2
    const-string/jumbo v22, "min_number"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0e0026

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v22

    if-eqz v22, :cond_5

    const-string/jumbo v22, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    const v23, 0x7f0b1397

    invoke-virtual/range {v22 .. v23}, Landroid/preference/Preference;->setTitle(I)V

    :cond_5
    const-string/jumbo v22, "prl_version"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v22, "imei"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getIMEI(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v22, "VZW"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    const-string/jumbo v22, "TFN"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v22

    if-eqz v22, :cond_e

    :cond_6
    const-string/jumbo v23, "imei_sv"

    const-string/jumbo v22, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v22

    if-eqz v22, :cond_7

    const-string/jumbo v22, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v22, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v22

    if-nez v22, :cond_8

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_f

    :cond_8
    const-string/jumbo v22, "icc_id"

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getIccId(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v22

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aget-object v22, v22, v23

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    check-cast v5, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v20

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v13

    const-string/jumbo v23, "sid_number"

    const/16 v22, -0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    move-object/from16 v22, v0

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v23, "nid_number"

    const/16 v22, -0x1

    move/from16 v0, v22

    if-ne v13, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    move-object/from16 v22, v0

    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_7
    const-string/jumbo v22, "SPR"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->connectToRilService()V

    :goto_8
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    const-string/jumbo v23, "CscFeature_Setting_SupportMenuImeiBarCode"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_a

    const-string/jumbo v22, "imei"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    if-eqz v9, :cond_a

    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    new-instance v22, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$11;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateDataState()V

    const/16 v21, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v23

    aput-object v23, v22, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    move-object/from16 v22, v0

    aget-object v22, v22, v21

    const/16 v23, 0x141

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    add-int/lit8 v21, v21, 0x1

    goto :goto_9

    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getMeidNumber(I)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_c

    const-string/jumbo v22, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v22, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v12}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v22, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v22, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v22, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_f
    const-string/jumbo v22, "VZW"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    const-string/jumbo v22, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_10
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_5

    :cond_11
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    goto/16 :goto_6

    :cond_12
    const-string/jumbo v22, "sid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v22, "nid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_13
    const-string/jumbo v22, "user_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_14
    const-string/jumbo v22, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    move-object/from16 v23, v0

    aget-object v23, v23, p1

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v23, "imei_sv"

    const-string/jumbo v22, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v22 .. v22}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v22, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v22, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v22, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v22, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v22, "sid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v22, "nid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v22, "user_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_15
    const-string/jumbo v22, "br"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mShowLatestAreaInfo:Z

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mShowLatestAreaInfo:Z

    move/from16 v22, v0

    if-nez v22, :cond_17

    const-string/jumbo v22, "latest_area_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    :cond_17
    const-string/jumbo v22, "ethernet_mac_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSysScopeStatus()V

    const-string/jumbo v22, "ril.serialnumber"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_18

    const-string/jumbo v22, "00000000000"

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1e

    :cond_18
    const-string/jumbo v18, "ro.serialno"

    :goto_a
    invoke-static/range {v18 .. v18}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v22, "Status"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "serial:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v22, "Status"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "serialNum:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_19

    const-string/jumbo v22, "KDI"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_19

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v22

    if-nez v22, :cond_19

    const-string/jumbo v22, "USC"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_19

    const-string/jumbo v22, "MTR"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_19

    const-string/jumbo v22, "LRA"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_19

    const-string/jumbo v22, "ACG"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1f

    :cond_19
    const-string/jumbo v22, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    :goto_b
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v22

    if-eqz v22, :cond_1a

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v22

    const-string/jumbo v23, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_ELECTRIC_RATED_VALUE"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v22, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v22, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v22, "wifi_ip_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v22, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v22, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v22, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v22

    if-nez v22, :cond_1a

    const-string/jumbo v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a

    const-string/jumbo v22, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    :cond_1a
    const-string/jumbo v22, "DCM"

    sget-object v23, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1b

    const-string/jumbo v22, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v22, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    :cond_1b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    const-string/jumbo v23, "CscFeature_Setting_EnableDeviceInfo4Vzw"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_21

    const-string/jumbo v22, "ril.eri_ver_1"

    invoke-static/range {v22 .. v22}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_20

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_20

    const-string/jumbo v22, "eri_version"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->createImsService(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isShowImsStatus()Z

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->bShowImsStatus:Z

    const-string/jumbo v22, "Status"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Show IMS registration status : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->bShowImsStatus:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->bShowImsStatus:Z

    move/from16 v22, v0

    if-eqz v22, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isImsRegistered()Z

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateImsStatus(Z)V

    :goto_d
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v22

    const-string/jumbo v23, "CscFeature_Common_UseChameleon"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportChameleonRoaming()Z

    move-result v22

    if-nez v22, :cond_1c

    const-string/jumbo v22, "roaming_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    :cond_1c
    :try_start_0
    new-instance v16, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlManager;->query()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v22, "Status"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "rlcState : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v22, "Normal"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_1d

    const-string/jumbo v22, "Locked"

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v22

    if-eqz v22, :cond_23

    :cond_1d
    :goto_e
    return-void

    :cond_1e
    const-string/jumbo v18, "ril.serialnumber"

    goto/16 :goto_a

    :cond_1f
    const-string/jumbo v22, "Status"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "serialNum : "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v22, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_20
    const-string/jumbo v22, "eri_version"

    const-string/jumbo v23, "ERI : <unknown>"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_21
    const-string/jumbo v22, "eri_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRegiListener:Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/sec/ims/ImsManager;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    const-string/jumbo v22, "ims_reg"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_23
    :try_start_1
    const-string/jumbo v22, "installment_balance"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_e

    :catch_0
    move-exception v6

    const-string/jumbo v22, "installment_balance"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v22, "Status"

    const-string/jumbo v23, "RemoteLockControlManager not supported (RemoteLockControlException)"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/samsung/android/service/RemoteLockControl/RemoteLockControlException;->printStackTrace()V

    goto/16 :goto_e

    :catch_1
    move-exception v7

    const-string/jumbo v22, "installment_balance"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    const-string/jumbo v22, "Status"

    const-string/jumbo v23, "RemoteLockControlManager not supported"

    invoke-static/range {v22 .. v23}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_e
.end method


# virtual methods
.method createImsService(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRegiListener:Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    new-instance v0, Lcom/sec/ims/ImsManager;

    new-instance v1, Lcom/samsung/android/settings/deviceinfo/StatusVZW$12;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$12;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    invoke-direct {v0, p1, v1}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;)V

    iput-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v0}, Lcom/sec/ims/ImsManager;->connectService()V

    :cond_0
    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x2c

    return v0
.end method

.method isImsRegistered()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v1}, Lcom/sec/ims/ImsManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const-string/jumbo v1, "Status"

    const-string/jumbo v2, "isImsRegistered : true"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string/jumbo v1, "Status"

    const-string/jumbo v2, "isImsRegistered : false"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method isShowImsStatus()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "900"

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    invoke-virtual {v2, v0}, Lcom/sec/ims/ImsManager;->getConfigValues([Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, "1"

    const-string/jumbo v2, "900"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    :cond_0
    return v3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v10, "sim Id"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string/jumbo v10, "sim Id"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    const-string/jumbo v10, "Status"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mActivePhone : ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v10, Lcom/samsung/android/settings/deviceinfo/StatusVZW$MyHandler;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW$MyHandler;-><init>(Lcom/samsung/android/settings/deviceinfo/StatusVZW;)V

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v10

    iput v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    new-array v10, v10, [Landroid/telephony/TelephonyManager;

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    new-array v10, v10, [Landroid/telephony/PhoneStateListener;

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    const/4 v8, 0x0

    :goto_0
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    if-ge v8, v10, :cond_1

    iget-object v11, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    const-string/jumbo v10, "phone"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    aput-object v10, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v10, "connectivity"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/ConnectivityManager;

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mCM:Landroid/net/ConnectivityManager;

    const-string/jumbo v10, "wifi"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWifiManager:Landroid/net/wifi/WifiManager;

    const v10, 0x7f08005d

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->addPreferencesFromResource(I)V

    const-string/jumbo v10, "battery_level"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryLevel:Landroid/preference/Preference;

    const-string/jumbo v10, "battery_status"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryStatus:Landroid/preference/Preference;

    const-string/jumbo v10, "bt_address"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    const-string/jumbo v10, "wifi_mac_address"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWifiMacAddress:Landroid/preference/Preference;

    const-string/jumbo v10, "wimax_mac_address"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    const-string/jumbo v10, "wifi_ip_address"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mIpAddress:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f0b1033

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f0b13a5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnavailable:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    const-string/jumbo v10, "VZW"

    sget-object v11, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v7, Ljava/io/File;

    const-string/jumbo v10, "/efs/sec_efs/LastResetDate.txt"

    invoke-direct {v7, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->isResetFileExist:Ljava/lang/Boolean;

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setFactoryResetDate(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v3, v4

    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_2

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_3
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    new-array v10, v10, [Landroid/preference/Preference;

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    const/4 v8, 0x0

    :goto_4
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    if-ge v8, v10, :cond_9

    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    const-string/jumbo v11, "signal_strength"

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    aput-object v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_4
    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3

    :catchall_0
    move-exception v10

    :goto_5
    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_6
    throw v10

    :catch_3
    move-exception v1

    goto :goto_6

    :cond_6
    const-string/jumbo v10, "factorydatareset"

    const v11, 0x7f0b007c

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string/jumbo v10, "factorydatareset"

    invoke-direct {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    new-array v10, v10, [Lcom/android/internal/telephony/Phone;

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    const/4 v8, 0x0

    :goto_7
    iget v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    if-ge v8, v10, :cond_3

    iget-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    invoke-static {v8}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v11

    aput-object v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    const-string/jumbo v10, "up_time"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUptime:Landroid/preference/Preference;

    const-string/jumbo v10, "ethernet_mac_address"

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mEthernetMacAddressPref:Landroid/preference/Preference;

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->hasBluetooth()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBtAddress:Landroid/preference/Preference;

    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->hasWimax()Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    iget-object v11, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    const/4 v10, 0x0

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mWimaxMacAddress:Landroid/preference/Preference;

    :cond_b
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    iput-object v10, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    sget-object v11, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    const/4 v10, 0x0

    array-length v12, v11

    :goto_8
    if-ge v10, v12, :cond_c

    aget-object v9, v11, v10

    iget-object v13, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v13, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateConnectivity()V

    return-void

    :catchall_1
    move-exception v10

    move-object v3, v4

    goto/16 :goto_5

    :catch_4
    move-exception v2

    goto/16 :goto_2
.end method

.method public onPause()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_0
    :try_start_0
    iget-boolean v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mShowLatestAreaInfo:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->registerForWfcRegistrationStatus(Z)V

    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsManager:Lcom/sec/ims/ImsManager;

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRegiListener:Lcom/samsung/android/settings/deviceinfo/StatusVZW$RegistrationListener;

    invoke-virtual {v3, v4}, Lcom/sec/ims/ImsManager;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_4
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setRssiNoti(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    iput-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    :cond_5
    const/4 v2, 0x0

    :goto_1
    iget v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    iget v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mActivePhone:I

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateStatus(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhone:[Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mConnectivityIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->changeSysScopeStatus()V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->registerForWfcRegistrationStatus(Z)V

    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "airplane_mode_on"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setRssiNoti(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateDataState()V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    if-nez v2, :cond_3

    new-instance v2, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v3, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v0, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/16 v3, 0x12c

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    :cond_3
    iget-boolean v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mShowLatestAreaInfo:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/Activity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method setFactoryResetDate(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "factorydatareset"

    invoke-direct {p0, v4, v1}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method updateConnectivity()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setWimaxStatus()V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setWifiStatus()V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setBtStatus()V

    invoke-direct {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setIpAddressStatus()V

    return-void
.end method

.method updateImsStatus(Z)V
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const v0, 0x7f0b0cbb

    :goto_0
    const-string/jumbo v1, "ims_reg"

    iget-object v2, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const v0, 0x7f0b0cbc

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    const v0, 0x7f0b051a

    goto :goto_0

    :cond_2
    const v0, 0x7f0b051b

    goto :goto_0
.end method

.method updateSignalStrength(IILandroid/telephony/SignalStrength;)V
    .locals 11

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getHost()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "Status"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Fragment "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " not attached host is null."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v2, 0x0

    const-string/jumbo v8, "Status"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateSignalStrength() slotId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " / activePhone:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "*** "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    new-array v8, v8, [Landroid/preference/Preference;

    iput-object v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    const/4 v6, 0x0

    :goto_0
    iget v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mPhoneCount:I

    if-ge v6, v8, :cond_2

    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    const-string/jumbo v9, "signal_strength"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    aput-object v9, v8, v6

    if-ne p2, v6, :cond_1

    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    aget-object v2, v8, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v8

    if-nez v8, :cond_4

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v5

    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0b1054

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0b1055

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    if-eqz v2, :cond_3

    iget-boolean v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mImsRegistered:Z

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->updateSignalStrengthToZeroWhenIMSRegistered()V

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v5

    const/4 v8, -0x1

    if-ne v8, v5, :cond_6

    const/4 v5, 0x0

    :cond_6
    invoke-virtual {p3}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result v4

    const-string/jumbo v8, "Combination"

    const-string/jumbo v9, "Strawberry"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, -0x1

    if-eq v8, v4, :cond_7

    const/16 v8, 0x63

    if-ne v8, v4, :cond_9

    :cond_7
    :goto_2
    const/16 v5, -0x71

    const/4 v4, 0x0

    :cond_8
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0b1054

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const v9, 0x7f0b1055

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v8, "Status"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[Status] updateSignalStrength : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0b1054

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "   "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f0b1055

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_9
    const/16 v8, 0xff

    if-ne v8, v4, :cond_8

    goto/16 :goto_2

    :cond_a
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v7, v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mTelephonyManager:[Landroid/telephony/TelephonyManager;

    aget-object v8, v8, p2

    const-string/jumbo v8, "gsm.network.type"

    iget-object v9, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    invoke-static {v1, v8, v9}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, -0x1

    if-eq v8, v4, :cond_b

    const/16 v8, 0x63

    if-ne v8, v4, :cond_c

    :cond_b
    :goto_4
    const/16 v5, -0x71

    const/4 v4, 0x0

    goto/16 :goto_3

    :cond_c
    const/16 v8, 0xff

    if-eq v8, v4, :cond_b

    iget-object v8, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUnknown:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_4
.end method

.method updateSignalStrengthToZeroWhenIMSRegistered()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    aget-object v1, v1, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mSignalStrength:[Landroid/preference/Preference;

    aget-object v1, v1, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b1054

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0b1055

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method updateTimes()V
    .locals 8

    const-wide/16 v6, 0x3e8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    const-wide/16 v2, 0x1

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/deviceinfo/StatusVZW;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
