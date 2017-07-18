.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$StateReceiver;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;,
        Lcom/android/server/connectivity/Tethering$UpstreamNetworkCallback;,
        Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;
    }
.end annotation


# static fields
.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field private static final DBG:Z = true

.field private static final DHCP_DEFAULT_RANGE:[Ljava/lang/String;

.field private static final DNS_DEFAULTDUAL_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULTDUAL_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final DNS_DEFAULTDUAL_SERVER3:Ljava/lang/String; = "2001:4860:4860::8888"

.field private static final DNS_DEFAULTDUAL_SERVER4:Ljava/lang/String; = "2001:4860:4860::8844"

.field private static final DNS_DEFAULT_SERVER1:Ljava/lang/String; = "8.8.8.8"

.field private static final DNS_DEFAULT_SERVER2:Ljava/lang/String; = "8.8.4.4"

.field private static final DUN_TYPE:Ljava/lang/Integer;

.field public static final EXTRA_TETHERED_IFACE:Ljava/lang/String; = "tetheredClientIface"

.field public static final EXTRA_UPSTREAM_IFACE:Ljava/lang/String; = "tetheringUpstreamIface"

.field public static final EXTRA_UPSTREAM_INFO_DEFAULT:I = -0x1

.field public static final EXTRA_UPSTREAM_IP_TYPE:Ljava/lang/String; = "tetheringUpstreamIpType"

.field public static final EXTRA_UPSTREAM_UPDATE_TYPE:Ljava/lang/String; = "tetheringUpstreamUpdateType"

.field private static final HIPRI_TYPE:Ljava/lang/Integer;

.field private static final MAXAP_NOTI_ID:I = 0x10406c4

.field private static MAX_CLIENTS:I = 0x0

.field private static final MOBILE_TYPE:Ljava/lang/Integer;

.field private static final STRING_MTP_ADB:Ljava/lang/String; = "mtp,adb"

.field private static final STRING_NCM:Ljava/lang/String; = "ncm"

.field private static final STRING_RNDIS_DIAG_MODEM:Ljava/lang/String; = "rndis,acm,diag"

.field private static final STRING_RNDIS_DM_MODEM:Ljava/lang/String; = "rndis,acm,dm"

.field private static final STRING_RNDIS_MODEM_ADB:Ljava/lang/String; = "rndis,acm,adb"

.field private static final TAG:Ljava/lang/String; = "Tethering"

.field private static final TETHER_SERVICE:Landroid/content/ComponentName;

.field public static final UPSTREAM_IFACE_CHANGED_ACTION:Ljava/lang/String; = "com.android.server.connectivity.UPSTREAM_IFACE_CHANGED"

.field private static final USB_NEAR_IFACE_ADDR:Ljava/lang/String; = "192.168.42.129"

.field private static final USB_PREFIX_LENGTH:I = 0x18

.field private static final VDBG:Z = true

.field public static final WIFIAP_HIGH_TX_POWER_MODE:I = 0x1

.field public static final WIFIAP_LOW_TX_POWER_MODE:I = 0x0

.field private static final WIFIAP_PLUG_STATE_CHANGED:Ljava/lang/String; = "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

.field private static final WIFIAP_PLUG_STATE_CHANGED_OPTION:Ljava/lang/String; = "wifiap_plug_state_changed_option"

.field public static final WIFIAP_POWER_MODE_ALARM:Ljava/lang/String; = "android.net.wifi.wifiap_power_mode_alarm"

.field public static final WIFIAP_POWER_MODE_ALARM_EXPIRE:I = 0x1

.field public static final WIFIAP_POWER_MODE_ALARM_OPTION:Ljava/lang/String; = "wifiap_power_mode_alarm_option"

.field public static final WIFIAP_POWER_MODE_ALARM_START:I = 0x0

.field public static final WIFIAP_POWER_MODE_ALARM_STOP:I = 0x2

.field public static final WIFIAP_POWER_MODE_ALARM_UNKNOWN:I = 0x3

.field public static final WIFIAP_POWER_MODE_VALUE_CHANGED:I = 0x4

.field public static final WIFIAP_STAND_BY_MODE_START:Ljava/lang/String; = "android.net.wifi.wifiap_stand_by_mode_start"

.field public static final WIFIAP_TX_POWER_MODE_CHANGED:Ljava/lang/String; = "android.net.wifi.wifiap_tx_power_mode_changed"

.field public static final WIFIAP_TX_POWER_MODE_VALUE:Ljava/lang/String; = "android.net.wifi.wifiap_tx_power_mode_value"

.field static final WIFI_AP_ON_ICON:[I

.field private static bExpireAlarm:Z = false

.field private static bStartAlarm:Z = false

.field private static clients:I = 0x0

.field private static defaultTimeoutValue:I = 0x0

.field private static final lowBatteryThreshold:I = 0xf

.field private static mAutoConfigurationType:Ljava/lang/String;

.field private static mBcmInterface:Ljava/lang/String;

.field private static mDhcpKnoxCustomRange:[Ljava/lang/String;

.field private static mIsPlugged:Z

.field private static mIsTetherActive:Z

.field private static mLastClients:I

.field private static mRVFMode:I

.field private static mTetheringPreState:I

.field private static mTetheringState:I

.field private static mWifiInterface:[Ljava/lang/String;

.field private static final messageClasses:[Ljava/lang/Class;

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private add_client_event:Z

.field private bluetoothTethered:Z

.field private cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

.field private isApSuspended:Z

.field private isWifiTetheredOnly:Z

.field private knoxUri:Landroid/net/Uri;

.field private locale_changed_event:Z

.field private final mContext:Landroid/content/Context;

.field private mCpaDnsSet:Z

.field private mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private mCurrentUpstreamIface:Ljava/lang/String;

.field private mDPM:Landroid/app/admin/IDevicePolicyManager;

.field private mDefaultDnsServers:[Ljava/lang/String;

.field private mDefaultDualDnsServers:[Ljava/lang/String;

.field private mDhcpRange:[Ljava/lang/String;

.field private mIfaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBootComplete:Z

.field private mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

.field private mLastNotificationId:I

.field private final mLooper:Landroid/os/Looper;

.field private mLowBatteryNotification:Landroid/app/Notification;

.field private mMaxApNotification:Landroid/app/Notification;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private mNcmEnabled:Z

.field private mNcmTetherRequested:Z

.field private mPreferredUpstreamMobileApn:I

.field private final mPublicSync:Ljava/lang/Object;

.field private mRetryLimit:I

.field private mRndisEnabled:Z

.field private mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private mTetherableBluetoothRegexs:[Ljava/lang/String;

.field private mTetherableUsbRegexs:[Ljava/lang/String;

.field private mTetherableWifiRegexs:[Ljava/lang/String;

.field private mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

.field private mTetheredVendorNotification:Landroid/app/Notification;

.field private mThread:Landroid/os/HandlerThread;

.field private mUpstreamIfaceTypes:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpstreamNetworkMonitor:Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

.field private mUsbTetherRequested:Z

.field semusbthethering:Lcom/samsung/android/os/SemPerfManager;

.field private supportedCPUCoreTable:[I

.field private wifiTethered:Z

.field private wifiVendorTethered:Z


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/server/connectivity/Tethering;->MAX_CLIENTS:I

    return v0
.end method

.method static synthetic -get1()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDualDnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get12()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/Tethering;->mDhcpKnoxCustomRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/connectivity/Tethering;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get15(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z

    return v0
.end method

.method static synthetic -get16()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/connectivity/Tethering;)Lcom/samsung/android/knox/custom/SystemManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/connectivity/Tethering;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z

    return v0
.end method

.method static synthetic -get22(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z

    return v0
.end method

.method static synthetic -get23(Lcom/android/server/connectivity/Tethering;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    return v0
.end method

.method static synthetic -get24(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get25()I
    .locals 1

    sget v0, Lcom/android/server/connectivity/Tethering;->mRVFMode:I

    return v0
.end method

.method static synthetic -get26(Lcom/android/server/connectivity/Tethering;)I
    .locals 1

    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mRetryLimit:I

    return v0
.end method

.method static synthetic -get27(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return v0
.end method

.method static synthetic -get28(Lcom/android/server/connectivity/Tethering;)Landroid/net/INetworkStatsService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z

    return v0
.end method

.method static synthetic -get30(Lcom/android/server/connectivity/Tethering;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    return-object v0
.end method

.method static synthetic -get31(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    return-object v0
.end method

.method static synthetic -get32(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return v0
.end method

.method static synthetic -get33(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    return v0
.end method

.method static synthetic -get34(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->bluetoothTethered:Z

    return v0
.end method

.method static synthetic -get5()I
    .locals 1

    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    return v0
.end method

.method static synthetic -get6()I
    .locals 1

    sget v0, Lcom/android/server/connectivity/Tethering;->defaultTimeoutValue:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->isApSuspended:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    return p1
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z

    return p0
.end method

.method static synthetic -set10(I)I
    .locals 0

    sput p0, Lcom/android/server/connectivity/Tethering;->mLastClients:I

    return p0
.end method

.method static synthetic -set11(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method static synthetic -set14(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    return p1
.end method

.method static synthetic -set2(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z

    return p0
.end method

.method static synthetic -set3(I)I
    .locals 0

    sput p0, Lcom/android/server/connectivity/Tethering;->clients:I

    return p0
.end method

.method static synthetic -set4(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->isApSuspended:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mCpaDnsSet:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z

    return p1
.end method

.method static synthetic -set8(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z

    return p0
.end method

.method static synthetic -set9(Lcom/android/server/connectivity/Tethering;Lcom/samsung/android/knox/custom/SystemManager;)Lcom/samsung/android/knox/custom/SystemManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/connectivity/Tethering;)Landroid/net/ConnectivityManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->maybeLogMessage(Lcom/android/internal/util/State;I)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/Tethering;->sendUpstreamIfaceChangeBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/connectivity/Tethering;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->sendWifiApPowerModeAlarmIntent(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic -wrap16(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->showDialogOnInternetSharingBlockedByActiveSync()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->showLowBatteryNotification()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/server/connectivity/Tethering;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V

    return-void
.end method

.method static synthetic -wrap21(Lcom/android/server/connectivity/Tethering;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->suspendWifiApIcon(Z)V

    return-void
.end method

.method static synthetic -wrap22(Lcom/android/server/connectivity/Tethering;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->tetherNcm(Z)V

    return-void
.end method

.method static synthetic -wrap23(Lcom/android/server/connectivity/Tethering;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/server/connectivity/Tethering;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->blockInternetSharingByActiveSync(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearLowBatteryNotification()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredVendorNotification()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/connectivity/Tethering;IZLandroid/os/ResultReceiver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v2, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v2, [Ljava/lang/Class;

    const-class v1, Lcom/android/server/connectivity/Tethering;

    aput-object v1, v0, v3

    const-class v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    aput-object v1, v0, v4

    const-class v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    sget-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v3}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v6}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "192.168.42.2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "192.168.42.254"

    aput-object v1, v0, v4

    const-string/jumbo v1, "192.168.43.2"

    aput-object v1, v0, v5

    const-string/jumbo v1, "192.168.43.254"

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.44.2"

    aput-object v1, v0, v6

    const-string/jumbo v1, "192.168.44.254"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.45.2"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.45.254"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.46.2"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.46.254"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.47.2"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.47.254"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.48.2"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.48.254"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.49.2"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.49.254"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.60.2"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "192.168.60.254"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    const-string/jumbo v0, "swlan0"

    sput-object v0, Lcom/android/server/connectivity/Tethering;->mBcmInterface:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z

    sput v3, Lcom/android/server/connectivity/Tethering;->clients:I

    sput v3, Lcom/android/server/connectivity/Tethering;->mLastClients:I

    sput v3, Lcom/android/server/connectivity/Tethering;->mRVFMode:I

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget v0, Landroid/net/wifi/WifiApCust;->mDefaultMaxClientNum:I

    sput v0, Lcom/android/server/connectivity/Tethering;->MAX_CLIENTS:I

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "192.168.102.2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "192.168.102.254"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/connectivity/Tethering;->mDhcpKnoxCustomRange:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z

    sput-boolean v3, Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z

    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget v0, Landroid/net/wifi/WifiApCust;->mDefaultMaxClientNum:I

    sput v0, Lcom/android/server/connectivity/Tethering;->defaultTimeoutValue:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_AutoConfigurationType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->mAutoConfigurationType:Ljava/lang/String;

    sput-boolean v3, Lcom/android/server/connectivity/Tethering;->mIsTetherActive:Z

    sput v3, Lcom/android/server/connectivity/Tethering;->mTetheringState:I

    sput v3, Lcom/android/server/connectivity/Tethering;->mTetheringPreState:I

    return-void

    :array_0
    .array-data 4
        0x10808a2
        0x10808a3
        0x10808a4
        0x10808a5
        0x10808a6
        0x10808a7
        0x10808a8
        0x10808a9
        0x10808aa
        0x10808ab
        0x10808ac
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    iput v6, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mCpaDnsSet:Z

    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->isWifiTetheredOnly:Z

    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->bluetoothTethered:Z

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotification:Landroid/app/Notification;

    iput-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->isApSuspended:Z

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iput-object p3, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    new-instance v3, Landroid/os/HandlerThread;

    const-string/jumbo v4, "Tethering"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    new-instance v3, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const-string/jumbo v4, "TetherMaster"

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v3}, Lcom/android/internal/util/StateMachine;->start()V

    new-instance v3, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    invoke-direct {v3, p0}, Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;-><init>(Lcom/android/server/connectivity/Tethering;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/Tethering$UpstreamNetworkMonitor;

    new-instance v3, Lcom/android/server/connectivity/Tethering$StateReceiver;

    invoke-direct {v3, p0, v7}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$StateReceiver;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.android.net.wifi.MAXAP_NOTI"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.android.intent.action.TETHERING_DENIED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "file"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1070034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v3, v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    array-length v3, v3

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v8, :cond_1

    :cond_0
    sget-object v3, Lcom/android/server/connectivity/Tethering;->DHCP_DEFAULT_RANGE:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    const-string/jumbo v3, "Tethering"

    const-string/jumbo v4, "Setting DHCP To default Range"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    new-array v3, v9, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string/jumbo v4, "8.8.8.8"

    aput-object v4, v3, v6

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDnsServers:[Ljava/lang/String;

    const-string/jumbo v4, "8.8.4.4"

    aput-object v4, v3, v8

    new-array v3, v8, [Ljava/lang/String;

    sput-object v3, Lcom/android/server/connectivity/Tethering;->mWifiInterface:[Ljava/lang/String;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->mWifiInterface:[Ljava/lang/String;

    sget-object v4, Lcom/android/server/connectivity/Tethering;->mBcmInterface:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDualDnsServers:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDualDnsServers:[Ljava/lang/String;

    const-string/jumbo v4, "8.8.8.8"

    aput-object v4, v3, v6

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDualDnsServers:[Ljava/lang/String;

    const-string/jumbo v4, "8.8.4.4"

    aput-object v4, v3, v8

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDualDnsServers:[Ljava/lang/String;

    const-string/jumbo v4, "2001:4860:4860::8888"

    aput-object v4, v3, v9

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mDefaultDualDnsServers:[Ljava/lang/String;

    const-string/jumbo v4, "2001:4860:4860::8844"

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-static {}, Lcom/samsung/android/knox/custom/SystemManager;->getInstance()Lcom/samsung/android/knox/custom/SystemManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    const-string/jumbo v3, "TEL"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_RIL_PDPRetryMechanism4"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    new-instance v0, Lcom/android/server/connectivity/Tethering$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;)V

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    invoke-virtual {v2, v0, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_2
    return-void

    :cond_3
    iput v8, p0, Lcom/android/server/connectivity/Tethering;->mRetryLimit:I

    goto :goto_0
.end method

.method private blockInternetSharingByActiveSync(Ljava/lang/String;)V
    .locals 5

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    if-nez v0, :cond_0

    const-string/jumbo v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[ActiveSync] Tried to Untether an unknown iface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "), ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_0
    const v1, 0x50078

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private cancelTetherProvisioningRechecks(I)V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "extraRemTetherType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private checkDunRequired()V
    .locals 6

    const/4 v5, 0x4

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->setOemDunRequired()V

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getTetherApnRequired()I

    move-result v1

    :cond_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_9

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v0, 0x4

    :goto_0
    if-ne v0, v5, :cond_5

    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    monitor-exit v4

    return-void

    :cond_5
    :goto_5
    :try_start_2
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->DUN_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->MOBILE_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_7
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    sget-object v5, Lcom/android/server/connectivity/Tethering;->HIPRI_TYPE:Ljava/lang/Integer;

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I

    goto :goto_4

    :cond_9
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mPreferredUpstreamMobileApn:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4
.end method

.method private clearLowBatteryNotification()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    :cond_0
    return-void
.end method

.method private clearTetheredNotification()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v4, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput v3, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    :cond_0
    return-void
.end method

.method private clearTetheredVendorNotification()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->icon:I

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    :cond_0
    return-void
.end method

.method private configureUsbIface(Z)Z
    .locals 14

    const-string/jumbo v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "configureUsbIface("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    new-array v4, v10, [Ljava/lang/String;

    const/16 v1, 0x14b

    const/4 v9, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v10}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    const/4 v10, 0x0

    array-length v11, v4

    :goto_0
    if-ge v10, v11, :cond_5

    aget-object v3, v4, v10

    invoke-direct {p0, v3}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v5, 0x0

    :try_start_1
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v12, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v5

    const-string/jumbo v7, "00:00:00:00:00:00"

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v12

    if-eqz v12, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v10, "Tethering"

    const-string/jumbo v11, "Error listing Interfaces"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x0

    return v10

    :cond_1
    :try_start_2
    const-string/jumbo v8, "192.168.42.129"

    const/4 v6, 0x0

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v12}, Lcom/samsung/android/knox/custom/SystemManager;->getUsbNetState()Z

    move-result v12

    if-eqz v12, :cond_2

    const-string/jumbo v12, "Tethering"

    const-string/jumbo v13, "Set USB Net Source Address"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    const/16 v13, 0x14b

    invoke-virtual {v12, v13}, Lcom/samsung/android/knox/custom/SystemManager;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v8

    :cond_2
    invoke-static {v8}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    new-instance v12, Landroid/net/LinkAddress;

    const/16 v13, 0x18

    invoke-direct {v12, v0, v13}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v5, v12}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    if-eqz p1, :cond_4

    invoke-virtual {v5}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    :goto_2
    const-string/jumbo v12, "running"

    invoke-virtual {v5, v12}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    if-eqz v6, :cond_3

    const-string/jumbo v12, "multicast"

    invoke-virtual {v5, v12}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    const-string/jumbo v12, "broadcast"

    invoke-virtual {v5, v12}, Landroid/net/InterfaceConfiguration;->clearFlag(Ljava/lang/String;)V

    :cond_3
    iget-object v12, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v12, v3, v5}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string/jumbo v10, "Tethering"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error configuring interface "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v10, 0x0

    return v10

    :cond_4
    :try_start_3
    invoke-virtual {v5}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :cond_5
    const/4 v10, 0x1

    return v10
.end method

.method private enableTetheringInternal(IZLandroid/os/ResultReceiver;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v3, "Tethering"

    const-string/jumbo v4, "Invalid tether type."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-direct {p0, p3, v3}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, p3, v5}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    invoke-direct {p0, p3, v3}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v1

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->scheduleProvisioningRechecks(I)V

    :cond_2
    invoke-direct {p0, p3, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2, p3}, Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 5

    const/4 v4, 0x0

    new-instance v2, Lcom/android/server/connectivity/Tethering$3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/android/server/connectivity/Tethering$3;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/os/Handler;ILandroid/os/ResultReceiver;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v2, v0, v4}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v3, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method

.method private getRvfMode()I
    .locals 6

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x1c

    iput v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    const-string/jumbo v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRvfMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isInternetSharingBlockedByActiveSync()Z
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v4

    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    const-string/jumbo v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Current userid ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string/jumbo v4, "device_policy"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    :try_start_1
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mDPM:Landroid/app/admin/IDevicePolicyManager;

    const/4 v5, 0x0

    invoke-interface {v4, v5, v3}, Landroid/app/admin/IDevicePolicyManager;->semGetAllowInternetSharing(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "Tethering"

    const-string/jumbo v5, "[ActiveSync] internet sharing is blocked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v2

    const-string/jumbo v4, "Tethering"

    const-string/jumbo v5, "Failed getting userId using ActivityManagerNative"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v4, "Tethering"

    const-string/jumbo v5, "Failed getting userId using ActivityManagerNative"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const-string/jumbo v4, "Tethering"

    const-string/jumbo v5, "[ActiveSync] internet sharing is NOT blocked"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4
.end method

.method private isLightTheme()Z
    .locals 2

    const-string/jumbo v0, "white"

    const-string/jumbo v1, "ro.build.scafe.cream"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isTetherProvisioningRequired()Z
    .locals 6

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "net.tethering.noprovisioning"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v2, :cond_1

    :cond_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "carrier_config"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v4

    const-string/jumbo v5, "require_entitlement_checks_bool"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    return v3

    :cond_2
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    return v3
.end method

.method private isUsb(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    monitor-exit v3

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method public static isWifiOnly()Z
    .locals 2

    const-string/jumbo v0, "wifi-only"

    const-string/jumbo v1, "ro.carrier"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private maybeLogMessage(Lcom/android/internal/util/State;I)V
    .locals 4

    const-string/jumbo v1, "Tethering"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " got "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v0, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyTetheringActiveToRIL(Z)V
    .locals 10

    sget-boolean v7, Lcom/android/server/connectivity/Tethering;->mIsTetherActive:Z

    if-ne v7, p1, :cond_0

    return-void

    :cond_0
    sput-boolean p1, Lcom/android/server/connectivity/Tethering;->mIsTetherActive:Z

    const-string/jumbo v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v7, "Tethering"

    const-string/jumbo v8, "notifyTetheringActiveToRIL skip send Tether Active to RIL- phone service is not ready"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v7, 0x9

    :try_start_0
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v7, 0x8

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p1, :cond_4

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v1, v7}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I

    const-string/jumbo v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "send Tether Active to RIL "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "exception occured during send Tether Active to RIL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v3

    const-string/jumbo v7, "Tethering"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "exception occured during send Tether Active to RIL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v4

    const-string/jumbo v7, "Tethering"

    const-string/jumbo v8, "close fail!!!"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static readSalesCode()Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, ""

    :try_start_0
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ril.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private runSilentTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->sendSilentTetherProvisionIntent(ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method private runUiTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->getProxyReceiver(ILandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->sendUiTetherProvisionIntent(ILandroid/os/ResultReceiver;)V

    return-void
.end method

.method private scheduleProvisioningRechecks(I)V
    .locals 5

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "extraAddTetherType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "extraSetAlarm"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendSilentTetherProvisionIntent(ILandroid/os/ResultReceiver;)V
    .locals 5

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "extraAddTetherType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "extraRunProvision"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "extraProvisionCallback"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendTetherResult(Landroid/os/ResultReceiver;I)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private sendTetherStateChangedBroadcast()V
    .locals 26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v21

    if-nez v21, :cond_0

    const-string/jumbo v21, "enabled"

    const-string/jumbo v22, "TETHER_ALWAYS_ON_MODE"

    move-object/from16 v0, v22

    invoke-static {v8, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    const/16 v19, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    move-object/from16 v22, v0

    monitor-enter v22

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v21

    if-eqz v21, :cond_3

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v21

    monitor-exit v22

    throw v21

    :cond_2
    return-void

    :cond_3
    :try_start_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v21

    if-eqz v21, :cond_4

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v21

    if-eqz v21, :cond_1

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_6

    const-string/jumbo v23, "ncm0"

    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_5

    const/16 v19, 0x1

    :cond_5
    :goto_1
    check-cast v11, Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9

    const-string/jumbo v21, "VZW"

    sget-object v23, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    const-string/jumbo v21, "SPRINT"

    sget-object v23, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_8

    :cond_7
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v21

    sput v21, Lcom/android/server/connectivity/Tethering;->mRVFMode:I

    goto :goto_1

    :cond_8
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    goto :goto_2

    :cond_9
    move-object v0, v11

    check-cast v0, Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v21

    if-eqz v21, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :cond_a
    monitor-exit v22

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v21, "android.net.conn.TETHER_STATE_CHANGED"

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v21, 0x24000000

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v21, "availableArray"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v21, "activeArray"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v21, "erroredArray"

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v21, "Tethering"

    const-string/jumbo v22, "sendTetherStateChangedBroadcast avail=[%s] active=[%s] error=[%s]"

    const/16 v23, 0x3

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const-string/jumbo v24, ","

    move-object/from16 v0, v24

    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x0

    aput-object v24, v23, v25

    const-string/jumbo v24, ","

    move-object/from16 v0, v24

    invoke-static {v0, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x1

    aput-object v24, v23, v25

    const-string/jumbo v24, ","

    move-object/from16 v0, v24

    invoke-static {v0, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v24

    const/16 v25, 0x2

    aput-object v24, v23, v25

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_12

    const/16 v21, 0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->notifyTetheringActiveToRIL(Z)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    move/from16 v21, v0

    if-eqz v21, :cond_14

    sget v21, Lcom/android/server/connectivity/Tethering;->mRVFMode:I

    if-nez v21, :cond_14

    const-string/jumbo v21, "VZW"

    sget-object v22, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "statusbar"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/StatusBarManager;

    const v21, 0x10808c7

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V

    sget-object v21, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    sget v22, Lcom/android/server/connectivity/Tethering;->clients:I

    aget v10, v21, v22

    const-string/jumbo v21, "wifi_ap"

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v10, v2, v3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    const-string/jumbo v21, "wifi_ap"

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    move/from16 v21, v0

    if-nez v21, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z

    move/from16 v21, v0

    if-eqz v21, :cond_16

    :cond_c
    :goto_5
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/connectivity/Tethering;->isWifiTetheredOnly:Z

    if-eqz v19, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    if-eqz v6, :cond_19

    :cond_d
    const-string/jumbo v21, "TMO"

    sget-object v22, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e

    const-string/jumbo v21, "NEWCO"

    sget-object v22, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_18

    :cond_e
    const v21, 0x10808c3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    :goto_6
    if-eqz v19, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v21, v0

    if-nez v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "UsbTethering"

    const/16 v23, 0xe

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->supportedCPUCoreTable:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->supportedCPUCoreTable:[I

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    const-string/jumbo v21, "Tethering"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "UsbTethering supportedCPUCoreTable : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->supportedCPUCoreTable:[I

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget v23, v23, v24

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "ro.board.platform"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v21, "msm8952"

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v21, v0

    if-nez v21, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "UsbTethering"

    const/16 v23, 0xc

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v21, v0

    const-wide v22, 0x3fe6666666666666L    # 0.7

    invoke-virtual/range {v21 .. v23}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequencyByPercent(D)I

    move-result v15

    const v21, 0x1312d0

    move/from16 v0, v21

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v20

    if-eqz v18, :cond_2c

    const-string/jumbo v21, "Tethering"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "maxFreq = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    aget v23, v18, v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "Tethering"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "properFreq = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v21, "Tethering"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "valueFreq = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/samsung/android/os/SemDvfsManager;->getApproximateFrequency(I)I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->semusbthethering:Lcom/samsung/android/os/SemPerfManager;

    move-object/from16 v21, v0

    const-string/jumbo v21, "USBTETHERING"

    const-string/jumbo v22, "on"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v21, v0

    if-nez v21, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "UsbTethering"

    const/16 v23, 0x17

    invoke-static/range {v21 .. v23}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    :cond_11
    :goto_9
    return-void

    :cond_12
    const/16 v21, 0x0

    goto/16 :goto_3

    :cond_13
    const-string/jumbo v21, "SPRINT"

    sget-object v22, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    const v21, 0x10808c6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V

    goto/16 :goto_4

    :cond_14
    const-string/jumbo v21, "VZW"

    sget-object v22, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string/jumbo v22, "statusbar"

    invoke-virtual/range {v21 .. v22}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/StatusBarManager;

    const-string/jumbo v21, "wifi_ap"

    const/16 v22, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    const-string/jumbo v21, "wifi_ap"

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredVendorNotification()V

    goto/16 :goto_4

    :cond_16
    const/16 v21, 0x0

    sput v21, Lcom/android/server/connectivity/Tethering;->clients:I

    const/16 v21, 0x0

    sput v21, Lcom/android/server/connectivity/Tethering;->mLastClients:I

    const-string/jumbo v21, "TMO"

    sget-object v22, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_17

    const-string/jumbo v21, "NEWCO"

    sget-object v22, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_c

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    const-string/jumbo v21, "Tethering"

    const-string/jumbo v22, "clearLowBatteryNotification"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearLowBatteryNotification()V

    goto/16 :goto_5

    :cond_18
    const v21, 0x10808c2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    :cond_19
    const-string/jumbo v21, "TMO"

    sget-object v22, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1a

    const-string/jumbo v21, "NEWCO"

    sget-object v22, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1b

    :cond_1a
    const v21, 0x10808c3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    :cond_1b
    const v21, 0x10808c4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    move/from16 v21, v0

    if-eqz v21, :cond_23

    if-nez v6, :cond_1d

    if-eqz v19, :cond_20

    :cond_1d
    const-string/jumbo v21, "TMO"

    sget-object v22, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_1e

    const-string/jumbo v21, "NEWCO"

    sget-object v22, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1f

    :cond_1e
    const v21, 0x10808c3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    :cond_1f
    const v21, 0x10808c2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    :cond_20
    const-string/jumbo v21, "TMO"

    sget-object v22, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_21

    const-string/jumbo v21, "NEWCO"

    sget-object v22, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_22

    :cond_21
    const v21, 0x10808c3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    :cond_22
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/connectivity/Tethering;->isWifiTetheredOnly:Z

    const v21, 0x10808c5

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    :cond_23
    if-eqz v6, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/connectivity/Tethering;->wifiTethered:Z

    move/from16 v21, v0

    if-nez v21, :cond_24

    if-eqz v19, :cond_27

    :cond_24
    const-string/jumbo v21, "TMO"

    sget-object v22, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_25

    const-string/jumbo v21, "NEWCO"

    sget-object v22, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_26

    :cond_25
    const v21, 0x10808c3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    :cond_26
    const v21, 0x10808c2

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    :cond_27
    const-string/jumbo v21, "TMO"

    sget-object v22, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_28

    const-string/jumbo v21, "NEWCO"

    sget-object v22, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_29

    :cond_28
    const v21, 0x10808c3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    :cond_29
    const v21, 0x10808c1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto/16 :goto_6

    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    goto/16 :goto_6

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    invoke-virtual/range {v21 .. v22}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    goto/16 :goto_7

    :cond_2c
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    goto/16 :goto_8

    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->mCpuBooster:Lcom/samsung/android/os/SemDvfsManager;

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->mCpuCoreBooster:Lcom/samsung/android/os/SemDvfsManager;

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->semusbthethering:Lcom/samsung/android/os/SemPerfManager;

    move-object/from16 v21, v0

    const-string/jumbo v21, "USBTETHERING"

    const-string/jumbo v22, "off"

    invoke-static/range {v21 .. v22}, Lcom/samsung/android/os/SemPerfManager;->sendCommandToSsrm(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v21, v0

    if-eqz v21, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/connectivity/Tethering;->cstateDisable:Lcom/samsung/android/os/SemDvfsManager;

    goto/16 :goto_9
.end method

.method private sendUiTetherProvisionIntent(ILandroid/os/ResultReceiver;)V
    .locals 5

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.settings.TETHER_PROVISIONING_UI"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "extraAddTetherType"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "extraProvisionCallback"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private sendUpstreamIfaceChangeBroadcast(Ljava/lang/String;Ljava/lang/String;ILcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;)V
    .locals 4

    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendUpstreamIfaceChangeBroadcast upstreamIface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " tetheredIface:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " IP Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " update_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.server.connectivity.UPSTREAM_IFACE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "tetheringUpstreamIface"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "tetheredClientIface"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "tetheringUpstreamIpType"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "tetheringUpstreamUpdateType"

    invoke-virtual {p4}, Lcom/android/server/connectivity/Tethering$UpstreamInfoUpdateType;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendWifiApPowerModeAlarmIntent(Landroid/content/Context;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.net.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "wifiap_power_mode_alarm_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
    .locals 4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/connectivity/Tethering$2;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/connectivity/Tethering$2;-><init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void

    :cond_0
    const-string/jumbo v2, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tried to enable bluetooth tethering with null or disabled adapter. null: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setWifiApTxPowerMode(I)I
    .locals 8

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "wifi"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiManager;->setWifiApConfigTxPower(I)Z

    iget-boolean v5, p0, Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z

    if-eqz v5, :cond_0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v5, "android.net.wifi.wifiap_tx_power_mode_changed"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "android.net.wifi.wifiap_tx_power_mode_value"

    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v7, "wifi_ap_tx_power_changed_by_service"

    if-nez p1, :cond_1

    move v5, v6

    :goto_0
    invoke-static {v1, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v5

    const/16 v7, 0xd

    if-ne v5, v7, :cond_2

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v5

    if-nez v5, :cond_2

    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/16 v5, 0xc3

    iput v5, v3, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "txPower"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v5

    return v5

    :cond_1
    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    return v6
.end method

.method private showDialogOnInternetSharingBlockedByActiveSync()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1040660

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isLightTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x103012b

    :goto_0
    invoke-direct {v0, v3, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const v2, 0x1030128

    goto :goto_0
.end method

.method private showLowBatteryNotification()V
    .locals 14

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    if-nez v8, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    const-string/jumbo v11, ""

    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string/jumbo v0, "biscotto"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v11, "Battery is below 15%."

    :goto_0
    const v0, 0x10406c3

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.TetherSettings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    if-nez v0, :cond_1

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    const-wide/16 v12, 0x0

    iput-wide v12, v0, Landroid/app/Notification;->when:J

    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    const v1, 0x108008a

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iput-object v11, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v11, v7, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v8, v4, v0, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    :cond_2
    const v0, 0x10406c2

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_0
.end method

.method private showTetheredNotification(I)V
    .locals 14

    const/4 v11, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    if-nez v7, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "ATT"

    sget-object v3, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v0

    if-lez v0, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-ne v0, p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    if-nez v0, :cond_3

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v0, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    if-lez v0, :cond_9

    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    if-ne v0, v11, :cond_8

    const v0, 0x10406be

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    :goto_0
    const-string/jumbo v0, "VZW"

    sget-object v3, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "SPRINT"

    sget-object v3, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const v0, 0x10406ba

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    :cond_6
    const v0, 0x1040491

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "SBM"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "jp.softbank.mb.tether"

    const-string/jumbo v3, "jp.softbank.mb.tether.TetherBootCheck"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    const/high16 v0, 0x14000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_7

    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    const-wide/16 v12, 0x0

    invoke-virtual {v0, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const v3, 0x106005a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v1, "status"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    :cond_7
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    iget v0, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v7, v4, v0, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    :cond_8
    new-array v0, v11, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/android/server/connectivity/Tethering;->clients:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const v3, 0x10406bd

    invoke-virtual {v9, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_9
    const v0, 0x10406bf

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_0

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->isWifiTetheredOnly:Z

    if-eqz v0, :cond_b

    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v3, "com.android.settings.TetherSettings"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method private showTetheredVendorNotification(I)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    if-nez v7, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    :cond_1
    const-string/jumbo v0, "TMO"

    sget-object v1, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "NEWCO"

    sget-object v1, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const p1, 0x10808c3

    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-ne v0, p1, :cond_4

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    if-nez v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->add_client_event:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    invoke-virtual {v7, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_5
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->isApSuspended:Z

    if-eqz v0, :cond_8

    const v0, 0x10406c1

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    :goto_0
    const-string/jumbo v0, "SPRINT"

    sget-object v1, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    if-lez v0, :cond_a

    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const v0, 0x10406be

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    :goto_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    if-nez v0, :cond_6

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Landroid/app/Notification;->when:J

    :cond_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v0, "com.android.settings"

    const-string/jumbo v1, "com.android.settings.wifi.mobileap.WifiApSettings"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x10008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/android/server/connectivity/Tethering;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    const/4 v1, -0x2

    iput v1, v0, Landroid/app/Notification;->priority:I

    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    if-lez v0, :cond_d

    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    const v0, 0x10406be

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Landroid/app/Notification;->defaults:I

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    const/4 v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iput-object v10, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v10, v6, v8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheredVendorNotification:Landroid/app/Notification;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {v7, v4, v0, v1, v3}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    :cond_8
    const v0, 0x1040491

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/connectivity/Tethering;->clients:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const v1, 0x10406bd

    invoke-virtual {v9, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    :cond_a
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->isApSuspended:Z

    if-eqz v0, :cond_b

    const v0, 0x10406c0

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_1

    :cond_b
    const v0, 0x10406bb

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/connectivity/Tethering;->clients:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const v1, 0x10406bd

    invoke-virtual {v9, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    :cond_d
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->isApSuspended:Z

    if-eqz v0, :cond_e

    const v0, 0x10406c1

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_2

    :cond_e
    const v0, 0x1040491

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    goto/16 :goto_2

    :cond_f
    const v0, 0x10808c6

    if-ne p1, v0, :cond_7

    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    if-lez v0, :cond_11

    sget v0, Lcom/android/server/connectivity/Tethering;->clients:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    const v0, 0x10406be

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_2

    :cond_10
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/server/connectivity/Tethering;->clients:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    const v1, 0x10406bd

    invoke-virtual {v9, v1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    :cond_11
    const v0, 0x10406bc

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    goto/16 :goto_2
.end method

.method private suspendWifiApIcon(Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    if-eqz p1, :cond_0

    const-string/jumbo v2, "wifi_ap"

    const v3, 0x10808a1

    invoke-virtual {v1, v2, v3, v4, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    const-string/jumbo v2, "wifi_ap"

    invoke-virtual {v1, v2, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    sget v3, Lcom/android/server/connectivity/Tethering;->clients:I

    aget v0, v2, v3

    const-string/jumbo v2, "wifi_ap"

    invoke-virtual {v1, v2, v0, v4, v6}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    const-string/jumbo v2, "wifi_ap"

    invoke-virtual {v1, v2, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private tetherNcm(Z)V
    .locals 10

    const/4 v2, 0x0

    const-string/jumbo v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tetherNcm "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v8, v2, [Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    array-length v0, v8

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v7, v8, v2

    const-string/jumbo v1, "ncm0"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v9

    :goto_1
    if-nez v9, :cond_1

    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v0, "Tethering"

    const-string/jumbo v1, "Error listing Interfaces"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ifaces(ncm) listing is errored : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "Tethering"

    const-string/jumbo v1, "unable start or stop Ncm tethering"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private tetherUsb(Z)V
    .locals 11

    const/4 v2, 0x0

    const-string/jumbo v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tetherUsb "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v8, v2, [Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    const-string/jumbo v10, "sys.usb.tethering"

    const-string/jumbo v0, "sys.usb.tethering"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "sys.usb.tethering"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    array-length v0, v8

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v7, v8, v2

    invoke-direct {p0, v7}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;)I

    move-result v9

    :goto_1
    if-nez v9, :cond_2

    return-void

    :catch_0
    move-exception v6

    const-string/jumbo v0, "Tethering"

    const-string/jumbo v1, "Error listing Interfaces"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ifaces(usb) listing is errored : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x3

    const/4 v1, 0x4

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v9

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "Tethering"

    const-string/jumbo v1, "unable start or stop USB tethering"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method clearMaxApNotification()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotification:Landroid/app/Notification;

    if-eqz v1, :cond_0

    const v1, 0x10406c4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotification:Landroid/app/Notification;

    :cond_0
    return-void
.end method

.method createMaxApNotification()V
    .locals 14

    const v13, 0x10406c4

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    const v3, 0x108008a

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v10, 0x10406c5

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v10, "com.samsung.android.net.wifi.MAXAP_NOTI"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-static {v10, v12, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-direct {v1, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotification:Landroid/app/Notification;

    iget-object v10, p0, Lcom/android/server/connectivity/Tethering;->mMaxApNotification:Landroid/app/Notification;

    invoke-virtual {v5, v13, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v5, "  "

    invoke-direct {v4, p2, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission Denial: can\'t dump ConnectivityService.Tether from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string/jumbo v5, "Tethering:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const-string/jumbo v5, "mUpstreamIfaceTypes:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Landroid/net/ConnectivityManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v5, "Tether state:"

    invoke-virtual {v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v6

    invoke-virtual {v4}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    return-void
.end method

.method public getCountTetheredIfaces()I
    .locals 7

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v4}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v5

    if-eqz v5, :cond_0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    :cond_1
    monitor-exit v6

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getRvfMode()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1
    return v5

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_1
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .locals 9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v7

    if-eqz v7, :cond_0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_1
    monitor-exit v8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v5
.end method

.method public getKnoxValue(Landroid/net/Uri;Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v4, v1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getKnoxValue(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v6, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v7, 0x1

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    move-object v1, v0

    if-nez v1, :cond_0

    const-string/jumbo v2, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getLastError()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mTetherableBluetoothRegexs : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_1
    monitor-exit v8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v5
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDhcpRange:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    invoke-virtual {v6}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v7

    if-eqz v7, :cond_0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_1
    monitor-exit v8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v5, v7, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object v5
.end method

.method public getUpstreamIfaceTypes()[I
    .locals 5

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v2, v3, [I

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v4

    return-object v2

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public handleTetherIfaceChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v1, 0x50003

    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 7

    const-string/jumbo v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "interfaceAdded "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    const/4 v2, 0x1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_3

    const-string/jumbo v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not a tetherable iface, ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    if-eqz v1, :cond_4

    const-string/jumbo v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "active iface ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") reported as added, ignoring"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v4

    return-void

    :cond_4
    :try_start_2
    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 3

    const-string/jumbo v0, "Tethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "interfaceLinkStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interfaceRemoved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    if-nez v0, :cond_0

    const-string/jumbo v1, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "attempting to remove unknown iface ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "), ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :cond_0
    const v1, 0x50068

    :try_start_1
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 7

    const-string/jumbo v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "interfaceStatusChanged "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    monitor-exit v4

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    if-eqz p2, :cond_5

    if-nez v1, :cond_4

    new-instance v1, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    monitor-exit v4

    return-void

    :cond_5
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    const-string/jumbo v3, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ignore interface down for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :cond_7
    if-eqz v1, :cond_4

    const v3, 0x50068

    :try_start_3
    invoke-virtual {v1, v3}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public isBluetooth(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    monitor-exit v3

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method public isWifi(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    array-length v5, v4

    move v1, v2

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    monitor-exit v3

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v3

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method

.method public makeDualServerStrings(Ljava/util/Collection;Ljava/util/Collection;)[Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetAddress;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v6

    add-int/2addr v5, v6

    new-array v4, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    move v2, v3

    goto :goto_1

    :cond_1
    return-object v4
.end method

.method public semSetNcmTethering(Z)I
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semSetNcmTethering("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "usb"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    if-eqz p1, :cond_1

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->tetherNcm(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    return v4

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z

    const-string/jumbo v1, "ncm"

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/Tethering;->tetherNcm(Z)V

    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setOemDunRequired()V
    .locals 35

    const-string/jumbo v26, ""

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/telephony/TelephonyManager;

    if-nez v33, :cond_0

    const-string/jumbo v2, "Tethering"

    const-string/jumbo v3, "No telephony manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v32

    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Tethering"

    const-string/jumbo v3, "No numeric data"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static/range {v32 .. v32}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v27

    const-string/jumbo v2, "ril.simoperator"

    const-string/jumbo v3, "ETC"

    move/from16 v0, v27

    invoke-static {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v2, "CTC"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "gsm.sim.cdmaoperator.numeric"

    const-string/jumbo v3, ""

    move/from16 v0, v27

    invoke-static {v0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string/jumbo v26, "46003"

    :goto_0
    const-string/jumbo v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setOemDunRequired: CTC card!, numeric="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", cdmaOperator="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const/16 v21, 0x0

    const/16 v25, 0x0

    new-instance v5, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "numeric = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "CAN"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "gsm.sim.operator.gid"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and mvno_type=\"gid\" and mvno_match_data=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    if-eqz v21, :cond_7

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_7

    :goto_2
    const-string/jumbo v2, "type"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "dun"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "default"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    :cond_4
    :goto_3
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_RIL_ExtDevCdmaPacketAccessSupport"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v2, "protocol"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v2, "roaming_protocol"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v2, "carrier_enabled"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v2, "2"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "3"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "4"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "5"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_5
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_6
    const-string/jumbo v2, "Tethering"

    const-string/jumbo v3, "KDI db cr"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string/jumbo v2, "content://telephony/carriers/restore"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v12, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    if-eqz v21, :cond_8

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_8
    const-string/jumbo v2, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "310120"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "310000"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "311870"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "311490"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "312530"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string/jumbo v2, "316010"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const/16 v25, 0x1

    :cond_a
    const-string/jumbo v2, "KDI"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v25, 0x1

    :cond_b
    const-string/jumbo v2, "gsm.apn.sim.operator.numeric"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v2, "LRA"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string/jumbo v2, "ACG"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_c
    new-instance v9, Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-direct {v9, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "LRA"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/android/server/connectivity/Tethering;->mAutoConfigurationType:Ljava/lang/String;

    if-eqz v2, :cond_19

    sget-object v2, Lcom/android/server/connectivity/Tethering;->mAutoConfigurationType:Ljava/lang/String;

    const-string/jumbo v3, "SIMBASED_SSKU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "numeric = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    new-instance v22, Ljava/lang/String;

    const-string/jumbo v2, " "

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    new-instance v23, Ljava/lang/String;

    const-string/jumbo v2, " "

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    if-eqz v21, :cond_10

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_d
    const-string/jumbo v2, "type"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v2, "apn"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v2, "default"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v22, v20

    :cond_e
    const-string/jumbo v2, "dun"

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    move-object/from16 v23, v20

    :cond_f
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string/jumbo v2, "Tethering"

    const-string/jumbo v3, "LRA|ACG - dun has same apn as default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v25, 0x0

    :cond_10
    :goto_5
    if-eqz v21, :cond_11

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_11
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_RIL_ExtDevCdmaPacketAccessSupport"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "kddi_cpa_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1e

    const/16 v19, 0x1

    :goto_6
    if-eqz v19, :cond_12

    const/16 v25, 0x0

    :cond_12
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    if-eqz v25, :cond_1f

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tether_dun_required"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "Tethering"

    const-string/jumbo v3, "Set dun requiered as 1"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_7
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_13
    move-object/from16 v26, v18

    goto/16 :goto_0

    :cond_14
    const-string/jumbo v2, "CTG"

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v26, "45431"

    goto/16 :goto_1

    :cond_15
    :try_start_3
    const-string/jumbo v2, "Tethering"

    const-string/jumbo v3, "Dun type is exist"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v25, 0x1

    goto/16 :goto_3

    :cond_16
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_2

    :catch_0
    move-exception v24

    :try_start_4
    const-string/jumbo v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception caught to query databases : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v21, :cond_17

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_17
    return-void

    :catchall_0
    move-exception v2

    if-eqz v21, :cond_18

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_18
    throw v2

    :cond_19
    const-string/jumbo v9, "numeric = \"311480\""

    goto/16 :goto_4

    :cond_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "numeric = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4

    :cond_1b
    :try_start_5
    const-string/jumbo v2, "Tethering"

    const-string/jumbo v3, "LRA|ACG - dun has different apn from default - dunRequired"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/16 v25, 0x1

    goto/16 :goto_5

    :catch_1
    move-exception v24

    :try_start_6
    const-string/jumbo v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception caught to query databases : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v21, :cond_1c

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_1c
    return-void

    :catchall_1
    move-exception v2

    if-eqz v21, :cond_1d

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_1d
    throw v2

    :cond_1e
    const/16 v19, 0x0

    goto/16 :goto_6

    :cond_1f
    :try_start_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "tether_dun_required"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_7

    :catchall_2
    move-exception v2

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setUsbTethering(Z)I
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v4, "Tethering"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setUsbTethering("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "usb"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbManager;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    invoke-virtual {v4}, Lcom/samsung/android/knox/custom/SystemManager;->getUsbNetState()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "Tethering"

    const-string/jumbo v6, "Set USB Net Destination Address"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/connectivity/Tethering;->mDhcpKnoxCustomRange:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    const/16 v7, 0x14c

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/custom/SystemManager;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v4, v7

    sget-object v4, Lcom/android/server/connectivity/Tethering;->mDhcpKnoxCustomRange:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Lcom/samsung/android/knox/custom/SystemManager;

    const/16 v7, 0x14c

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/custom/SystemManager;->getUsbNetAddress(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v4, v7

    :cond_0
    if-eqz p1, :cond_3

    iget-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v2

    const/4 v4, 0x1

    :try_start_1
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    monitor-exit v5

    return v8

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_1
    const/4 v4, 0x1

    :try_start_4
    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "enabled"

    const-string/jumbo v6, "TETHER_ALWAYS_ON_MODE"

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "Tethering"

    const-string/jumbo v6, "[Tethering always mode] call tetherUsb()"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "rndis,acm,dm"

    invoke-virtual {v1, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "rndis"

    invoke-virtual {v1, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-wide v2

    const/4 v4, 0x0

    :try_start_5
    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/hardware/usb/UsbManager;->setCurrentFunction(Ljava/lang/String;)V

    :cond_4
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z

    goto :goto_0

    :catchall_2
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
.end method

.method public startTethering(ILandroid/os/ResultReceiver;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    return-void

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->runUiTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->runSilentTetherProvisioningAndEnable(ILandroid/os/ResultReceiver;)V

    goto :goto_0
.end method

.method public stopTethering(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isTetherProvisioningRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->cancelTetherProvisioningRechecks(I)V

    :cond_0
    return-void
.end method

.method public tether(Ljava/lang/String;)I
    .locals 13

    const-string/jumbo v0, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tethering "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v12, 0x0

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy1"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v10, 0x1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "isBluetoothTetheringEnabled"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isBluetoothTetheringEnabled"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v10, 0x1

    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "Tethering"

    const-string/jumbo v2, "[ActiveSync] tether() Internet sharing has banned due to security policy."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x50078

    invoke-virtual {v12, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is banned due to SECURITY POLICY"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x14

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    :cond_2
    const/4 v11, 0x1

    const-string/jumbo v0, "content://com.sec.knox.provider/RestrictionPolicy4"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->knoxUri:Landroid/net/Uri;

    const-string/jumbo v5, "isUsbTetheringEnabled"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "isUsbTetheringEnabled"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v11, 0x1

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v11, :cond_7

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v10, :cond_8

    :cond_5
    if-nez v12, :cond_9

    const-string/jumbo v0, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tried to Tether an unknown iface :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is an unknown iface for tethering"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v11, 0x0

    goto :goto_1

    :cond_7
    const-string/jumbo v0, "Tethering"

    const-string/jumbo v2, "Tethering USB is not allowed (MDM)"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is not allowed (MDM)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0

    :cond_8
    const-string/jumbo v0, "Tethering"

    const-string/jumbo v2, "Tethering Bluetooth is not allowed (MDM)"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is not allowed (MDM)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x4

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    return v0

    :cond_9
    invoke-virtual {v12}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v12}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_a
    const v0, 0x50066

    invoke-virtual {v12, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is tethered"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_b
    const-string/jumbo v0, "Tethering"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Tried to Tether an unavailable iface :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " is an unavailable iface for tethering"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    return v0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 11

    const/4 v0, 0x3

    const/4 v10, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x4

    const-string/jumbo v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Untethering "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    if-nez v9, :cond_0

    const-string/jumbo v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Tried to Untether an unknown iface :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v4, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is an unknown iface for untethering"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return v10

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_0
    invoke-virtual {v9}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "Tethering"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Tried to Untethered an errored iface :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-class v4, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is an unavailable iface for untethering"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const v0, 0x50067

    invoke-virtual {v9, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->sendMessage(I)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " is untethered"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x5

    move v4, v1

    move v5, v10

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public untetherAll()V
    .locals 5

    const-string/jumbo v2, "Tethering"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Untethering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateConfiguration()V
    .locals 13

    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070030

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    new-array v3, v8, [Ljava/lang/String;

    const-string/jumbo v9, "persist.fst.rate.upgrade.en"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v11, :cond_1

    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v9, "bond0"

    aput-object v9, v5, v8

    :goto_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v10, "CscFeature_BT_DisableNAP"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {}, Lcom/android/server/connectivity/Tethering;->isWifiOnly()Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070036

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    array-length v9, v1

    :goto_2
    if-ge v8, v9, :cond_5

    aget v0, v1, v8

    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v10}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1070031

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    const-string/jumbo v9, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v9, "persist.sys.tether_data"

    invoke-static {v9, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v9, "persist.sys.tether_data_bt"

    invoke-static {v9, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v9, 0x2

    if-ge v2, v9, :cond_3

    if-gtz v6, :cond_3

    const-string/jumbo v9, "Tethering"

    const-string/jumbo v10, "BT Tethering disabled by Sprint limitation"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v8, [Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string/jumbo v9, "Tethering"

    const-string/jumbo v10, "NAP Supported on Sprint"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v11, [Ljava/lang/String;

    const-string/jumbo v9, "bt-pan"

    aput-object v9, v3, v8

    goto :goto_1

    :cond_4
    const-string/jumbo v9, "Tethering"

    const-string/jumbo v10, "NAP Supported by CSCFeature and not Wifi Model"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v11, [Ljava/lang/String;

    const-string/jumbo v9, "bt-pan"

    aput-object v9, v3, v8

    goto :goto_1

    :cond_5
    iget-object v9, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iput-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherableUsbRegexs:[Ljava/lang/String;

    sget-object v8, Lcom/android/server/connectivity/Tethering;->mWifiInterface:[Ljava/lang/String;

    iput-object v8, p0, Lcom/android/server/connectivity/Tethering;->mTetherableWifiRegexs:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherableBluetoothRegexs:[Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamIfaceTypes:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->checkDunRequired()V

    return-void

    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method
