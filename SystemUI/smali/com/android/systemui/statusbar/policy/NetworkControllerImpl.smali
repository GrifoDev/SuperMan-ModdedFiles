.class public Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController;
.implements Lcom/android/systemui/DemoMode;
.implements Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;
.implements Lcom/android/systemui/ConfigurationChangedReceiver;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;,
        Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;
    }
.end annotation


# static fields
.field static final CHATTY:Z

.field static final DEBUG:Z

.field private static mLock:Ljava/lang/Object;


# instance fields
.field public dataNetType:[I

.field public isMultiSim:Z

.field private final mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

.field private mAirplaneMode:Z

.field private final mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field private mCallingState:[Z

.field private mCarrierLabel:Landroid/widget/TextView;

.field private mCarrierLabelSlot1:Landroid/widget/TextView;

.field private mCarrierLabelSlot2:Landroid/widget/TextView;

.field private mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

.field private final mConnectedTransports:Ljava/util/BitSet;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mCurrentSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentUserId:I

.field private final mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

.field private final mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

.field private mDefaultTextSize:F

.field private mDemoInetCondition:Z

.field private mDemoMode:Z

.field private mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mEmergencySource:I

.field final mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

.field final mHandler:Landroid/os/Handler;

.field private final mHasMobileDataFeature:Z

.field private mHasNoSims:Z

.field private mImsConnected:Z

.field private mInetCondition:Z

.field private mIsEmergency:Z

.field private mIsRtoL:Z

.field private mIsSimAndOperatorMatched:Z

.field mLastServiceState:Landroid/telephony/ServiceState;

.field mListening:Z

.field private mLocale:Ljava/util/Locale;

.field private mLockedSIM2:Z

.field private mMPTCPObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;

.field private mMPTCPSettingEnabled:Z

.field final mMobileSignalControllers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/policy/MobileSignalController;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;

.field private mOperatorLogoIconVisible:Z

.field private final mPhone:Landroid/telephony/TelephonyManager;

.field private mPreferredVoiceObserver:Landroid/database/ContentObserver;

.field private final mReceiverHandler:Landroid/os/Handler;

.field private final mRegisterListeners:Ljava/lang/Runnable;

.field private mSimIconId:I

.field private mSimIconVisible:Z

.field private mStatusBarCarrierLabel:Landroid/widget/TextView;

.field private final mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

.field private mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mUserSetup:Z

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mValidatedTransports:Ljava/util/BitSet;

.field private mVoWifiConnected:Z

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field final mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

.field public multiSimCarrierText:[Ljava/lang/String;

.field public numberOfSim:I

.field public preferredVoice:I

.field public serviceState:[Landroid/telephony/ServiceState;

.field public signalStrength:[Landroid/telephony/SignalStrength;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Lcom/android/systemui/statusbar/policy/CallbackHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierLabelSlot1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierLabelSlot2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPSettingEnabled:Z

    return v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPSettingEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;ILandroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->dynamicallyReduceTextSize(ILandroid/widget/TextView;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onUserSwitched(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->registerListeners()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setPreferredSimSlotIcon()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setUserSetupComplete(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    const-string/jumbo v0, "NetworkController"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    const-string/jumbo v0, "NetworkControllerChat"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/settingslib/net/DataUsageController;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 7

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLockedSIM2:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPSettingEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconVisible:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconId:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->dataNetType:[I

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/telephony/SignalStrength;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->signalStrength:[Landroid/telephony/SignalStrength;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/telephony/ServiceState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->serviceState:[Landroid/telephony/ServiceState;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconVisible:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsSimAndOperatorMatched:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoWifiConnected:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mImsConnected:Z

    const/4 v1, 0x2

    new-array v1, v1, [Z

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallingState:[Z

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPreferredVoiceObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRegisterListeners:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iput-object p7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/policy/DataSaverControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iput-object p5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {v1, p0}, Lcom/android/settingslib/net/DataUsageController;->setNetworkController(Lcom/android/settingslib/net/DataUsageController$NetworkNameProvider;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v1, v2}, Lcom/android/settingslib/net/DataUsageController;->setCallback(Lcom/android/settingslib/net/DataUsageController$Callback;)V

    new-instance v1, Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/policy/WifiSignalController;-><init>(Landroid/content/Context;ZLcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/net/NetworkScoreManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    new-instance v1, Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$5;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v1}, Lcom/android/systemui/settings/CurrentUserTracker;->startTracking()V

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;

    move-object/from16 v0, p13

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$6;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    move-object/from16 v0, p13

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;->addCallback(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isMultisim()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x10404ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v3, 0x10404ae

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    :cond_0
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07044a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultTextSize:F

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V
    .locals 16

    const-string/jumbo v2, "connectivity"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    const-class v2, Landroid/net/NetworkScoreManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkScoreManager;

    const-string/jumbo v2, "phone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    const-string/jumbo v2, "wifi"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v9

    new-instance v11, Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-direct {v11}, Lcom/android/systemui/statusbar/policy/CallbackHandler;-><init>()V

    new-instance v12, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-direct {v12, v0, v1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    new-instance v13, Lcom/android/settingslib/net/DataUsageController;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    new-instance v14, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-direct {v14}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;-><init>()V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v10, p2

    move-object/from16 v15, p3

    invoke-direct/range {v2 .. v15}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;Landroid/net/NetworkScoreManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Landroid/telephony/SubscriptionManager;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;Landroid/os/Looper;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;Lcom/android/settingslib/net/DataUsageController;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRegisterListeners:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private addSignalController(II)Landroid/telephony/SubscriptionInfo;
    .locals 14

    new-instance v0, Landroid/telephony/SubscriptionInfo;

    const-string/jumbo v2, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v8, ""

    const-string/jumbo v13, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v1, p1

    move/from16 v3, p2

    invoke-direct/range {v0 .. v13}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;)V

    new-instance v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v7}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    move-object v7, p0

    move-object v8, v0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->userSetup:Z

    return-object v0
.end method

.method private dynamicallyReduceTextSize(ILandroid/widget/TextView;)V
    .locals 9

    const/4 v8, 0x0

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultTextSize:F

    invoke-virtual {p2, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    const-string/jumbo v4, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "dynamicallyReduceTextSize : mDisplayMetrics.densityDpi"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    float-to-int v3, v4

    if-lt p1, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultTextSize:F

    add-int/lit8 v5, v0, 0x1

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v6, v6

    const/high16 v7, 0x43200000    # 160.0f

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {p2, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static final emergencyToString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x12c

    if-le p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ASSUMED_VOICE_CONTROLLER("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit16 v1, p0, -0xc8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    if-le p0, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NO_SUB("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit16 v1, p0, -0x12c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v0, 0xc8

    if-le p0, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VOICE_CONTROLLER("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit16 v1, p0, -0xc8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/16 v0, 0x64

    if-le p0, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "FIRST_CONTROLLER("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p0, -0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-nez p0, :cond_4

    const-string/jumbo v0, "NO_CONTROLLERS"

    return-object v0

    :cond_4
    const-string/jumbo v0, "UNKNOWN_SOURCE"

    return-object v0
.end method

.method private getDataController()Lcom/android/systemui/statusbar/policy/MobileSignalController;
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultDataSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "NetworkController"

    const-string/jumbo v2, "No data sim selected"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    return-object v1

    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot find controller for data sub: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    return-object v1
.end method

.method private getSimIconIndex(I)I
    .locals 4

    const/4 v2, 0x0

    const/4 v3, -0x2

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "select_icon_1"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "select_icon_2"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private handleSetUserSetupComplete(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserSetup:Z

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserSetup:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setUserSetupComplete(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isSIMandOperatorMatched()Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->getOperatorNumeric(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSIMandOperatorMatched simNumeric = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ORANGE"

    sget-object v5, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "20801"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "20802"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_0
    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSIMandOperatorMatched SIM is matched for Orange - plmnNumeric = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v9

    :cond_1
    return v7

    :cond_2
    const-string/jumbo v4, "SIN"

    sget-object v5, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "52501"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "52502"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_3
    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->getNetworkOperatorNumeric(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSIMandOperatorMatched SIM is matched for singtel - plmnNumeric = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v9

    :cond_4
    return v7

    :cond_5
    if-nez v3, :cond_6

    return v7

    :cond_6
    invoke-static {}, Lcom/android/systemui/Rune;->getOperatorMccMnc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "NetworkController"

    const-string/jumbo v5, "isSIMandOperatorMatched SIM is matched!!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_7
    return v7
.end method

.method private isSlotLockedBySimPin(I)Z
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v2, "gsm.sim.state"

    const-string/jumbo v3, "NOT_READY"

    invoke-static {v2, p1, v3}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "PIN_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    const-string/jumbo v2, "PUK_REQUIRED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "PERM_DISABLED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0
.end method

.method private notifyAllListeners()V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListeners()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->notifyListeners()V

    return-void
.end method

.method private notifyListeners()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0805df

    const v5, 0x7f120aa3

    invoke-direct {v1, v2, v4, v5, v3}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNoSims(Z)V

    return-void
.end method

.method private onUserSwitched(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->onUserSwitched(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    return-void
.end method

.method private pushConnectivityToSignals()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    return-void
.end method

.method private refreshLocale()V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    :cond_0
    return-void
.end method

.method private registerListeners()V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerListener()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v3, v4}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.samsung.android.softsim.ServiceStatus"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "ZVV"

    sget-object v4, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v3, p0, v0, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    sget-boolean v3, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_MPTCP:Z

    if-eqz v3, :cond_3

    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "mptcp_value_internal"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPObserver:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$MPTCPObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "prefered_voice_call"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPreferredVoiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPreferredVoiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v6}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string/jumbo v3, ""

    sget-object v4, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isSIMandOperatorMatched()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsSimAndOperatorMatched:Z

    :cond_4
    return-void
.end method

.method private setPreferredSimSlotIcon()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->numberOfSim:I

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_SIMPLIFIED_SIGNAL_CLUSTER:Z

    if-eqz v3, :cond_4

    :cond_0
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "NetworkController"

    const-string/jumbo v4, "setCurrentSimSlotIcon setIcon: invisible"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconId:I

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconVisible:Z

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v0

    if-ge v0, v8, :cond_3

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconVisible:Z

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconVisible:Z

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSimIcon(ZI)V

    return-void

    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->numberOfSim:I

    if-ne v3, v7, :cond_a

    invoke-static {v6}, Lcom/android/systemui/statusbar/DeviceState;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v3

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "NetworkController"

    const-string/jumbo v4, "setCurrentSimSlotIcon for SIM 0"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->PreferredSimIcon:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconId:I

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconVisible:Z

    goto :goto_0

    :cond_6
    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v3

    if-eqz v3, :cond_8

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "NetworkController"

    const-string/jumbo v4, "setCurrentSimSlotIcon for SIM 2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->PreferredSimIcon:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconId:I

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconVisible:Z

    goto :goto_0

    :cond_8
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string/jumbo v3, "NetworkController"

    const-string/jumbo v4, "setCurrentSimSlotIcon setIcon: invisible"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconId:I

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconVisible:Z

    goto :goto_0

    :cond_a
    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->numberOfSim:I

    if-ne v3, v8, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultVoicePhoneId()I

    move-result v1

    const-string/jumbo v3, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCurrentSimSlotIcon mSubDefaults.getDefaultVoicePhoneId() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setCurrentSimSlotIcon DeviceState.getSimSettingState(mContext, SIM_1) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->preferredVoice:I

    if-nez v3, :cond_b

    const v3, 0x7f080688

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconId:I

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconVisible:Z

    goto/16 :goto_0

    :cond_b
    if-nez v1, :cond_c

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v3

    if-eqz v3, :cond_c

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->PreferredSimIcon:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconId:I

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconVisible:Z

    goto/16 :goto_0

    :cond_c
    if-ne v1, v7, :cond_d

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v7}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v3

    if-eqz v3, :cond_d

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getSimIconIndex(I)I

    move-result v2

    sget-object v3, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->PreferredSimIcon:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconId:I

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconVisible:Z

    goto/16 :goto_0

    :cond_d
    iput v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconId:I

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconVisible:Z

    goto/16 :goto_0
.end method

.method private setUserSetupComplete(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/policy/-$Lambda$JpQ9MKA7q61I6v8lllDNANTFsT4;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/statusbar/policy/-$Lambda$JpQ9MKA7q61I6v8lllDNANTFsT4;-><init>(ZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private unregisterListeners()V
    .locals 4

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterListener()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-boolean v2, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SECURE_WIFI:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->unregisterListener()V

    :cond_1
    return-void
.end method

.method private updateAirplaneMode(Z)V
    .locals 6

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-ne v0, v3, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setAirplaneMode(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyListeners()V

    :cond_3
    return-void
.end method

.method private updateConnectivity()V
    .locals 10

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->clear()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentUserId:I

    invoke-virtual {v2, v4}, Landroid/net/ConnectivityManager;->getDefaultNetworkCapabilitiesForUser(I)[Landroid/net/NetworkCapabilities;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v0, v5, v4

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v7

    array-length v8, v7

    move v2, v3

    :goto_1
    if-ge v2, v8, :cond_1

    aget v1, v7, v2

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->set(I)V

    const/16 v9, 0x10

    invoke-virtual {v0, v9}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v9, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateConnectivity: mConnectedTransports="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "NetworkController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateConnectivity: mValidatedTransports="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->pushConnectivityToSignals()V

    return-void
.end method

.method private updateMobileControllers()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->doUpdateMobileControllers()V

    return-void
.end method

.method private updateNoSIMNotification()V
    .locals 12

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    const-string/jumbo v8, "NetworkController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateNoSIMNotification : isNoSimState = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isNoSimState()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isNoSimState()Z

    move-result v8

    if-nez v8, :cond_0

    const/16 v8, 0x111

    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v8, "VZW"

    sget-object v9, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const v8, 0x7f1207fe

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f1207fa

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v1, 0x7f080668

    :goto_1
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v10, Lcom/android/systemui/util/NotificationChannels;->ONGOING:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    const-wide/16 v10, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v8, "VZW"

    sget-object v9, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "com.sec.android.app.setupwizard.NO_SIM_POPUP"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "SIM_TYPE"

    const-string/jumbo v9, "NO_SIM"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v10, 0x8000000

    invoke-static {v8, v9, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    :cond_1
    :goto_2
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    const/16 v9, 0x111

    invoke-virtual {v2, v9, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v8, "TMB"

    sget-object v9, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const v8, 0x7f1207fd

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f1207f8

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v1, 0x7f080666

    goto :goto_1

    :cond_3
    const-string/jumbo v8, "CCT"

    sget-object v9, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const v8, 0x7f1207fc

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f1207f9

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v1, 0x7f080666

    goto/16 :goto_1

    :cond_4
    const v8, 0x7f1207fb

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f1207f8

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v1, 0x7f080666

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v8, "CCT"

    sget-object v9, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.intent.action.VIEW"

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v10, 0x7f120b68

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v10, 0x8000000

    invoke-static {v8, v9, v4, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v8, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto/16 :goto_2
.end method

.method private updateNumberOfSim()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->getNumberOfSim(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->numberOfSim:I

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 8

    sget-object v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconVisible:Z

    iget v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSimIconId:I

    invoke-interface {p1, v2, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSimIcon(ZI)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setSubs(Ljava/util/List;)V

    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v6, 0x7f0805df

    const v7, 0x7f120aa3

    invoke-direct {v2, v4, v6, v7, v5}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    invoke-interface {p1, v2}, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;->setNoSims(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v4}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setEmergencyCallsOnly(Z)V

    return-void
.end method

.method public addOperatorLogoIconListener(Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;)V
    .locals 2

    const-string/jumbo v0, "NetworkController"

    const-string/jumbo v1, "addOperatorLogoIconListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$OperatorLogoIconListener;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setOperatorLogoIconVisible(Z)V

    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    move/from16 v25, v0

    if-nez v25, :cond_2

    const-string/jumbo v25, "enter"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    sget-boolean v25, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v25, :cond_0

    const-string/jumbo v25, "NetworkController"

    const-string/jumbo v26, "Entering demo mode"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->unregisterListeners()V

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-object/from16 v25, v0

    const-string/jumbo v26, "DemoMode"

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->ssid:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5

    const-string/jumbo v25, "exit"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    sget-boolean v25, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v25, :cond_3

    const-string/jumbo v25, "NetworkController"

    const-string/jumbo v26, "Exiting demo mode"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->resetLastState()V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->resetLastState()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mRegisterListeners:Ljava/lang/Runnable;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoMode:Z

    move/from16 v25, v0

    if-eqz v25, :cond_1

    const-string/jumbo v25, "network"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1

    const-string/jumbo v25, "airplane"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string/jumbo v25, "show"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    move-object/from16 v25, v0

    new-instance v26, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const v28, 0x7f0805df

    const v29, 0x7f120aa3

    move-object/from16 v0, v26

    move/from16 v1, v18

    move/from16 v2, v28

    move/from16 v3, v29

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;-><init>(ZIILandroid/content/Context;)V

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V

    :cond_6
    const-string/jumbo v25, "fully"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    new-instance v8, Ljava/util/BitSet;

    invoke-direct {v8}, Ljava/util/BitSet;-><init>()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    move/from16 v25, v0

    if-eqz v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController;->mTransportType:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/util/BitSet;->set(I)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v8}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    const/4 v12, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoInetCondition:Z

    move/from16 v25, v0

    if-eqz v25, :cond_8

    iget v0, v9, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTransportType:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/util/BitSet;->set(I)V

    :cond_8
    invoke-virtual {v9, v8, v8}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_9
    const-string/jumbo v25, "wifi"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_b

    const-string/jumbo v25, "show"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    const-string/jumbo v25, "level"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-object/from16 v26, v0

    const-string/jumbo v25, "null"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    const/16 v25, -0x1

    :goto_3
    move/from16 v0, v25

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    move/from16 v25, v0

    if-ltz v25, :cond_d

    const/16 v25, 0x1

    :goto_4
    move/from16 v0, v25

    move-object/from16 v1, v26

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    :cond_a
    const-string/jumbo v25, "activity"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    const-string/jumbo v25, "inout"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    const/16 v26, 0x3

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDemoWifiState:Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    move-object/from16 v25, v0

    move/from16 v0, v18

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->enabled:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->notifyListeners()V

    :cond_b
    const-string/jumbo v25, "sims"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_13

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    const/16 v26, 0x1

    const/16 v27, 0x8

    invoke-static/range {v25 .. v27}, Landroid/util/MathUtils;->constrain(III)I

    move-result v17

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v25

    move/from16 v0, v17

    move/from16 v1, v25

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCountMax()I

    move-result v22

    move/from16 v12, v22

    :goto_6
    add-int v25, v22, v17

    move/from16 v0, v25

    if-ge v12, v0, :cond_12

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v12}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalController(II)Landroid/telephony/SubscriptionInfo;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_c
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    sget v27, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v25

    goto/16 :goto_3

    :cond_d
    const/16 v25, 0x0

    goto/16 :goto_4

    :cond_e
    const-string/jumbo v25, "in"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto/16 :goto_5

    :cond_f
    const-string/jumbo v25, "out"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    const/16 v26, 0x2

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto/16 :goto_5

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->setActivity(I)V

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSubs(Ljava/util/List;)V

    :cond_13
    const-string/jumbo v25, "nosim"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_14

    const-string/jumbo v25, "show"

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNoSims(Z)V

    :cond_14
    const-string/jumbo v25, "mobile"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1b

    const-string/jumbo v25, "show"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    const-string/jumbo v25, "datatype"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v25, "slot"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_15

    const/16 v20, 0x0

    :goto_7
    const/16 v25, 0x0

    const/16 v26, 0x8

    move/from16 v0, v20

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v20

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v25

    move/from16 v0, v25

    move/from16 v1, v20

    if-gt v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v15}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalController(II)Landroid/telephony/SubscriptionInfo;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_15
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    goto :goto_7

    :cond_16
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSubs(Ljava/util/List;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v10, :cond_1c

    const/16 v26, 0x1

    :goto_9
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v10, :cond_1d

    const/16 v26, 0x1

    :goto_a
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isDefault:Z

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    if-eqz v10, :cond_1e

    const/16 v26, 0x1

    :goto_b
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    if-eqz v10, :cond_18

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string/jumbo v26, "1x"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1f

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->ONE_X:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    :goto_c
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    :cond_18
    const-string/jumbo v25, "roam"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_19

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string/jumbo v26, "show"

    const-string/jumbo v27, "roam"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->roaming:Z

    :cond_19
    const-string/jumbo v25, "level"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1a

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const-string/jumbo v26, "null"

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_29

    const/16 v26, -0x1

    :goto_d
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v26

    check-cast v26, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->level:I

    move/from16 v26, v0

    if-ltz v26, :cond_2a

    const/16 v26, 0x1

    :goto_e
    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->connected:Z

    :cond_1a
    const-string/jumbo v25, "activity"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2e

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    const-string/jumbo v25, "inout"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2b

    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    :goto_f
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    move/from16 v0, v18

    move-object/from16 v1, v25

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->enabled:Z

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V

    :cond_1b
    const-string/jumbo v25, "carriernetworkchange"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string/jumbo v25, "show"

    move-object/from16 v0, v25

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    const/4 v12, 0x0

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setCarrierNetworkChangeMode(Z)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_10

    :cond_1c
    const/16 v26, 0x0

    goto/16 :goto_9

    :cond_1d
    const/16 v26, 0x0

    goto/16 :goto_a

    :cond_1e
    const/16 v26, 0x0

    goto/16 :goto_b

    :cond_1f
    const-string/jumbo v26, "3g"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_20

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->THREE_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_c

    :cond_20
    const-string/jumbo v26, "4g"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_21

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_c

    :cond_21
    const-string/jumbo v26, "4g+"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_22

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FOUR_G_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_c

    :cond_22
    const-string/jumbo v26, "e"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_23

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->E:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_c

    :cond_23
    const-string/jumbo v26, "g"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_24

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->G:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_c

    :cond_24
    const-string/jumbo v26, "h"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_25

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->H:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_c

    :cond_25
    const-string/jumbo v26, "lte"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_26

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_c

    :cond_26
    const-string/jumbo v26, "lte+"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_27

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->LTE_PLUS:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_c

    :cond_27
    const-string/jumbo v26, "dis"

    move-object/from16 v0, v26

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_28

    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->DATA_DISABLED:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_c

    :cond_28
    sget-object v26, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto/16 :goto_c

    :cond_29
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    sget v27, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->min(II)I

    move-result v26

    goto/16 :goto_d

    :cond_2a
    const/16 v26, 0x0

    goto/16 :goto_e

    :cond_2b
    const-string/jumbo v25, "in"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2c

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto/16 :goto_f

    :cond_2c
    const-string/jumbo v25, "out"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2d

    const/16 v25, 0x2

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto/16 :goto_f

    :cond_2d
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto/16 :goto_f

    :cond_2e
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    goto/16 :goto_f
.end method

.method doUpdateMobileControllers()V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    sget-boolean v6, Lcom/android/systemui/Rune;->STATBAR_CHECK_SIM_PIN_STATE_FOR_DISPLAYING_RSSI:Z

    if-eqz v6, :cond_1

    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLockedSIM2:Z

    if-eqz v5, :cond_1

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->isSimCardInserted(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    invoke-static {v8}, Lcom/android/systemui/statusbar/DeviceState;->isSimCardInserted(I)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isSlotLockedBySimPin(I)Z

    move-result v6

    if-eqz v6, :cond_0

    if-ne v3, v8, :cond_0

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLockedSIM2:Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLockedSIM2:Z

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLockedSIM2:Z

    if-eqz v6, :cond_3

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDummySubscriptionInfoForNoSimState()Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v4

    const-string/jumbo v6, "NetworkController"

    const-string/jumbo v7, "doUpdateMobileControllers : subscriptions == null "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasCorrectMobileControllers(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSims()V

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-le v6, v8, :cond_4

    const/4 v1, 0x0

    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateSlotID()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    const-string/jumbo v6, "NetworkController"

    const-string/jumbo v7, "doUpdateMobileControllers for inserted SIMs."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    return-void

    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setCurrentSubscriptions(Ljava/util/List;)V

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v6, :cond_7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNumberOfSim()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setPreferredSimSlotIcon()V

    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSims()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    return-void

    :cond_7
    sget-boolean v6, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_NO_SIM_INFO_AT_PLMN:Z

    if-eqz v6, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNumberOfSim()V

    goto :goto_4
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v2, "NetworkController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, " mStatusBarIconOpBranding ="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v2, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "  - telephony ------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "  hasVoiceCallingFeature()="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "  - connectivity ------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "  mConnectedTransports="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConnectedTransports:Ljava/util/BitSet;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v2, "  mValidatedTransports="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mValidatedTransports:Ljava/util/BitSet;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v2, "  mInetCondition="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mInetCondition:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "  mAirplaneMode="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "  mLocale="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v2, "  mLastServiceState="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string/jumbo v2, "  mIsEmergency="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsEmergency:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, "  mEmergencySource="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->emergencyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v2, "  isMultiSim = "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "  multiSimCarrierText = "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, " | "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v2, "  mVoWifiConnected="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoWifiConnected:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v2, ""

    sget-object v3, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "  mIsSimAndOperatorMatched="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsSimAndOperatorMatched:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->dump(Ljava/io/PrintWriter;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEthernetSignalController:Lcom/android/systemui/statusbar/policy/EthernetSignalController;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/policy/EthernetSignalController;->dump(Ljava/io/PrintWriter;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAccessPointController()Lcom/android/systemui/statusbar/policy/NetworkController$AccessPointController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui/statusbar/policy/AccessPointControllerImpl;

    return-object v0
.end method

.method public getConnectedWifiInetCondition()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->inetCondition:I

    return v0
.end method

.method public getConnectedWifiLevel()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->level:I

    return v0
.end method

.method public getDataSaverController()Lcom/android/systemui/statusbar/policy/DataSaverController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataSaverController:Lcom/android/systemui/statusbar/policy/DataSaverController;

    return-object v0
.end method

.method getDummySubscriptionInfoForNoSimState()Landroid/telephony/SubscriptionInfo;
    .locals 15

    const/4 v7, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ril.MainStack"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v4, v0, :cond_0

    const-string/jumbo v0, "0"

    const-string/jumbo v1, "persist.radio.multisim.stackid"

    const-string/jumbo v2, "1"

    invoke-static {v1, v4, v2}, Lcom/android/systemui/statusbar/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v14

    :goto_0
    if-eqz v14, :cond_2

    new-instance v0, Landroid/telephony/SubscriptionInfo;

    aget v1, v14, v3

    const-string/jumbo v2, "0"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v8, ""

    const-string/jumbo v13, ""

    move v6, v3

    move v9, v3

    move v11, v3

    move v12, v3

    invoke-direct/range {v0 .. v13}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;)V

    return-object v0

    :cond_1
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v14

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/telephony/SubscriptionInfo;

    const-string/jumbo v2, "0"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v8, ""

    const-string/jumbo v13, ""

    const v1, 0x7fffffff

    move v6, v3

    move v9, v3

    move v11, v3

    move v12, v3

    invoke-direct/range {v0 .. v13}, Landroid/telephony/SubscriptionInfo;-><init>(ILjava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;IILjava/lang/String;ILandroid/graphics/Bitmap;IILjava/lang/String;)V

    return-object v0
.end method

.method public getMobileDataController()Lcom/android/settingslib/net/DataUsageController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    return-object v0
.end method

.method public getMobileDataNetworkName()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataController()Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->networkNameData:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method public getWifiConnectedState()Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    return v1
.end method

.method handleConfigurationChanged()V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setConfiguration(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    return-void
.end method

.method hasCorrectMobileControllers(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    return v4

    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_1

    return v4

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method public hasEmergencyCryptKeeperText()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasMobileDataFeature()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    return v0
.end method

.method public hasVoiceCallingFeature()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAnotherSlotCallingState(I)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallingState:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallingState:[Z

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isEmergencyOnly()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    iput v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v3

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;->getDefaultVoiceSubId()I

    move-result v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    if-nez v3, :cond_3

    iget-object v3, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    add-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Found emergency "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_6

    add-int/lit16 v3, v2, 0xc8

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Getting emergency from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    return v3

    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v6, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x190

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Getting assumed emergency from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->isEmergency:Z

    return v3

    :cond_8
    sget-boolean v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->DEBUG:Z

    if-eqz v3, :cond_9

    const-string/jumbo v3, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Cannot find controller for voice sub: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    add-int/lit16 v3, v2, 0x12c

    iput v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mEmergencySource:I

    return v6
.end method

.method public isRadioOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_policy_NetworkControllerImpl_51441(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->handleSetUserSetupComplete(Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07044a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultTextSize:F

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v1, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsRtoL:Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;->readConfig(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$8;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsRtoL:Z

    goto :goto_0
.end method

.method public onEmergencyModeChanged()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->onEmergencyModeChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x0

    sget-boolean v4, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->CHATTY:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_INDIA_OP_CONCEPT:Z

    if-eqz v4, :cond_1

    :cond_0
    const-string/jumbo v4, "NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive: intent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->handleBroadcast(Landroid/content/Intent;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateConnectivity()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    const-string/jumbo v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->refreshLocale()V

    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setPreferredSimSlotIcon()V

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v4, :cond_4

    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setPreferredSimSlotIcon()V

    goto :goto_0

    :cond_8
    const-string/jumbo v4, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_9
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v4, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNumberOfSim()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setPreferredSimSlotIcon()V

    :goto_3
    const-string/jumbo v4, ""

    sget-object v5, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_OPERATOR_LOGO_ICON:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isSIMandOperatorMatched()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsSimAndOperatorMatched:Z

    :cond_a
    const/4 v2, 0x0

    :goto_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_b
    sget-boolean v4, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_NO_SIM_INFO_AT_PLMN:Z

    if-eqz v4, :cond_c

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNumberOfSim()V

    :cond_c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    goto :goto_3

    :cond_d
    const-string/jumbo v4, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLastServiceState:Landroid/telephony/ServiceState;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->recalculateEmergency()V

    goto/16 :goto_0

    :cond_e
    const-string/jumbo v4, "com.samsung.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string/jumbo v4, "com.samsung.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    :cond_f
    const/4 v2, 0x0

    :goto_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_10
    const-string/jumbo v4, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v4, :cond_12

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNumberOfSim()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setPreferredSimSlotIcon()V

    :cond_11
    :goto_6
    const/4 v2, 0x0

    :goto_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_12
    sget-boolean v4, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_NO_SIM_INFO_AT_PLMN:Z

    if-eqz v4, :cond_11

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNumberOfSim()V

    goto :goto_6

    :cond_13
    const-string/jumbo v4, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v2, 0x0

    :goto_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_14

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_14
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setPreferredSimSlotIcon()V

    goto/16 :goto_0

    :cond_15
    const-string/jumbo v4, "com.samsung.settings.SIMCARD_MGT"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->setPreferredSimSlotIcon()V

    goto/16 :goto_0

    :cond_16
    const-string/jumbo v4, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/4 v2, 0x0

    :goto_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_17
    const-string/jumbo v4, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/4 v2, 0x0

    :goto_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_18
    const-string/jumbo v4, "com.sec.android.app.UPDATE_NETWORK_EMERGENCY_ONLY"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v2, 0x0

    :goto_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_19
    const-string/jumbo v4, "com.samsung.android.softsim.ServiceStatus"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v2, 0x0

    :goto_c
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1a
    const-string/jumbo v4, "subscription"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_1b

    const/4 v4, -0x2

    if-eq v3, v4, :cond_1b

    const/4 v4, -0x3

    if-ne v3, v4, :cond_1d

    :cond_1b
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_1c

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->handleBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_1c
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isMultiSim:Z

    if-nez v4, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateMobileControllers()V

    goto/16 :goto_0

    :cond_1d
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->handleBroadcast(Landroid/content/Intent;)V

    sget-boolean v4, Lcom/android/systemui/Rune;->STATBAR_DISPLAY_NETWORK_BOOSTER_ICON_AS_SIMPLE_TYPE:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_4

    const/4 v2, 0x0

    :goto_d
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    if-eqz v4, :cond_1e

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->notifyListeners()V

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method

.method recalculateEmergency()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsEmergency:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsEmergency:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setEmergencyCallsOnly(Z)V

    return-void
.end method

.method public refreshMPTCPIndicator()V
    .locals 14

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string/jumbo v4, ""

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataController()Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataController()Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v3, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataConnected:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataController()Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityOut:Z

    if-eqz v10, :cond_1

    move v10, v11

    :goto_0
    shl-int/lit8 v13, v10, 0x1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataController()Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->activityIn:Z

    if-eqz v10, :cond_2

    move v10, v11

    :goto_1
    or-int v2, v13, v10

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->getDataController()Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-object v10, v10, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->iconGroup:Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;

    iget-object v4, v10, Lcom/android/systemui/statusbar/policy/SignalController$IconGroup;->mName:Ljava/lang/String;

    :cond_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v9, v10, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->connected:Z

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityOut:Z

    if-eqz v10, :cond_3

    move v10, v11

    :goto_2
    shl-int/lit8 v13, v10, 0x1

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->activityIn:Z

    if-eqz v10, :cond_4

    move v10, v11

    :goto_3
    or-int v8, v13, v10

    if-nez v3, :cond_5

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v10, v12, v7, v5, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setMPTCPIndicators(ZIII)V

    :goto_4
    return-void

    :cond_1
    move v10, v12

    goto :goto_0

    :cond_2
    move v10, v12

    goto :goto_1

    :cond_3
    move v10, v12

    goto :goto_2

    :cond_4
    move v10, v12

    goto :goto_3

    :cond_5
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v6

    sget-boolean v10, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_TUR_MPTCP:Z

    if-eqz v10, :cond_c

    if-eqz v6, :cond_7

    const-string/jumbo v10, "28603"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    const v7, 0x7f080650

    if-eqz v9, :cond_8

    const v5, 0x7f080651

    :goto_5
    if-eqz v3, :cond_9

    if-eqz v9, :cond_9

    or-int v0, v2, v8

    :cond_6
    :goto_6
    packed-switch v0, :pswitch_data_0

    const v1, 0x7f080655

    :cond_7
    :goto_7
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMPTCPSettingEnabled:Z

    invoke-virtual {v10, v11, v7, v5, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setMPTCPIndicators(ZIII)V

    goto :goto_4

    :cond_8
    const v5, 0x7f080652

    goto :goto_5

    :cond_9
    if-eqz v3, :cond_6

    move v0, v2

    goto :goto_6

    :pswitch_0
    const v1, 0x7f080653

    goto :goto_7

    :pswitch_1
    const v1, 0x7f080656

    goto :goto_7

    :pswitch_2
    const v1, 0x7f080654

    goto :goto_7

    :cond_a
    const-string/jumbo v10, "28602"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v3, :cond_b

    if-eqz v9, :cond_b

    const v7, 0x7f080657

    or-int v0, v2, v8

    packed-switch v0, :pswitch_data_1

    const v1, 0x7f08065a

    goto :goto_7

    :pswitch_3
    const v1, 0x7f080658

    goto :goto_7

    :pswitch_4
    const v1, 0x7f08065b

    goto :goto_7

    :pswitch_5
    const v1, 0x7f080659

    goto :goto_7

    :cond_b
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v10, v12, v7, v5, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setMPTCPIndicators(ZIII)V

    return-void

    :cond_c
    sget-boolean v10, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_THL_MPTCP:Z

    if-eqz v10, :cond_f

    if-eqz v6, :cond_7

    const-string/jumbo v10, "52003"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-eqz v3, :cond_e

    const-string/jumbo v10, "4G"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string/jumbo v10, "3G"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string/jumbo v10, "H"

    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    :cond_d
    if-eqz v9, :cond_e

    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;

    iget v10, v10, Lcom/android/systemui/statusbar/policy/WifiSignalController$WifiState;->inetCondition:I

    if-ne v11, v10, :cond_e

    const v7, 0x7f08065f

    const v5, 0x7f080660

    or-int v0, v2, v8

    packed-switch v0, :pswitch_data_2

    const v1, 0x7f080664

    goto/16 :goto_7

    :pswitch_6
    const v1, 0x7f080662

    goto/16 :goto_7

    :pswitch_7
    const v1, 0x7f080665

    goto/16 :goto_7

    :pswitch_8
    const v1, 0x7f080663

    goto/16 :goto_7

    :cond_e
    iget-object v10, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    invoke-virtual {v10, v12, v7, v5, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setMPTCPIndicators(ZIII)V

    return-void

    :cond_f
    const v7, 0x7f08065e

    if-eqz v9, :cond_11

    const v5, 0x7f08065c

    :goto_8
    if-eqz v3, :cond_12

    if-eqz v9, :cond_12

    or-int v0, v2, v8

    :cond_10
    :goto_9
    packed-switch v0, :pswitch_data_3

    const v1, 0x7f0806e0

    goto/16 :goto_7

    :cond_11
    const v5, 0x7f08065d

    goto :goto_8

    :cond_12
    if-eqz v3, :cond_10

    move v0, v2

    goto :goto_9

    :pswitch_9
    const v1, 0x7f0806d1

    goto/16 :goto_7

    :pswitch_a
    const v1, 0x7f0806e8

    goto/16 :goto_7

    :pswitch_b
    const v1, 0x7f0806da

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;Z)V

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void
.end method

.method public removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setListening(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;Z)V

    return-void
.end method

.method public setCallState(IZ)V
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallingState:[Z

    aput-boolean p2, v0, p1

    :cond_0
    return-void
.end method

.method public setCarrierLabel(Landroid/widget/TextView;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierLabel:Landroid/widget/TextView;

    const-string/jumbo v0, "ZVV"

    sget-object v1, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierLabel:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierLabel:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierLabel:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    :cond_0
    return-void
.end method

.method public setCarrierLabelSlot1(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierLabelSlot1:Landroid/widget/TextView;

    return-void
.end method

.method public setCarrierLabelSlot2(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCarrierLabelSlot2:Landroid/widget/TextView;

    return-void
.end method

.method setCurrentSubscriptions(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v17, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v17

    :try_start_0
    new-instance v3, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$9;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCurrentSubscriptions:Ljava/util/List;

    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v13, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v12, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v15, :cond_4

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move/from16 v0, v16

    invoke-virtual {v4, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->remove(I)V

    :cond_1
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mConfig:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/SubscriptionInfo;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mSubDefaults:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v11

    move-object/from16 v8, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/systemui/statusbar/policy/MobileSignalController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$Config;ZLandroid/telephony/TelephonyManager;Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Landroid/telephony/SubscriptionInfo;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mUserSetup:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setUserSetupComplete(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    move/from16 v0, v16

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->registerListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v17

    throw v3

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mListening:Z

    if-eqz v3, :cond_6

    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v12}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v13, v3, :cond_6

    invoke-virtual {v12, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mDefaultSignalController:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    :cond_5
    invoke-virtual {v12, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->unregisterListener()V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setSubs(Ljava/util/List;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->notifyAllListeners()V

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->pushConnectivityToSignals()V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateAirplaneMode(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v17

    return-void
.end method

.method public setStatusBarCarrierLabel(Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mStatusBarCarrierLabel:Landroid/widget/TextView;

    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public updateCarrierText(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v3, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCarrierText : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasVoiceCallingFeature()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->hasMobileDataFeature()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "ZVV"

    sget-object v4, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo p1, ""

    :cond_1
    sput-object p1, Lcom/android/keyguard/CarrierText;->sPlmnOfNetworkControllerImpl:Ljava/lang/String;

    sget-boolean v3, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_NO_SIM_INFO_AT_PLMN:Z

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->numberOfSim:I

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f120581

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " | "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_3
    move-object v2, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f12010c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean v3, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_PLMN_TMOWFC:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/Rune;->isTmoWfcServiceEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v3

    sget-object v4, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v3, v4, :cond_4

    sget-object p1, Lcom/android/systemui/Rune;->QPANEL_PLMN_INFO_BRANDING_TMOWFC:Ljava/lang/String;

    const-string/jumbo v3, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCarrierText when WFC is enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoWifiConnected:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVoWifiInfo()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object p1, v2

    const-string/jumbo v3, "NetworkController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateCarrierText : WFC PLMN by RIL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public updateCarrierText(Ljava/lang/String;I)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v5, "NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCarrierText : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", slotId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " numberOfSim = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->numberOfSim:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " airplane = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v5, :cond_a

    const-string/jumbo v5, "ZVV"

    sget-object v6, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo p1, ""

    :cond_0
    :goto_0
    const/4 v3, 0x1

    :cond_1
    :goto_1
    const-string/jumbo v5, "CTC"

    sget-object v6, Lcom/android/systemui/Rune;->QPANEL_PLMN_INFO_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    if-eqz v3, :cond_3

    sput-object p1, Lcom/android/keyguard/CarrierText;->sPlmnOfNetworkControllerImpl:Ljava/lang/String;

    :cond_3
    sget-boolean v5, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_NO_SIM_INFO_AT_PLMN:Z

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->numberOfSim:I

    if-nez v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v7, 0x7f120581

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4
    if-eqz v3, :cond_5

    const-string/jumbo v5, "NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCarrierText final  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "ZVV"

    sget-object v6, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    if-le v0, v9, :cond_15

    if-nez p2, :cond_14

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v10, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v6, 0x7f12010c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean v5, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_PLMN_TMOWFC:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/Rune;->isTmoWfcServiceEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper;->getRegistrationState(Landroid/content/ContentResolver;)Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    move-result-object v5

    sget-object v6, Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;->REGISTERED:Lcom/samsung/tmowfc/wfcutils/WfcDbHelper$RegistrationStateContract$State;

    if-ne v5, v6, :cond_7

    sget-object p1, Lcom/android/systemui/Rune;->QPANEL_PLMN_INFO_BRANDING_TMOWFC:Ljava/lang/String;

    const-string/jumbo v5, "NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCarrierText when WFC is enabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoWifiConnected:Z

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v1, v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->isVoWifiInfo()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getSlotId()I

    move-result v6

    aget-object p1, v5, v6

    const-string/jumbo v5, "NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCarrierText : WFC PLMN by RIL = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/Rune;->supportDualIms()Z

    move-result v5

    if-eqz v5, :cond_8

    add-int/lit8 v4, v4, 0x1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    invoke-static {}, Lcom/android/systemui/Rune;->supportDualIms()Z

    move-result v5

    if-eqz v5, :cond_0

    if-ne v4, v10, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v5, "NetworkController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCarrierText : DUAL WFC PLMN by RIL = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->numberOfSim:I

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mLockedSIM2:Z

    if-eqz v5, :cond_c

    :cond_b
    if-nez p2, :cond_1

    const/4 v3, 0x1

    const-string/jumbo v5, "CU"

    sget-object v6, Lcom/android/systemui/Rune;->QPANEL_PLMN_INFO_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo p1, ""

    goto/16 :goto_1

    :cond_c
    iget v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->numberOfSim:I

    if-ne v5, v9, :cond_10

    invoke-static {v8}, Lcom/android/systemui/statusbar/DeviceState;->isSimCardInserted(I)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v5

    if-nez v5, :cond_e

    :cond_d
    if-ne p2, v9, :cond_e

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_e
    invoke-static {v9}, Lcom/android/systemui/statusbar/DeviceState;->isSimCardInserted(I)Z

    move-result v5

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5, v9}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v5

    if-nez v5, :cond_1

    :cond_f
    if-nez p2, :cond_1

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_10
    const/4 v3, 0x1

    const-string/jumbo v5, "ZVV"

    sget-object v6, Lcom/android/systemui/Rune;->STATBAR_ICON_BRANDING:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    aget-object p1, v5, v9

    goto/16 :goto_1

    :cond_11
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5, v9}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v5

    if-nez v5, :cond_12

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    aget-object p1, v5, v8

    goto/16 :goto_1

    :cond_12
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsRtoL:Z

    if-eqz v5, :cond_13

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u200e"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\u200e"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_13
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " | "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->multiSimCarrierText:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_14
    if-ne p2, v9, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_15
    if-ne v0, v9, :cond_16

    invoke-static {p2}, Lcom/android/systemui/statusbar/DeviceState;->isSimCardInserted(I)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {v5, p2}, Lcom/android/systemui/statusbar/DeviceState;->getSimSettingState(Landroid/content/Context;I)I

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_16
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    :cond_17
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method

.method public updateImsConnectedState()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getImsConnectedState()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mImsConnected:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mImsConnected:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->updateImsConnectionState(Z)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mImsConnected:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mWifiSignalController:Lcom/android/systemui/statusbar/policy/WifiSignalController;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mImsConnected:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/WifiSignalController;->updateImsConnectionState(Z)V

    return-void
.end method

.method public updateLimitedState()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->updateLimitedState()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateNoSims()V
    .locals 3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHasNoSims:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setNoSims(Z)V

    :cond_0
    sget-boolean v1, Lcom/android/systemui/Rune;->STATBAR_SUPPORT_NO_SIM_NOTIFICATION:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->updateNoSIMNotification()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getState()Lcom/android/systemui/statusbar/policy/SignalController$State;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->dataSim:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->refreshNwBoosterIndicator(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateOperatorLogoIconVisibility(Z)V
    .locals 4

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconVisible:Z

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsSimAndOperatorMatched:Z

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconVisible:Z

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconVisible:Z

    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "NetworkController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateOperatorLogoIconVisibility - mOperatorLogoIconVisible = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mIsSimAndOperatorMatched = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsSimAndOperatorMatched:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mCallbackHandler:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconVisible:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->setOperatorLogoIconVisible(Z)V

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsSimAndOperatorMatched:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->isSIMandOperatorMatched()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsSimAndOperatorMatched:Z

    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mIsSimAndOperatorMatched:Z

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconVisible:Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mOperatorLogoIconVisible:Z

    goto :goto_0
.end method

.method public updateStatusBarCarrierText(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStatusBarCarrierLabelText : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateVoWifiConnectedState()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mMobileSignalControllers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->getVoWifiConnectedState()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoWifiConnected:Z

    sput-boolean v4, Lcom/android/keyguard/CarrierText;->mVoWifiConnected:Z

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->mVoWifiConnected:Z

    sput-boolean v3, Lcom/android/keyguard/CarrierText;->mVoWifiConnected:Z

    return-void
.end method
