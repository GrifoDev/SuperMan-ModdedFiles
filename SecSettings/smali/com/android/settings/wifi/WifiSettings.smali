.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;
.implements Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$1;,
        Lcom/android/settings/wifi/WifiSettings$2;,
        Lcom/android/settings/wifi/WifiSettings$3;,
        Lcom/android/settings/wifi/WifiSettings$4;,
        Lcom/android/settings/wifi/WifiSettings$5;,
        Lcom/android/settings/wifi/WifiSettings$6;,
        Lcom/android/settings/wifi/WifiSettings$7;,
        Lcom/android/settings/wifi/WifiSettings$8;,
        Lcom/android/settings/wifi/WifiSettings$9;,
        Lcom/android/settings/wifi/WifiSettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field public static goToWebPageHTTPResponse:I

.field public static goToWebPageLinkClicked:Z

.field public static goToWebPageLinkViewed:Z

.field private static mWifiSettingsForeground:Z

.field public static mWpsInProgress:Z


# instance fields
.field private contactUsView:Landroid/widget/TextView;

.field private isWifiQr:Z

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAccessPointsPreferenceGroup:Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

.field private mAddPreference:Landroid/preference/Preference;

.field private mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

.field private mBgThread:Landroid/os/HandlerThread;

.field private mBixbyCountDownTimer:Landroid/os/CountDownTimer;

.field private final mCheckHttpResponseHandler:Landroid/os/Handler;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectedAccessPointPreferenceGroup:Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContainer:Landroid/view/ViewGroup;

.field private mContext:Landroid/content/Context;

.field private mCricketManagerHeader:Landroid/view/View;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field protected mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

.field private mDialogMode:I

.field private mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmLastStateID:Ljava/lang/String;

.field private mEnableNextOnConnection:Z

.field private mFinishIfConnected:Z

.field private mFinishIfWifiDisabled:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mGateway:Ljava/lang/String;

.field private mGoToSettingsFromQuickPanelFirstTime:Z

.field private mHideActionBarMenus:Z

.field private mHideContextMenus:Z

.field private mHideHeaderCategory:Z

.field private mInManageNetwork:Z

.field private mInOffloadDialog:Z

.field private mInPickerActivity:Z

.field private mInPickerDialog:Z

.field private mIsRestricted:Z

.field private mIsSprotectDownloadble:Z

.field private mIsSupportSSecure:Z

.field private mIsSupportedContactUs:Z

.field private mIsSupportedCricketManager:Z

.field private mIsSupportedHelpHub:Z

.field private mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

.field private mListAnimationView:Landroid/view/View;

.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOpBranding:Ljava/lang/String;

.field private mOpenSecurity:I

.field private mOpenSsid:Ljava/lang/String;

.field private mPassPointPreferenceGroup:Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

.field private mPasspointConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mPasspointInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/hotspot2/PasspointConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private mPreEmptyView:Landroid/widget/TextView;

.field private mPreWifiState:I

.field private mProgressHeader:Lcom/android/settings/widget/SwitchBar;

.field private mQrConfig:Landroid/net/wifi/WifiConfiguration;

.field private mSAScreenId:I

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mScrollTimer:J

.field private mSecureWifiDivider:Landroid/widget/ImageView;

.field private mSecureWifiObserver:Landroid/database/ContentObserver;

.field private mSecureWifiSwitch:Landroid/widget/Switch;

.field private mSecureWifiSwitchView:Landroid/widget/LinearLayout;

.field private mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mSelectedPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field private mSelectedPasspointFqdn:Ljava/lang/String;

.field private mSelectedpasspointName:Ljava/lang/String;

.field private mShowNotInRagededAp:Z

.field private mShowRetryDialog:Z

.field private mTextViewSecureWifiStatus:Landroid/widget/TextView;

.field private mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mUserSelectedAP:Ljava/lang/String;

.field private mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

.field private mWifiAdvanced:Landroid/widget/TextView;

.field private mWifiDirect:Landroid/widget/TextView;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiEnablerListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNfcDialogSavedState:Landroid/os/Bundle;

.field private mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

.field private mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

.field private mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

.field private mWillRespondToEm:Z

.field protected mWpsDialog:Lcom/android/settings/wifi/WpsDialog;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/settings/wifi/WifiSettings;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mBixbyCountDownTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/wifi/WifiSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSprotectDownloadble:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/settings/wifi/WifiSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/wifi/WifiSettings;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mBixbyCountDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mEmLastStateID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/wifi/WifiSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWillRespondToEm:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isMobileHotstpotEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->isSecureWifiDisabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->forceScanByBixby()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->responseP2pToEm()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->saveConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiSettings;->setSecureWifiState(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->showDialogForModify()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->startContactUsActivity()V

    return-void
.end method

.method static synthetic -wrap17(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->startScanningSettings()V

    return-void
.end method

.method static synthetic -wrap18(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->startWifiConfigSettings()V

    return-void
.end method

.method static synthetic -wrap19(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->startWifiP2pSettings()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->isSecureWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap20(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateSecureWifiLayout()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->isSecureWifiInitializing(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->isWifiEulaAgreed(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Lcom/android/settings/wifi/WifiSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isWifiSharingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->createLongPressActionPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->findAccessPoint(Landroid/net/wifi/WifiConfiguration;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->disable()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->disconnect()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    const-string/jumbo v0, "WifiSettings"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    sput-boolean v2, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    sput-boolean v2, Lcom/android/settings/wifi/WifiSettings;->goToWebPageLinkViewed:Z

    sput-boolean v2, Lcom/android/settings/wifi/WifiSettings;->goToWebPageLinkClicked:Z

    sput v2, Lcom/android/settings/wifi/WifiSettings;->goToWebPageHTTPResponse:I

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$2;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$6;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettings$6;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string/jumbo v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportSSecure:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "downloadable_sprotect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSprotectDownloadble:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointInfoMap:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfConnected:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfWifiDisabled:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mHideHeaderCategory:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedHelpHub:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedCricketManager:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mHideContextMenus:Z

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mGateway:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    const v0, 0x7f12176b

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPreWifiState:I

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWillRespondToEm:Z

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mBixbyCountDownTimer:Landroid/os/CountDownTimer;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfig:Landroid/net/wifi/WifiConfiguration;

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->isWifiQr:Z

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$5;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnablerListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$7;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCheckHttpResponseHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$8;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wifi/WifiSettings$9;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceGroup:Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    const v3, 0x7f1220a7

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/wifi/WifiSettings;->addDeviceCategory(Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->createLongPressActionPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    invoke-virtual {v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v1, v4}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->insert(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;I)Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getPreference(I)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getPreference(I)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getPreference(I)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->removeAt(I)V

    :cond_0
    return-void
.end method

.method private addDeviceCategory(Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;II)V
    .locals 3

    const-string/jumbo v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addDeviceCategory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v0

    invoke-virtual {v0, p3, p1}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->addPreferenceGroup(ILcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;)Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->setAcessPointListGroup(Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;)V

    return-void
.end method

.method private addMessagePreference(I)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addMessagePreference id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const v1, 0x7f122134

    if-eq p1, v1, :cond_1

    const v1, 0x7f12213d

    if-ne p1, v1, :cond_2

    :cond_1
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->setVisiblePreEmptyView(Z)V

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->setVisibleContactUs(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    return-void
.end method

.method static canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-nez p1, :cond_0

    return v11

    :cond_0
    const-string/jumbo v9, "device_policy"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string/jumbo v9, "android.software.device_admin"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v3, :cond_1

    return v10

    :cond_1
    const/4 v5, 0x0

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v2

    :try_start_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    iget v9, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v9, :cond_3

    const/4 v5, 0x1

    :cond_2
    :goto_0
    if-nez v5, :cond_4

    return v11

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "wifi_device_owner_configs_lockdown"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v6, 0x1

    :goto_1
    xor-int/lit8 v9, v6, 0x1

    return v9

    :cond_5
    const/4 v6, 0x0

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private changeNextButtonState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButtonImage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->setEnableNextButtonImage(Z)V

    goto :goto_0
.end method

.method private checkWifiConnectivity()Z
    .locals 3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private configureConnectedAccessPointPreferenceCategory(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->removeAll()V

    :cond_0
    :goto_0
    return v4

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getAvailableAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->removeAll()V

    goto :goto_0

    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isConnected()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceGroup:Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    return v4

    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    iget v3, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSecurity:I

    if-ne v2, v3, :cond_4

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->createLongPressActionPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->onAccessPointPreferenceClick(Landroid/preference/Preference;)Z

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mGoToSettingsFromQuickPanelFirstTime:Z

    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getConnectedAPCount()I

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V

    return v6

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    if-nez v2, :cond_6

    return v4

    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->getPreference(I)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    const-string/jumbo v2, "WifiSettings"

    const-string/jumbo v3, "remove and add connected accesspointpreference"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V

    return v6

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isWeChatAp()Z

    move-result v2

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isWeChatAp()Z

    move-result v3

    if-eq v2, v3, :cond_8

    const-string/jumbo v2, "WifiSettings"

    const-string/jumbo v3, "remove and add connected wechat accesspointpreference"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference;->refresh()V

    :cond_9
    return v6
.end method

.method private createLongPressActionPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .locals 7

    new-instance v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v4, 0x0

    const v5, 0x7f080335

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZILandroid/app/Fragment;)V

    return-object v0
.end method

.method private createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v2, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    new-instance v2, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v3, Lcom/android/settings/widget/SwitchBarController;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v2, v1, v3, v4}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;)V

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private disable()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "disconnecting AP..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    :cond_0
    return-void
.end method

.method private disconnect()V
    .locals 2

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "disconnect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    return-void
.end method

.method private dismissDialog(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->isWifiQr:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v0, v1, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private findAccessPoint(Landroid/net/wifi/WifiConfiguration;)Lcom/android/settingslib/wifi/AccessPoint;
    .locals 6

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/wifi/AccessPoint;->matches(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_1
    const-string/jumbo v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "can\'t find configured AP, networkId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return-object v3
.end method

.method private forceScanByBixby()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->forceScan()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFi"

    const-string/jumbo v2, "Searching"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method

.method private forceScrollToTopOfList()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "scroll end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getViListView()Landroid/widget/SemExpandableListView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getViListView()Landroid/widget/SemExpandableListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SemExpandableListView;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "force scroll up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getViListView()Landroid/widget/SemExpandableListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/SemExpandableListView;->setSelection(I)V

    goto :goto_0
.end method

.method private forceUpdateAPs()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->forceUpdate()V

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WifiSettings force update APs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getSecureWifiState(Landroid/content/Context;)I
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSprotectDownloadble:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "covert_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "covert_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getWifiConfigFromIntent(Landroid/content/Intent;)Landroid/net/wifi/WifiConfiguration;
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/16 v11, 0x22

    const/4 v10, 0x0

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    const-string/jumbo v8, "AUTH_TYPE"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v8, "SSID"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "PASSWORD"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "HIDDEN"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    return-object v12

    :pswitch_1
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v10}, Ljava/util/BitSet;->set(I)V

    :cond_0
    :goto_0
    iput-boolean v1, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    const-string/jumbo v8, "WifiSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getWifiConfigFromIntent return config : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_2
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v10}, Ljava/util/BitSet;->set(I)V

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v8, v10}, Ljava/util/BitSet;->set(I)V

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v8, v13}, Ljava/util/BitSet;->set(I)V

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v8, 0xa

    if-eq v2, v8, :cond_1

    const/16 v8, 0x1a

    if-ne v2, v8, :cond_2

    :cond_1
    const-string/jumbo v8, "[0-9A-Fa-f]*"

    invoke-virtual {v4, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v4, v8, v10

    goto :goto_0

    :cond_2
    const/16 v8, 0x3a

    if-eq v2, v8, :cond_1

    :cond_3
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    goto :goto_0

    :pswitch_3
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v8, v13}, Ljava/util/BitSet;->set(I)V

    if-eqz v4, :cond_0

    const-string/jumbo v8, "[0-9A-Fa-f]{64}"

    invoke-virtual {v4, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->clear()V

    invoke-virtual {v3}, Ljava/lang/String;->clear()V

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->set(I)V

    if-eqz v4, :cond_0

    const-string/jumbo v8, "[0-9A-Fa-f]{64}"

    invoke-virtual {v4, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->clear()V

    invoke-virtual {v3}, Ljava/lang/String;->clear()V

    iput-object v6, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private initSecureWifiLayout(Landroid/content/Context;)V
    .locals 8

    const v1, 0x7f0a0782

    const/4 v7, 0x0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportSSecure:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0780

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiDivider:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiDivider:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0783

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTextViewSecureWifiStatus:Landroid/widget/TextView;

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.samsung.android.app.sprotect"

    const-string/jumbo v2, "com.samsung.android.app.sprotect.securewifi.SecureWifiDescriptionActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const v0, 0x10008000

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$19;

    invoke-direct {v1, p0, p1, v6}, Lcom/android/settings/wifi/WifiSettings$19;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0785

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitchView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitchView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.app.sprotect.ENABLE_SECURE_WIFI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.app.sprotect.DISABLE_SECURE_WIFI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10800000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.samsung.android.app.sprotect"

    const-string/jumbo v2, "com.samsung.android.app.sprotect.securewifi.EulaActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0784

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitch:Landroid/widget/Switch;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitch:Landroid/widget/Switch;

    new-instance v0, Lcom/android/settings/wifi/WifiSettings$20;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiSettings$20;-><init>(Lcom/android/settings/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;Landroid/content/Intent;Landroid/content/Intent;)V

    invoke-virtual {v7, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateSecureWifiLayout()V

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mLinearLayoutSecureWifi:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private isCoreanVendorAp(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    return v7

    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_4

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->isVendorSsid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SKT"

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_4

    return v6

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->isVendorSsid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "KTT"

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_4

    return v6

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->isVendorSsid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "LGU"

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_4

    return v6

    :cond_3
    const-string/jumbo v4, "UPC Wi-Free"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "ATO"

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isUsimUseable()Z

    move-result v4

    if-nez v4, :cond_4

    return v6

    :cond_4
    return v7
.end method

.method private isCricketManagerSupport()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "com.smithmicro.netwise.director.cricket"

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->isPackageExists(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method static isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isMobileHotstpotEnabled()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "WifiSettings"

    const-string/jumbo v2, "isMobileHotstpotEnabled, Wifi Manager is null so returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    return v3
.end method

.method private isSecureWifiDisabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->getSecureWifiState(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isSecureWifiEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->getSecureWifiState(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSecureWifiInitializing(Landroid/content/Context;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->getSecureWifiState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUsimUseable()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v4, "phone"

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "airplane_mode_on"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v4, "ATO"

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v4, "20601"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    const-string/jumbo v4, "WifiSettings"

    const-string/jumbo v5, "ATO_USIM this mccmnc is not allowed"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return v7

    :cond_2
    const/4 v4, 0x5

    if-eq v2, v4, :cond_3

    xor-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f122070

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return v6

    :cond_3
    const-string/jumbo v4, "SKT"

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v4, "45005"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    const-string/jumbo v4, "45000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f122072

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return v6

    :cond_4
    const-string/jumbo v4, "KTT"

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v4, "45008"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    const-string/jumbo v4, "45002"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f12203f

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return v6

    :cond_5
    return v7
.end method

.method private isVendorSsid(Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x0

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v4, v1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method private isWifiEulaAgreed(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSprotectDownloadble:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_eula_agreement"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_eula_agreement"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v2, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private isWifiSharingEnabled()Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiSettings"

    const-string/jumbo v2, "isWifiSharingEnabled, SettingNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3
.end method

.method private popOrFinishThisActivity()V
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private removeConnectedAccessPointPreference()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getConnectedAccesspointGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->removeAll()V

    :cond_0
    return-void
.end method

.method private responseP2pToEm()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mBixbyCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mBixbyCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mBixbyCountDownTimer:Landroid/os/CountDownTimer;

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isMobileHotstpotEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MobileHotspot"

    const-string/jumbo v2, "AlreadyON"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MobileHotspot"

    const-string/jumbo v2, "AlreadyON"

    const-string/jumbo v3, "no"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "WiFiDirectSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method

.method private saveConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3

    const-string/jumbo v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveConfig - networkId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method private setOffMessage()V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v9}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "wifi_scan_always_enabled"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_3

    const v6, 0x7f1220bd

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    :goto_1
    const-string/jumbo v6, "WifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "showOffNessage "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    new-instance v6, Lcom/android/settings/wifi/WifiSettings$16;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiSettings$16;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-static {v4, v2, v6}, Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z

    iget-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getContactUsView()Landroid/widget/TextView;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->contactUsView:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->contactUsView:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f12200e

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->contactUsView:Landroid/widget/TextView;

    new-instance v7, Lcom/android/settings/wifi/WifiSettings$17;

    invoke-direct {v7, p0}, Lcom/android/settings/wifi/WifiSettings$17;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-static {v6, v0, v7}, Lcom/android/settings/LinkifyUtils;->linkify(Landroid/widget/TextView;Ljava/lang/StringBuilder;Lcom/android/settings/LinkifyUtils$OnClickListener;)Z

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->contactUsView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/WifiSettings;->setTextBoldSpan(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    :cond_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v6}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v9, v7, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/WifiSettings;->setTextBoldSpan(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V

    return-void

    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_3
    const v6, 0x7f1220be

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto/16 :goto_1
.end method

.method private setPasspointPreferenceCategory()Z
    .locals 11

    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v10, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mPassPointPreferenceGroup:Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mPassPointPreferenceGroup:Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->removeAll()V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mPassPointPreferenceGroup:Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getGroupCount()I

    move-result v3

    const v5, 0x7f1220a8

    invoke-direct {p0, v2, v5, v3}, Lcom/android/settings/wifi/WifiSettings;->addDeviceCategory(Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;II)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getPasspointConfigurations()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointConfigList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointConfigList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v2, :cond_5

    if-lez v9, :cond_5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointConfigList:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v8}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Vendor Hotspot2.0 Profile"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v8}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointInfoMap:Ljava/util/HashMap;

    invoke-virtual {v2, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    invoke-virtual {v0, v7}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    const-string/jumbo v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "passpoint FriendlyName"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setPasspointTitle(Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getPasspointPreferenceGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getPasspointPreferenceGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v2

    invoke-virtual {v2, v0, v7}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->insert(Lcom/samsung/android/settingslib/wifi/AccessPointPreference;I)Z

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_1
    return v10

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-gtz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getPasspointPreferenceGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getPasspointPreferenceGroup()Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;->removeAll()V

    :cond_3
    return v10

    :cond_4
    return v4

    :cond_5
    return v10
.end method

.method private setSecureWifiState(Landroid/content/Context;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSprotectDownloadble:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "covert_on"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "covert_on"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private setTextBoldSpan(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .locals 9

    instance-of v6, p1, Landroid/text/Spannable;

    if-eqz v6, :cond_0

    const-string/jumbo v0, "LINK_BEGIN"

    const-string/jumbo v1, "LINK_END"

    move-object v3, p1

    check-cast v3, Landroid/text/Spannable;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    const/4 v7, 0x0

    invoke-virtual {p2, v7, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v4

    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    add-int/2addr v7, v4

    const/16 v8, 0x21

    invoke-interface {v3, v6, v4, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-void
.end method

.method private setTwSummaryColorToColorPrimaryDark(Landroid/content/Context;Z)V
    .locals 3

    if-eqz p2, :cond_0

    const v1, 0x1010434

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->resolveResource(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mTextViewSecureWifiStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    const v1, 0x1010038

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->resolveResource(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method private setVisibleContactUs(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->contactUsView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getContactUsView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->contactUsView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->contactUsView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->contactUsView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->contactUsView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setVisiblePreEmptyView(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPreEmptyView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getPreEmptyView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPreEmptyView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPreEmptyView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPreEmptyView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPreEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupActionBarMenus()V
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_b

    const v13, 0x7f1220e8

    invoke-virtual {v1, v13}, Landroid/app/ActionBar;->setTitle(I)V

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    new-instance v10, Landroid/app/ActionBar$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    const v15, 0x800015

    invoke-direct {v10, v13, v14, v15}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x7f0d03a6

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v13, 0x7f0a09c2

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const v13, 0x7f0a0985

    invoke-virtual {v7, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvanced:Landroid/widget/TextView;

    const-string/jumbo v13, "VZW"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    if-eqz v13, :cond_1

    :cond_0
    const-string/jumbo v13, "WifiSettings"

    const-string/jumbo v14, "hide advanced menu on actionbar"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvanced:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v13

    const v14, 0x7f0a09c2

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    if-nez v13, :cond_3

    :cond_2
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    invoke-virtual {v1, v7, v10}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    :cond_3
    new-instance v12, Landroid/util/TypedValue;

    invoke-direct {v12}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v2}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v13

    const v14, 0x1110082

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v12, v15}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/high16 v8, 0x41700000    # 15.0f

    const v11, 0x3f99999a    # 1.2f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v6, v13, Landroid/content/res/Configuration;->fontScale:F

    const v13, 0x3f99999a    # 1.2f

    cmpl-float v13, v6, v13

    if-lez v13, :cond_4

    const v6, 0x3f99999a    # 1.2f

    :cond_4
    iget v13, v12, Landroid/util/TypedValue;->data:I

    if-eqz v13, :cond_c

    const/4 v9, 0x1

    :goto_0
    const/4 v5, 0x0

    const v4, 0x10807ad

    if-eqz v9, :cond_5

    sget-object v13, Lcom/android/internal/R$styleable;->View:[I

    const/4 v14, 0x0

    const v15, 0x10102d8

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v2, v14, v13, v15, v0}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/16 v13, 0xd

    const v14, 0x10807a6

    invoke-virtual {v3, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    const/high16 v14, 0x41700000    # 15.0f

    mul-float/2addr v14, v6

    const/4 v15, 0x1

    invoke-virtual {v13, v15, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "show_button_background"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_6
    :goto_1
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wifi/WifiSettings;->updateContentDescriptionForDirectMenu(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    new-instance v14, Lcom/android/settings/wifi/WifiSettings$14;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/wifi/WifiSettings$14;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvanced:Landroid/widget/TextView;

    const/high16 v14, 0x41700000    # 15.0f

    mul-float/2addr v14, v6

    const/4 v15, 0x1

    invoke-virtual {v13, v15, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v9, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "show_button_background"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v13, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_8
    :goto_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wifi/WifiSettings;->updateContentDescriptionForAdvancedMenu(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvanced:Landroid/widget/TextView;

    new-instance v14, Lcom/android/settings/wifi/WifiSettings$15;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/wifi/WifiSettings$15;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v13, :cond_a

    const v13, 0x7f12204b

    invoke-virtual {v1, v13}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v13}, Lcom/android/settingslib/wifi/WifiTracker;->getWifiState()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/wifi/WifiSettings;->updateDirectMenu(I)V

    :cond_b
    return-void

    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v13, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_2
.end method

.method private setupListDivider()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setListDivider(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    :cond_1
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iput p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    return-void
.end method

.method private showDialogForModify()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    return-void
.end method

.method private showDialogForRetry(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 3

    const-string/jumbo v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDialogForRetry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowRetryDialog(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowRetryDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "target AP is null, ignored retry popup"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "showDialogForRetry showDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    :cond_1
    return-void
.end method

.method private showRestrictionEmptyView()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "ui rstricted by user"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f12200b

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onDataSetChanged()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView(Z)V

    return-void
.end method

.method private startContactUsActivity()V
    .locals 5

    const-string/jumbo v2, "WifiSettings"

    const-string/jumbo v3, "start contact us activity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    const v4, 0x7f120a51

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    if-eqz v2, :cond_0

    const-string/jumbo v1, "voc://view/contactUs"

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v2, "packageName"

    const-string/jumbo v3, "com.android.settings.wifi"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "appId"

    const-string/jumbo v3, "6u17f9w7m9"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "appName"

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1220e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "faqUrl"

    const-string/jumbo v3, "voc://view/categories"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private startScanningSettings()V
    .locals 11

    const v4, 0x7f121831

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/android/settings/location/ScanningSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, -0x1

    move-object v5, p0

    move-object v6, p0

    move v8, v4

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method private startWifiConfigSettings()V
    .locals 11

    const v4, 0x7f12204f

    const/4 v3, 0x0

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "start config settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    const v2, 0x7f120a4d

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/android/settings/wifi/ConfigureWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, -0x1

    move-object v5, p0

    move-object v6, p0

    move v8, v4

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method private startWifiHelpScreen()V
    .locals 13

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "start help activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    const v2, 0x7f120a61

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedHelpHub:Z

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.helphub"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    const-string/jumbo v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHelpMenuPressed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.helphub.HELP"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "helphub:section"

    const-string/jumbo v1, "wifi"

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Landroid/content/ActivityNotFoundException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_1
    move-exception v9

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "can\'t start helphub activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_3
    iget v0, v11, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    new-instance v12, Landroid/content/Intent;

    const-string/jumbo v0, "com.samsung.helphub.HELP"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "helphub:appid"

    const-string/jumbo v1, "wi_fi"

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v12}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v10

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "can\'t start helphub activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/samsung/android/settings/guide/WifiHelpPage;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f120e64

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    :cond_4
    const-class v0, Lcom/samsung/android/settings/guide/WifiHelpPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120e64

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto/16 :goto_0
.end method

.method private startWifiP2pSettings()V
    .locals 11

    const v4, 0x7f122055

    const/4 v3, 0x0

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "start p2p settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    const v2, 0x7f120a6b

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    const/4 v9, -0x1

    move-object v5, p0

    move-object v6, p0

    move v8, v4

    move-object v10, v3

    invoke-virtual/range {v5 .. v10}, Lcom/android/settings/wifi/WifiSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    goto :goto_0
.end method

.method private updateAccessPointPreferences(Z)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "WifiSettings"

    const-string/jumbo v4, "updateAccessPointPreferences - UI restricted"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->showRestrictionEmptyView()V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/wifi/WifiSettings;->mPreWifiState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    const-string/jumbo v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAccessPointPreferences - Wi-Fi is not enabled. prevState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/wifi/WifiSettings;->mPreWifiState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "WifiSettings"

    const-string/jumbo v4, "updateAccessPointPreferences - dialog is showing."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->getWifiState()I

    move-result v17

    const/4 v3, 0x1

    move/from16 v0, v17

    if-eq v0, v3, :cond_4

    if-nez v17, :cond_6

    :cond_4
    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    :cond_5
    const-string/jumbo v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAccessPointPreferences - Wi-Fi state is disabling/disabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const/4 v3, 0x4

    move/from16 v0, v17

    if-eq v0, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiEnabler;->isSwitchBarChecked()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/ListAnimationController;->removeAll()V

    const v3, 0x7f12213d

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    return-void

    :cond_7
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v9

    const/4 v14, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceGroup:Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    if-nez v3, :cond_8

    new-instance v3, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceGroup:Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    :cond_8
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->removeAll()V

    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/wifi/WifiSettings;->configureConnectedAccessPointPreferenceCategory(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v12, 0x1

    :goto_1
    if-eqz v12, :cond_9

    const/4 v10, 0x1

    :cond_9
    const-string/jumbo v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateAccessPointPreferences size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " connected:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " scan:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-ge v12, v15, :cond_12

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v3, :cond_d

    :cond_a
    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getBssid()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string/jumbo v3, "1"

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_b
    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/settings/wifi/WifiSettings;->createLongPressActionPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/wifi/WifiSettings;->mOpenSecurity:I

    if-ne v3, v4, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->onAccessPointPreferenceClick(Landroid/preference/Preference;)Z

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mGoToSettingsFromQuickPanelFirstTime:Z

    :cond_c
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceGroup:Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    const v4, 0x7f121e63

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/settings/wifi/WifiSettings;->addDeviceCategory(Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;II)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceGroup:Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    const v4, 0x7f1220a6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/settings/wifi/WifiSettings;->addDeviceCategory(Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;II)V

    goto/16 :goto_0

    :cond_10
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v3, "0"

    goto/16 :goto_3

    :cond_12
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v3, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->setPasspointPreferenceCategory()Z

    move-result v11

    :cond_13
    if-nez v10, :cond_18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v3, :cond_17

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    if-nez v11, :cond_14

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const v3, 0x7f12204c

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    :cond_14
    :goto_4
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->forceScrollToTopOfList()V

    :cond_15
    return-void

    :cond_16
    const v3, 0x7f12206b

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceGroup:Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    const v4, 0x7f1220a6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/android/settings/wifi/WifiSettings;->addDeviceCategory(Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;II)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    new-instance v2, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZLandroid/app/Fragment;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setSelectable(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    const v3, 0x7f12200d

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setTitle(I)V

    const-string/jumbo v3, "wifi_empty_list"

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v4, 0x0

    invoke-virtual {v3, v14, v4}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateWithAnimation(Ljava/util/List;Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    goto :goto_4

    :cond_18
    if-eqz p1, :cond_19

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v4, 0x1

    invoke-virtual {v3, v14, v4}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateWithAnimation(Ljava/util/List;Z)V

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v3}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateEmptyView()V

    if-eqz p1, :cond_14

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    const/4 v4, 0x0

    invoke-virtual {v3, v14, v4}, Lcom/samsung/android/settings/wifi/ListAnimationController;->updateWithAnimation(Ljava/util/List;Z)V

    goto :goto_5
.end method

.method private updateContentDescriptionForAdvancedMenu(Z)V
    .locals 5

    const v3, 0x7f12204f

    const v4, 0x7f12053b

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvanced:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const-string/jumbo v1, ""

    if-eqz p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiAdvanced:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f121d82

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateContentDescriptionForDirectMenu(Z)V
    .locals 5

    const v3, 0x7f122055

    const v4, 0x7f12053b

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const-string/jumbo v1, ""

    if-eqz p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f121d82

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private updateDirectMenu(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedWifiDirectEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "not allowed Wi-Fi direct. disable Wi-Fi direct menu"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->updateContentDescriptionForDirectMenu(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->updateContentDescriptionForDirectMenu(Z)V

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->updateContentDescriptionForAdvancedMenu(Z)V

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->updateContentDescriptionForDirectMenu(Z)V

    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->updateContentDescriptionForAdvancedMenu(Z)V

    goto :goto_0
.end method

.method private updateSecureWifiLayout()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSecureWifiState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "mTextViewSecureWifiStatus checked false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTextViewSecureWifiStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1217fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiSettings;->setTwSummaryColorToColorPrimaryDark(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTextViewSecureWifiStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121ff7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "mTextViewSecureWifiStatus checked true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mTextViewSecureWifiStatus:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f122143    # 1.9424E38f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lcom/android/settings/wifi/WifiSettings;->setTwSummaryColorToColorPrimaryDark(Landroid/content/Context;Z)V

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "mSecure Wifi Initializing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public checkGoToWebPageHTTPResponse()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dhcpInfo.gateway : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v0, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v3}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mGateway:Ljava/lang/String;

    const-string/jumbo v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Go to Webpage: gateway addr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mGateway:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/wifi/WifiSettings$18;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiSettings$18;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mGateway:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method protected connect(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 3

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUserSelectedAP:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mShowRetryDialog:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/16 v2, 0x87

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    if-nez p1, :cond_0

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "connect - config is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    return-void

    :cond_0
    const-string/jumbo v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "connect - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isSavedNetwork: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v0, ""

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->saveConfig(Landroid/net/wifi/WifiConfiguration;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0
.end method

.method protected connectWeChatAccessPoint(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.net.wifi.WECHAT_CONNECT_AP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "ssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "bssid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "rssi"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method forget()V
    .locals 6

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-array v3, v5, [Landroid/util/Pair;

    const/16 v4, 0x89

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setPasspointPreferenceCategory()Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to forget invalid network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const-string/jumbo v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "forget - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    const/16 v0, 0x25b

    return v0

    :pswitch_2
    const/16 v0, 0x25c

    return v0

    :pswitch_3
    const/16 v0, 0x25d

    return v0

    :pswitch_4
    const/16 v0, 0x25e

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getEmptyTextView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method protected getHelpResource()I
    .locals 1

    const v0, 0x7f120d0e

    return v0
.end method

.method public getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x67

    return v0
.end method

.method public getUserSelectedAP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUserSelectedAP:Ljava/lang/String;

    return-object v0
.end method

.method public getViListView()Landroid/widget/SemExpandableListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getListView()Landroid/widget/SemExpandableListView;

    move-result-object v0

    return-object v0
.end method

.method protected getWifiDialogArgs(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/os/Bundle;
    .locals 5

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    sget-boolean v2, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getWifiDialogArgs - apInfo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/WifiTracker;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "args_linkproperties"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_2
    const-string/jumbo v2, "screen_id"

    iget v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public onAccessPointPreferenceClick(Landroid/preference/Preference;)Z
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string/jumbo v7, "WifiSettings"

    const-string/jumbo v8, "onAccessPointPreferenceClick"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "sd_ap_wifi_setting"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    instance-of v7, p1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    const v9, 0x7f120a65

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    check-cast p1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {p1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v7, :cond_1

    return v12

    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->userPickedAp(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->getApIntent(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v7, v9, v8}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return v10

    :cond_2
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->isCoreanVendorAp(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v7

    if-eqz v7, :cond_3

    return v10

    :cond_3
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f122176

    invoke-static {v7, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :cond_4
    return v10

    :cond_5
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v5

    :cond_6
    if-eqz v5, :cond_7

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkWifiConnectivity()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v4

    :cond_7
    if-nez v4, :cond_8

    const-string/jumbo v7, "WifiSettings"

    const-string/jumbo v8, "NetworkCapabilities is NULL on Wi-FI only device"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v8, :cond_c

    if-eqz v0, :cond_c

    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_c

    iget-boolean v7, v0, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    if-nez v7, :cond_9

    if-eqz v4, :cond_c

    const/16 v7, 0x11

    invoke-virtual {v4, v7}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_9
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->isCaptivePortal()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->isAuthenticated()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_b

    :cond_a
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    const-string/jumbo v7, "WifiSettings"

    const-string/jumbo v8, "START captive portal login activity"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v7, "android.net.netmon.launchCaptivePortalApp"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "reason"

    const/4 v8, 0x3

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return v10

    :cond_c
    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v7, :cond_e

    if-eqz v0, :cond_e

    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v7, v10}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isFTOnlyType()Z

    move-result v7

    if-eqz v7, :cond_d

    const-string/jumbo v7, "WifiSettings"

    const-string/jumbo v8, "it\'s FT/PSK only secured AP, Wi-Fi configuration should be changed"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v7, v10}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    return v10

    :cond_d
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isFTOnlyType()Z

    move-result v7

    if-eqz v7, :cond_e

    const-string/jumbo v7, "WifiSettings"

    const-string/jumbo v8, "it\'s FT/EAP only secured AP, Wi-Fi configuration should be changed"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v7, v10}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    return v10

    :cond_e
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v7

    if-nez v7, :cond_f

    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v7, :cond_f

    const-string/jumbo v7, "VZW"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    :cond_f
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v7, v12}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    :goto_0
    return v10

    :cond_10
    invoke-virtual {p0, v0, v10}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    :cond_11
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v7

    if-nez v7, :cond_14

    const-string/jumbo v7, "VZW"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    const-string/jumbo v7, "ATT"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    :cond_12
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v7, v10}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    goto :goto_0

    :cond_13
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    :cond_14
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isWeChatAp()Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getWeChatBssid()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->getRssi()I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/settings/wifi/WifiSettings;->connectWeChatAccessPoint(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_15
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {p0, v0, v10}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    :cond_16
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v7, v10}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    goto :goto_0

    :cond_17
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/preference/Preference;

    if-ne p1, v7, :cond_18

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    goto/16 :goto_0

    :cond_18
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    const v9, 0x7f120a66

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointInfoMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPasspointFqdn:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedpasspointName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/hotspot2/pps/HomeSp;->isVendorSpecificSsid()Z

    move-result v7

    if-eqz v7, :cond_19

    const/16 v7, 0xb

    invoke-direct {p0, v11, v7}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    goto/16 :goto_0

    :cond_19
    const/16 v7, 0xc

    invoke-direct {p0, v11, v7}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    goto/16 :goto_0
.end method

.method public onAccessPointsChanged()V
    .locals 0

    return-void
.end method

.method public onAccessPointsChanged(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPointPreferences(Z)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14

    sget-boolean v10, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v10, :cond_0

    const-string/jumbo v10, "WifiSettings"

    const-string/jumbo v11, "onActivityCreated"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v10, Lcom/android/settings/wifi/WifiSettings$10;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/WifiSettings$10;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v10, Lcom/android/settings/wifi/WifiSettings$11;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/WifiSettings$11;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    new-instance v10, Lcom/android/settings/wifi/WifiSettings$12;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/WifiSettings$12;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    if-eqz p1, :cond_2

    const-string/jumbo v10, "dialog_mode"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    const-string/jumbo v10, "wifi_ap_state"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string/jumbo v10, "wifi_ap_state"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    :cond_1
    const-string/jumbo v10, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v10, v0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;

    if-eqz v10, :cond_17

    sget-boolean v10, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    if-eqz v10, :cond_3

    const-string/jumbo v10, "WifiSettings"

    const-string/jumbo v11, "finished Wi-Fi picker dialog because another Wi-Fi settings activity is activated"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_3
    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "WifiSettings"

    const-string/jumbo v11, "finished Wi-Fi picker dialog because Wi-Fi is disabled"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkWifiConnectivity()Z

    move-result v10

    if-eqz v10, :cond_5

    const-string/jumbo v10, "WifiSettings"

    const-string/jumbo v11, "finished Wi-Fi picker dialog because device was connected with AP"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_5
    const-string/jumbo v10, "WifiSettings"

    const-string/jumbo v11, "Wi-Fi picker dialog is showing"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfConnected:Z

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfWifiDisabled:Z

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mHideHeaderCategory:Z

    const v10, 0x7f12176a

    iput v10, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    :cond_6
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v10, "wifi_enable_next_on_connect"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    invoke-static {v0}, Lcom/samsung/android/settings/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v10

    if-nez v10, :cond_18

    const-string/jumbo v10, "settings:guide_mode"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    :goto_1
    if-eqz v4, :cond_7

    const-string/jumbo v10, "WifiSettings"

    const-string/jumbo v11, "it\'s guide mode. hide some UI"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfWifiDisabled:Z

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mHideContextMenus:Z

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    const v10, 0x7f121766

    iput v10, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    :cond_7
    const-string/jumbo v10, "com.samsung.android.net.wifi.PICK_WIFI_NETWORK_RESULT"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v10, Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v10, v11, v3}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;-><init>(Landroid/net/wifi/WifiManager;Landroid/content/Intent;)V

    iput-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    invoke-virtual {v10}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->needToHideContextMenu()Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mHideContextMenus:Z

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    :cond_9
    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "device_provisioned"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_19

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButtonImage()Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_a
    if-nez v5, :cond_b

    const-string/jumbo v10, "WifiSettings"

    const-string/jumbo v11, "next/prev button is showing at SetupWizard, hide navigation buttons"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x3002

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_b
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v10, :cond_c

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->checkWifiConnectivity()Z

    move-result v10

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    :cond_c
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mHideContextMenus:Z

    if-nez v10, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getViListView()Landroid/widget/SemExpandableListView;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    :cond_d
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setupListDivider()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_e

    const v10, 0x800033

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v10, 0x5

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setTextAlignment(I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f130315

    invoke-virtual {v2, v10, v11}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0600cc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setLinkTextColor(I)V

    :cond_e
    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v10}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getContactUsView()Landroid/widget/TextView;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->contactUsView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->contactUsView:Landroid/widget/TextView;

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->contactUsView:Landroid/widget/TextView;

    const v11, 0x800033

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->contactUsView:Landroid/widget/TextView;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextAlignment(I)V

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->contactUsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f130315

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->contactUsView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0600cc

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setLinkTextColor(I)V

    :cond_f
    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v10}, Lcom/samsung/android/settings/wifi/ListAnimationController;->getPreEmptyView()Landroid/widget/TextView;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mPreEmptyView:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mPreEmptyView:Landroid/widget/TextView;

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mPreEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const v12, 0x7f130315

    invoke-virtual {v10, v11, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_10
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedCricketManager:Z

    if-eqz v10, :cond_11

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string/jumbo v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getViListView()Landroid/widget/SemExpandableListView;

    move-result-object v10

    const v11, 0x7f0d03a5

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v10, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mCricketManagerHeader:Landroid/view/View;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mCricketManagerHeader:Landroid/view/View;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Landroid/view/View;->setTextAlignment(I)V

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mCricketManagerHeader:Landroid/view/View;

    new-instance v11, Lcom/android/settings/wifi/WifiSettings$13;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/WifiSettings$13;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getViListView()Landroid/widget/SemExpandableListView;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiSettings;->mCricketManagerHeader:Landroid/view/View;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/SemExpandableListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    :cond_11
    const-string/jumbo v10, "wifi_start_connect_ssid"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_13

    const-string/jumbo v10, "wifi_start_connect_ssid"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    const-string/jumbo v10, "wifi_start_connect_security"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_12

    const-string/jumbo v10, "wifi_start_connect_security"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSecurity:I

    :cond_12
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mGoToSettingsFromQuickPanelFirstTime:Z

    if-nez v10, :cond_13

    const/4 v10, -0x1

    iput v10, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSecurity:I

    :cond_13
    if-eqz v3, :cond_14

    const-string/jumbo v10, "AUTH_TYPE"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->isWifiQr:Z

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->getWifiConfigFromIntent(Landroid/content/Intent;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v7

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v10, "key_config"

    invoke-virtual {v8, v10, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v6, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v6, v10, v8}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    const/4 v10, 0x3

    invoke-direct {p0, v6, v10}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    :cond_14
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSSecure()Z

    move-result v10

    if-eqz v10, :cond_1a

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1a

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerActivity:Z

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1a

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1a

    if-eqz v5, :cond_1a

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1a

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v11, "com.samsung.android.app.sprotect"

    invoke-static {v10, v11}, Lcom/android/settings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    :goto_3
    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportSSecure:Z

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportSSecure:Z

    if-eqz v10, :cond_15

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_15

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/wifi/WifiSettings;->initSecureWifiLayout(Landroid/content/Context;)V

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSprotectDownloadble:Z

    if-eqz v10, :cond_1b

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "covert_on"

    invoke-static {v11}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiObserver:Landroid/database/ContentObserver;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v13, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_15
    :goto_4
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v10, :cond_16

    iget-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-nez v10, :cond_16

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    :cond_16
    return-void

    :cond_17
    instance-of v10, v0, Lcom/android/settings/wifi/WifiPickerActivity;

    if-eqz v10, :cond_6

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerActivity:Z

    const v10, 0x7f121769

    iput v10, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    goto/16 :goto_0

    :cond_18
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_1a
    const/4 v10, 0x0

    goto :goto_3

    :cond_1b
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "covert_on"

    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiObserver:Landroid/database/ContentObserver;

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v13, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_4
.end method

.method onAddNetworkPressed()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    const v2, 0x7f120a4c

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x86

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settings/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v0, 0x1

    invoke-direct {p0, v4, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    return-void
.end method

.method public onConfiguredNetworksChanged(Landroid/net/wifi/WifiConfiguration;ZI)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v4, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onConfiguredNetworksChanged: config = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez p1, :cond_2

    const-string/jumbo v3, "null"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ", isMultipleChanged = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/WifiTracker;->getWifiState()I

    move-result v2

    if-eq v2, v7, :cond_1

    if-nez v2, :cond_3

    :cond_1
    const-string/jumbo v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onConfiguredNetworksChanged - Wi-Fi state is disabling/disabled "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiEnabler;->isSwitchBarChecked()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    const-string/jumbo v3, "WifiSettings"

    const-string/jumbo v4, "onConfiguredNetworksChanged - WifiEnabler is not checked"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-nez p1, :cond_5

    return-void

    :cond_5
    if-eqz p2, :cond_6

    return-void

    :cond_6
    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->isVendorSpecificSsid:Z

    if-eqz v3, :cond_8

    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "WifiSettings"

    const-string/jumbo v4, "Failed to show retry popup. It\'s default AP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void

    :cond_8
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v3, :cond_7

    const-string/jumbo v3, "WifiSettings"

    const-string/jumbo v4, "Failed to show retry popup. It\'s none secured (OPEN) AP"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_a

    const/16 v3, 0x8

    if-ne v0, v3, :cond_7

    :cond_a
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v3, :cond_b

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    if-eq p3, v7, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f122006

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_b
    sget-boolean v3, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v3, :cond_c

    const-string/jumbo v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onConfiguredNetworksChanged: mShowRetryDialog = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mShowRetryDialog:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mShowRetryDialog:Z

    if-eqz v3, :cond_7

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->findAccessPoint(Landroid/net/wifi/WifiConfiguration;)Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->showDialogForRetry(Lcom/android/settingslib/wifi/AccessPoint;)V

    iput-boolean v6, p0, Lcom/android/settings/wifi/WifiSettings;->mShowRetryDialog:Z

    goto :goto_1
.end method

.method public onConnectedChanged()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v0

    const-string/jumbo v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConnectedChanged: isConnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mShowRetryDialog:Z

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->isUserPickedAp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiPickerHelper:Lcom/samsung/android/settings/wifi/WifiPickerHelper;

    invoke-virtual {v2, v5}, Lcom/samsung/android/settings/wifi/WifiPickerHelper;->getApIntent(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfConnected:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mCheckHttpResponseHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mCheckHttpResponseHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    return-void

    :cond_3
    sput v4, Lcom/android/settings/wifi/WifiSettings;->goToWebPageHTTPResponse:I

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    const v3, 0x7f120a52

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    :goto_0
    return v4

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isWeChatAp()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getWeChatBssid()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getRssi()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiSettings;->connectWeChatAccessPoint(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, v1, v4}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    const v3, 0x7f120a53

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    return v4

    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    const v3, 0x7f120a54

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    return v4

    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    const v3, 0x7f120a55

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    return v4

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v3, 0x1

    const/4 v5, 0x0

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string/jumbo v0, "manage_network"

    invoke-virtual {v6, v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    :cond_1
    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isCricketManagerSupport()Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedCricketManager:Z

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v0, :cond_3

    const/4 v4, 0x0

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mShowNotInRagededAp:Z

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedCricketManager:Z

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfWifiDisabled:Z

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mHideContextMenus:Z

    const v0, 0x7f121768

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/wifi/WifiPickerDialog;

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/samsung/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "WifiSettings"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->create(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Landroid/os/Looper;ZZZ)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mShowNotInRagededAp:Z

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->setAccessPointVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/wifi/WifiTracker;->setSemWifiListener(Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setWifiTracker(Lcom/android/settingslib/wifi/WifiTracker;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mViListListener:Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->setListener(Lcom/samsung/android/settings/wifi/ListAnimationController$OnEventListener;)V

    new-instance v0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceGroup:Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    new-instance v0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceGroup:Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    new-instance v0, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mPassPointPreferenceGroup:Lcom/samsung/android/settings/wifi/AccessPointPreferenceGroup;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedHelpHub:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const-wide/32 v10, 0xdcc6cc8

    invoke-static {v0, v10, v11}, Lcom/android/settings/Utils;->isSupportContactUs(Landroid/content/Context;J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mGoToSettingsFromQuickPanelFirstTime:Z

    sput-boolean v5, Lcom/android/settings/wifi/WifiSettings;->goToWebPageLinkViewed:Z

    sput-boolean v5, Lcom/android/settings/wifi/WifiSettings;->goToWebPageLinkClicked:Z

    sput v5, Lcom/android/settings/wifi/WifiSettings;->goToWebPageHTTPResponse:I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/settings/wifi/WifiOffloadDialog;

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v2, "action_bar"

    const-string/jumbo v3, "id"

    const-string/jumbo v5, "android"

    invoke-virtual {v1, v2, v3, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v0, :cond_4

    if-eqz v8, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_4
    return-void

    :cond_5
    move v0, v5

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11

    const-string/jumbo v7, "WifiSettings"

    const-string/jumbo v8, "create context menu"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mHideContextMenus:Z

    if-eqz v7, :cond_0

    return-void

    :cond_0
    instance-of v7, p3, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;

    if-nez v7, :cond_1

    return-void

    :cond_1
    move-object v3, p3

    check-cast v3, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getViListView()Landroid/widget/SemExpandableListView;

    iget-wide v8, v3, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v8, v9}, Landroid/widget/SemExpandableListView;->getPackedPositionGroup(J)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getViListView()Landroid/widget/SemExpandableListView;

    iget-wide v8, v3, Landroid/widget/SemExpandableListView$ExpandableListContextMenuInfo;->packedPosition:J

    invoke-static {v8, v9}, Landroid/widget/SemExpandableListView;->getPackedPositionChild(J)I

    move-result v0

    const/4 v7, -0x1

    if-ne v0, v7, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListAdapter()Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;

    move-result-object v7

    invoke-virtual {v7, v2, v0}, Lcom/samsung/android/settings/wifi/AccessPointExpListAdapter;->getChild(II)Lcom/samsung/android/settingslib/wifi/AccessPointPreference;

    move-result-object v6

    instance-of v7, v6, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    const v9, 0x7f120a62

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    check-cast v6, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {v6}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v7, :cond_3

    const-string/jumbo v7, "WifiSettings"

    const-string/jumbo v8, "onCreateContextMenu - selected ap is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {p1, v7}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const v10, 0x7f122052

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f122176

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void

    :cond_5
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isConnectable()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v9, 0x0

    const v10, 0x7f122051

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_6
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/android/settings/wifi/WifiSettings;->isEditabilityLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v7

    if-eqz v7, :cond_7

    return-void

    :cond_7
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v7

    if-eqz v7, :cond_a

    :cond_8
    sget-boolean v7, Lcom/android/settings/Utils;->REMOVABLE_DEFAULT_AP:Z

    if-nez v7, :cond_9

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_a

    :cond_9
    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    const v10, 0x7f122052

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_a
    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string/jumbo v7, "VerizonWiFiAccess"

    iget-object v8, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    :goto_0
    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_d

    sget-boolean v7, Lcom/android/settings/Utils;->REMOVABLE_DEFAULT_AP:Z

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_c

    :cond_b
    const/4 v7, 0x0

    const/16 v8, 0x9

    const/4 v9, 0x0

    const v10, 0x7f122053

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v7

    if-eqz v7, :cond_d

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_d

    if-eqz v1, :cond_d

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_d

    const/4 v7, 0x0

    const/16 v8, 0xa

    const/4 v9, 0x0

    const v10, 0x7f12205e

    invoke-interface {p1, v7, v8, v9, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    :cond_d
    return-void

    :cond_e
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 14

    const/4 v5, 0x0

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    new-instance v3, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    :cond_0
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "fqdn"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPasspointFqdn:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "name"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedpasspointName:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "screen_id"

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    iget v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;IZLandroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object v0

    :cond_2
    new-instance v7, Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    iget v11, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->getWifiDialogArgs(Lcom/android/settingslib/wifi/AccessPoint;)Landroid/os/Bundle;

    move-result-object v13

    move-object v10, v3

    move v12, v5

    invoke-direct/range {v7 .. v13}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;IZLandroid/os/Bundle;)V

    iput-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    return-object v0

    :pswitch_3
    new-instance v0, Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v2

    new-instance v4, Lcom/android/settings/wifi/WifiManagerWrapper;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v4, v5}, Lcom/android/settings/wifi/WifiManagerWrapper;-><init>(Landroid/net/wifi/WifiManager;)V

    invoke-direct {v0, v1, v2, v4}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;ILcom/android/settings/wifi/WifiManagerWrapper;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    new-instance v4, Lcom/android/settings/wifi/WifiManagerWrapper;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {v4, v5}, Lcom/android/settings/wifi/WifiManagerWrapper;-><init>(Landroid/net/wifi/WifiManager;)V

    invoke-direct {v0, v1, v2, v4}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Landroid/os/Bundle;Lcom/android/settings/wifi/WifiManagerWrapper;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideActionBarMenus:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-nez v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setupActionBarMenus()V

    :cond_2
    const-string/jumbo v0, "VZW"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "create options menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    const v1, 0x7f12204e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedHelpHub:Z

    if-nez v0, :cond_4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_ConfigTypeHelp"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isUSA()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "support help menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    const v1, 0x7f120ce8

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0801b2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "support contact us menu"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xd

    const v1, 0x7f12063c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_6
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mInManageNetwork:Z

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerDialog:Z

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/wifi/ListAnimationController;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;ZZ)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListAnimationView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListAnimationView:Landroid/view/View;

    return-object v0
.end method

.method public onCricketManagerClicked()V
    .locals 5

    const-string/jumbo v2, "WifiSettings"

    const-string/jumbo v3, "starting cricket manager"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    const v4, 0x7f120a56

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.smithmicro.mnd.MNDSettings"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityNotFoundException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiSettings"

    const-string/jumbo v2, "onDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mBgThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->goToWebPageLinkViewed:Z

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v1, Lcom/android/settings/wifi/WifiSettings;->goToWebPageLinkClicked:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "1"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/settings/wifi/WifiSettings;->goToWebPageHTTPResponse:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertBigdataLog(ILjava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1, v3}, Lcom/android/settingslib/wifi/WifiTracker;->setSemWifiListener(Lcom/android/settingslib/wifi/WifiTracker$SemWifiListener;)V

    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    :cond_2
    iput-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAnimationController:Lcom/samsung/android/settings/wifi/ListAnimationController;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/ListAnimationController;->destroyView()V

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    return-void

    :cond_3
    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListAnimationView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mListAnimationView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mListAnimationView:Landroid/view/View;

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "onDestroyView, mListAnimationView is removed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->teardownSwitchController()V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiDirect:Landroid/widget/TextView;

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportSSecure:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSecureWifiObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->startWifiConfigSettings()V

    return v1

    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->startWifiHelpScreen()V

    return v1

    :sswitch_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->startContactUsActivity()V

    return v1

    :sswitch_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    return v1

    :sswitch_4
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    return v1

    :sswitch_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    const v2, 0x7f120a6a

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x5 -> :sswitch_0
        0xc -> :sswitch_1
        0xd -> :sswitch_2
        0x102002c -> :sswitch_5
    .end sparse-switch
.end method

.method public onPassPointPreferenceClick(Landroid/preference/Preference;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "WifiSettings"

    const-string/jumbo v2, "onPassPointPreferenceClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    const v3, 0x7f120a66

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/SAUtils;->insertLog(II)V

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mPasspointInfoMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez v1, :cond_0

    const-string/jumbo v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no matched any passpoint : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPasspointFqdn:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedpasspointName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->isVendorSpecificSsid()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xb

    invoke-direct {p0, v4, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v1, 0xc

    invoke-direct {p0, v4, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string/jumbo v2, "WifiSettings"

    const-string/jumbo v3, "onPause"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    :cond_0
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    sget-boolean v2, Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    sget-boolean v2, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WpsDialog;->dismiss()V

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWpsDialog:Lcom/android/settings/wifi/WpsDialog;

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mCheckHttpResponseHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v3, "WiFiSettings"

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sd_ap_wifi_setting"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dialog isShowing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v4}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "sd_ap_wifi_setting"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "WifiSettings"

    const-string/jumbo v6, "onResume"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Setupwizard: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v8, "device_provisioned"

    invoke-static {v3, v8, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_4

    move v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, "mInPickerActivity: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v7, p0, Lcom/android/settings/wifi/WifiSettings;->mInPickerActivity:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v3}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "shared_device_status"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1

    const-string/jumbo v3, "WifiSettings"

    const-string/jumbo v6, "isSharedDeviceKeyguardOn!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v6, 0x80000

    invoke-virtual {v3, v6}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v3, 0x4a

    iput v3, v2, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "enable"

    invoke-virtual {v1, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "lock"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "WifiSettings"

    const-string/jumbo v4, "Stop p2p discovery after start legacy scan and assoc"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->forceUpdateAPs()V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v6, "WiFiSettings"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_4
    move v3, v5

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "dialog_mode"

    iget v2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    const-string/jumbo v1, "wifi_ap_state"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->saveState(Landroid/os/Bundle;)V

    const-string/jumbo v1, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public onScanStateChange(I)V
    .locals 3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->getWifiState()I

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    sput-boolean v3, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/SAUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/SAUtils;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SAUtils;->insertLog(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnablerListener:Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setListener(Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSAScreenId:I

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setScreenIdForSA(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiEnabler;->start(Landroid/content/Context;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->startTracking()V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->showRestrictionEmptyView()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getWifiState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->onWifiStateChanged(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shared_device_status"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sd_screen_status"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->stop()V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/WifiEnabler;->setListener(Lcom/android/settings/wifi/WifiEnabler$IWifiEnablerListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->releaseWakeLock()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->stopTracking()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsForeground:Z

    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    :cond_0
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string/jumbo v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWifiStateChanged wifiState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/settings/wifi/WifiSettings;->mPreWifiState:I

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->forceUpdateAPs()V

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateDirectMenu(I)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWillRespondToEm:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "WiFiScan"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mEmLastStateID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->forceScanByBixby()V

    :cond_2
    iput-boolean v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWillRespondToEm:Z

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->saveConfig(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v0, v4}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    iput-object v5, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    :pswitch_1
    const v0, 0x7f122134

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfWifiDisabled:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_4
    const v0, 0x7f12213d

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->setVisiblePreEmptyView(Z)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsSupportedContactUs:Z

    if-eqz v0, :cond_5

    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->setVisibleContactUs(Z)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mFinishIfWifiDisabled:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->popOrFinishThisActivity()V

    return-void

    :cond_6
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WifiSettings;->dismissDialog(I)V

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->updateDirectMenu(I)V

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mInOffloadDialog:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SupportHuxWiFiPromptDataOveruse"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected setProgressBarVisible(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/wifi/WifiSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setProgressBarVisible :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    :cond_1
    return-void
.end method

.method protected showDialogToDisplayInfo(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "WifiSettings"

    const-string/jumbo v1, "showDialogToDisplayInfo, accessPoint is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    return-void
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/wifi/WifiSettings;->mScrollTimer:J

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->forceScrollToTopOfList()V

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->isNeedToReconnect()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->disconnect()V

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    return-void

    :cond_2
    const-string/jumbo v1, "VZW"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mOpBranding:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->disconnect()V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->isWifiQr:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-ne v1, v4, :cond_4

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiSettings;->isWifiQr:Z

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mQrConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->saveConfig(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v0, v5}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_1
.end method
