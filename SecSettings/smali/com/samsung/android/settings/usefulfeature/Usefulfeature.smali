.class public Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "Usefulfeature.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$14;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$17;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$1;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$2;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$9;,
        Lcom/samsung/android/settings/usefulfeature/Usefulfeature$SummaryProvider;
    }
.end annotation


# static fields
.field private static final FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SETTINGS_ADVANCEDFEATURE:I

.field private static SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mHdrSummary:Ljava/lang/String;

.field private static mHongbaoAssistantEnabled:Z

.field public static final mMotionFeatures:[Ljava/lang/String;

.field private static mSupportMcc:[Ljava/lang/String;

.field private static sIsSupportNightClock:Z


# instance fields
.field private ROUTE_TYPE_REMOTE_DISPLAY:I

.field edit:Landroid/content/SharedPreferences$Editor;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

.field private final mAppLockObserver:Landroid/database/ContentObserver;

.field private mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

.field private mDeviceAssistantApp:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDock:Landroid/support/v7/preference/SecPreference;

.field private mDualApp:Landroid/support/v7/preference/SecPreferenceScreen;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mFingerSensorGestureObserver:Landroid/database/ContentObserver;

.field private mGalaxyLabs:Landroid/support/v7/preference/SecPreference;

.field private mGameHome:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

.field private mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mHongbaoAssistantObserver:Landroid/database/ContentObserver;

.field private mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mInteractionControlObserver:Landroid/database/ContentObserver;

.field private mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mMediaRouterManager:Landroid/media/MediaRouter;

.field private mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mOneHandedOperationObserver:Landroid/database/ContentObserver;

.field private mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

.field private mPanicMode:Landroid/support/v7/preference/SecPreference;

.field private mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

.field private mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

.field private mQuickCameraObserver:Landroid/database/ContentObserver;

.field private mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mSafetycareHelp:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mScreenRecorder:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

.field private mSendSOSMessageObserver:Landroid/database/ContentObserver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

.field private mSmartCaptureObserver:Landroid/database/ContentObserver;

.field private mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mSmartStayObserver:Landroid/database/ContentObserver;

.field private mSpen:Landroid/support/v7/preference/SecPreference;

.field private mSwipeToCallObserver:Landroid/database/ContentObserver;

.field private mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTouchSensitivityObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get23(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get24(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get25(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSpen:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get26(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDock:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualApp:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/support/v7/preference/SecPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/support/v7/preference/SecPreferenceScreen;

    return-object v0
.end method

.method static synthetic -set0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isHongbaoAssistantEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportGame(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGestureSupport(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap5(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportSpay(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap6()I
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->appLockSummaryUpdate()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "pick_up_to_call_out_switch"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "pick_up_switch"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "merged_mute_or_pause_switch"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "palm_swipe_switch"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMotionFeatures:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_AOD_ITEM"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->FLOATING_FEATURE_CONFIG_AOD_ITEM:Ljava/lang/String;

    const-string/jumbo v1, "nightclock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->sIsSupportNightClock:Z

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->ROUTE_TYPE_REMOTE_DISPLAY:I

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$1;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$2;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$3;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mInteractionControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessageObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLockObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$9;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGestureObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$14;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$14;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$17;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$17;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private appLockSummaryUpdate()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "app_lock_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    const v2, 0x7f121b3e

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    const v2, 0x7f121b3d

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method private static checkSmartSwitchSupport(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v2, "device_policy"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Usefulfeature"

    const-string/jumbo v3, "DeviceOwner"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string/jumbo v2, "Usefulfeature"

    const-string/jumbo v3, "SS is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private dismissAllDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private static getSummaryForMutePauseSwitch()I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    :cond_0
    const v0, 0x7f121203

    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const/high16 v2, 0x200000

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const v0, 0x7f121201

    goto :goto_0

    :cond_2
    const v0, 0x7f121202

    goto :goto_0
.end method

.method private isHdmiConnected()Z
    .locals 5

    const/4 v2, 0x0

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    aget-object v3, v0, v1

    if-eqz v3, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/view/Display;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static isHongbaoAssistantEnabled(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "hongbao_assistant"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_RIL_ConfigKeepRrcConnection"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.tencent.mm"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "com.samsung.hongbaoassistant"

    invoke-static {p0, v0}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3
.end method

.method private static isNotSupportGame(Landroid/content/Context;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1120096

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-nez v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    :try_start_0
    const-string/jumbo v5, "com.samsung.android.game.gamehome"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string/jumbo v5, "Usefulfeature"

    const-string/jumbo v6, "Package : com.samsung.android.game.gamehome not found"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static isNotSupportSamsungMessageApp()Z
    .locals 2

    const-string/jumbo v0, "SBM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "KDI"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isReadyOneHandedOperationStatusEnable()Z
    .locals 15

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isGEDTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isSwitchAccessEnabled(Landroid/content/Context;)Z

    move-result v9

    sget-object v12, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string/jumbo v13, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_magnifier"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    const/4 v4, 0x1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_display_magnification_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_display_magnification_navbar_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-eqz v12, :cond_5

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "finger_magnifier"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_6

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v11

    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "access_control_use"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "assistant_menu"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "direct_access"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_autoclick_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    const/4 v2, 0x1

    :goto_7
    if-nez v8, :cond_1

    if-nez v9, :cond_1

    if-nez v10, :cond_1

    if-nez v4, :cond_1

    if-nez v5, :cond_1

    if-nez v6, :cond_1

    if-nez v11, :cond_1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v7, 0x0

    :cond_2
    return v7

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    goto :goto_2

    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    goto :goto_5

    :cond_a
    const/4 v3, 0x0

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    goto :goto_7
.end method

.method private isSmartMirroringConnected()Z
    .locals 4

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "media_router"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaRouter;

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMediaRouterManager:Landroid/media/MediaRouter;

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMediaRouterManager:Landroid/media/MediaRouter;

    iget v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->ROUTE_TYPE_REMOTE_DISPLAY:I

    invoke-virtual {v2, v3}, Landroid/media/MediaRouter;->getSelectedRoute(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getPlaybackType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Landroid/media/MediaRouter$RouteInfo;->getPresentationDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportMCC()Z
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-le v2, v4, :cond_0

    sget-object v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportSmartCall(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    aget-object v2, v0, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private static isSupportSmartCall(Landroid/content/Context;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    const-string/jumbo v7, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v6, v1, v5

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v6, "com.samsung.android.smartcallprovider"

    invoke-static {p0, v6}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    array-length v6, v0

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    const-string/jumbo v6, "off"

    aget-object v7, v0, v5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "off"

    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    const-string/jumbo v6, "whowho"

    aget-object v7, v0, v5

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "whowho"

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    :cond_1
    :goto_0
    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    return v3

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    return v5
.end method

.method private static mFingerSensorGestureSupport(Landroid/content/Context;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->semHasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private static mSupportSpay(Landroid/content/Context;)Z
    .locals 8

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string/jumbo v6, "com.samsung.android.spay"

    const/16 v7, 0x80

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "com.samsung.android.spay.quickgesture"

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v5, "Usefulfeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Samsung Pay supports finger gesture : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v4

    :catch_0
    move-exception v3

    const-string/jumbo v5, "Usefulfeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v5, "Usefulfeature"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private mSwipeToCallSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const v6, 0x7f121b3b

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v4, "com.samsung.android.messaging"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    const-string/jumbo v3, ""

    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_MESSAGE_SUPPORT_ORC"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string/jumbo v4, "Usefulfeature"

    const-string/jumbo v5, "Package : com.samsung.android.messaging"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const v4, 0x7f121b39

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isJapanKDIModel()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v5, 0x1dcd6500

    if-lt v4, v5, :cond_3

    const v4, 0x7f121b3a

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const v4, 0x7f121b38

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private makeOneHandOperationDisablePopup()V
    .locals 11

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f1213c4

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    sget-object v8, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string/jumbo v9, "com.sec.feature.overlaymagnifier"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f120065

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.talkback"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-string/jumbo v8, "\u200f "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f120821

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.google.android.marvin.talkback"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v8, "\u200f "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f120823

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f120094

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.universalswitch"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f120824

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.accesscontrol"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f12003d

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-string/jumbo v9, "com.samsung.android.app.assistantmenu"

    invoke-static {v8, v9}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f120246

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f12082c

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f120080

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f120047

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1030132

    invoke-direct {v0, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v8, 0x7f0d001e

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v8, 0x7f0a0259

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f0a025a

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f1213c3

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$24;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const v10, 0x104000a

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$25;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$25;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$26;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$26;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private makeTalkBackDisablePopup(Landroid/support/v7/preference/Preference;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    const-string/jumbo v1, ""

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f120dfc

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f121c14

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120595

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v6

    aput-object v0, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$18;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$18;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/support/v7/preference/Preference;)V

    const v6, 0x7f121c0e

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$19;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$19;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f1213f7

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private maketurnOffUniversalPopup(Landroid/support/v7/preference/Preference;)V
    .locals 9

    const v8, 0x7f1200aa

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f120dfc

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const v3, 0x7f121c14

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120595

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$21;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$21;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/support/v7/preference/Preference;)V

    const v5, 0x7f121c0e

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$22;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$22;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f1213f7

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private quickCameraDisablePopup()V
    .locals 9

    const v8, 0x7f120f67

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    const v3, 0x7f121c14

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f120595

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f121572

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "double_tab_launch"

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f121c0e

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$30;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$30;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$31;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$31;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$32;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$32;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private removeSafetyPreference(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method private setLinkedDataView()V
    .locals 12

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v9, :cond_5

    new-instance v9, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string/jumbo v10, "com.sec.android.easyMover"

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->checkSmartSwitchSupport(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v9}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string/jumbo v10, "com.sec.android.easyMover"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string/jumbo v9, "flowId"

    const/16 v10, 0x2333

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v6, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v10, 0x7f121998

    iput v10, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v9

    if-eqz v9, :cond_7

    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v9

    :goto_1
    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v10, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    const/4 v0, 0x1

    :cond_0
    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isEasyModeDisplayed(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_3

    new-instance v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v9}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v9, "com.android.settings"

    const-string/jumbo v10, "com.android.settings.Settings$EasyModeAppActivity"

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "flowId"

    const/16 v10, 0x2334

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v10

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v2, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v10, 0x7f1208f5

    iput v10, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "sem_perfomance_mode"

    invoke-static {v9, v10, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    if-eq v5, v9, :cond_3

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v8, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v8

    :cond_2
    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    :cond_3
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string/jumbo v9, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v8, v9, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    if-eqz v8, :cond_8

    :cond_4
    iput-object v11, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    :goto_2
    if-lez v0, :cond_5

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v8, p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_5
    return-void

    :cond_6
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v9, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v9, 0x10000000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v9, "flowId"

    const/16 v10, 0x2333

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v9, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v3, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v9, "Usefulfeature"

    const-string/jumbo v10, "not found activity"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move v9, v8

    goto/16 :goto_1

    :cond_8
    invoke-static {}, Lcom/android/settings/Utils;->isLockscreenMenuTreeForAOD()Z

    move-result v8

    if-eqz v8, :cond_9

    sget-boolean v8, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->sIsSupportNightClock:Z

    xor-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_4

    :cond_9
    new-instance v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v8}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v8, "-nightclock"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string/jumbo v8, "com.samsung.android.app.aodservice.settings.NightClock"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    const-string/jumbo v8, "flowId"

    const/16 v9, 0x1078

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v8, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMetricsCategory()I

    move-result v9

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v4, v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v9, 0x7f1212e8

    iput v9, v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v8, "com.samsung.android.app.edge.setting.NightClock"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3
.end method

.method private setOneHandOperation(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v3, 0x0

    if-ne p1, v5, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "any_screen_enabled"

    invoke-static {v2, v4, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "one_handed_op_wakeup_type"

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    const v2, 0x7f1213cc

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0b039b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-eqz v0, :cond_4

    const/16 v2, 0x3e8

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const v2, 0x7f1213d0

    goto :goto_2

    :cond_3
    const v2, 0x7f1213c1

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3
.end method

.method public static setSupportMccSmartCall()V
    .locals 5

    const/4 v4, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-le v2, v4, :cond_0

    aget-object v2, v0, v4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    aget-object v2, v0, v4

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setVideoEnhancerPreference()V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "hdr_effect"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "sem_perfomance_mode"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isHdmiConnected()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSmartMirroringConnected()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabled(Z)V

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v3, v1}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    if-eqz v1, :cond_5

    const v3, 0x7f121b3e

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabledAppearance(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "pbm_video_enhancer"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    :goto_3
    move v1, v0

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    new-array v4, v5, [Ljava/lang/Object;

    const v5, 0x7f120505

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f120cd3

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setToastMsg(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabledAppearance(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v3, v5}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    goto :goto_2
.end method

.method private smartCaptureDisablePopup()V
    .locals 8

    const v7, 0x7f120065

    const/4 v6, 0x1

    const/4 v5, 0x0

    const v2, 0x7f121c14

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120595

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const v4, 0x7f121991    # 1.9420004E38f

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f121c0e

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$27;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$27;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$28;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$28;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v4, 0x1040000

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$29;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$29;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x10fe

    sput v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE:I

    sget v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    const v1, 0x7f121b3e

    const v3, 0x7f121b3d

    const v2, 0x7f121b37

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string/jumbo v5, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v4, v7, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v4, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "surface_palm_swipe"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_6

    :goto_3
    invoke-virtual {v2, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    sput-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const v13, 0x7f15012a

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setSupportMccSmartCall()V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportMCC()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string/jumbo v13, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v13, "com.samsung.settings.action.talkback_toggled"

    invoke-virtual {v3, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v13, v14, v3, v15, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v6

    const-string/jumbo v13, "pen_settings_title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSpen:Landroid/support/v7/preference/SecPreference;

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isPenAirViewSupported()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_1

    const-string/jumbo v13, "pen_settings_title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v13, "dock_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDock:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v13, "smartscreen_stay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string/jumbo v13, "smartscreen_stay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3
    const-string/jumbo v13, "game_home"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/app/SemDualAppManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v12}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result v13

    if-eqz v13, :cond_5

    const-string/jumbo v13, "dual_app"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualApp:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualApp:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualApp:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_5
    const-string/jumbo v13, "display_airmessage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_6
    const-string/jumbo v13, "key_festival_effect"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_7
    const-string/jumbo v13, "call_message_spam_filter"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_8
    const-string/jumbo v13, "onehand_operation_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_9
    const-string/jumbo v13, "quick_camera_launch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_a
    const-string/jumbo v13, "quick_camera_launch_power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_b
    const-string/jumbo v13, "assist_and_voice_input_advanced"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDeviceAssistantApp:Landroid/support/v7/preference/SecPreferenceScreen;

    const-string/jumbo v13, "pick_up_switch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_c
    const-string/jumbo v13, "pick_up_to_call_out_switch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_d
    const-string/jumbo v13, "screen_recorder"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_e
    const-string/jumbo v13, "smart_capture"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_f
    const-string/jumbo v13, "merged_mute_or_pause_switch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_10
    const-string/jumbo v13, "palm_swipe_switch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_11
    const-string/jumbo v13, "multi_window_setting"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isHongbaoAssistantEnabled(Landroid/content/Context;)Z

    move-result v13

    sput-boolean v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    sget-boolean v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v13, :cond_39

    const-string/jumbo v13, "hongbao_assistant"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_13
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_3a

    const-string/jumbo v13, "galaxy_labs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_14
    :goto_1
    const-string/jumbo v13, "key_applock"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v13, :cond_15

    const-string/jumbo v13, "applock"

    invoke-static {v13}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3b

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_3b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    :goto_2
    if-nez v13, :cond_3c

    const-string/jumbo v13, "key_applock"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_15
    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isPanicModeSupported()Z

    move-result v13

    if-eqz v13, :cond_3f

    const-string/jumbo v13, "key_safety_assistance"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :goto_4
    const-string/jumbo v13, "key_safety_assistance"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_16

    const-string/jumbo v13, "key_safety_assistance"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_17
    const-string/jumbo v13, "key_panic_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPanicMode:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPanicMode:Landroid/support/v7/preference/SecPreference;

    if-eqz v13, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPanicMode:Landroid/support/v7/preference/SecPreference;

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_40

    const v13, 0x7f1213fa

    :goto_5
    invoke-virtual {v14, v13}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    :cond_18
    const-string/jumbo v13, "safetycare_help"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v13, :cond_19

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_19
    const-string/jumbo v13, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v13

    if-eqz v13, :cond_1b

    :cond_1a
    const-string/jumbo v13, "safetycare_help"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removeSafetyPreference(Ljava/lang/String;)V

    :cond_1b
    const-string/jumbo v13, "hdr_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    if-eqz v13, :cond_1c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1c
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v13

    const-string/jumbo v14, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "Galaxy Note7"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_41

    const v13, 0x7f120cd5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    :goto_6
    const-string/jumbo v13, "direct_share"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_42

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v13

    if-eqz v13, :cond_42

    const-string/jumbo v13, "direct_share"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_1d
    :goto_7
    const-string/jumbo v13, "increse_touch_sensetivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v13, :cond_1e

    const-string/jumbo v13, "increse_touch_sensetivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_1e
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->edit:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v13, "quick_dial"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v13, :cond_1f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1f
    const-string/jumbo v13, "swipe_to_call_or_send_messages"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_20
    const-string/jumbo v13, "finger_sensor_gesture"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v13, :cond_21

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_21
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x1120096

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_43

    const-string/jumbo v13, "quick_camera_launch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :goto_8
    invoke-static {}, Lcom/android/settings/Utils;->isPanicModeSupported()Z

    move-result v13

    if-nez v13, :cond_22

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v13

    if-eqz v13, :cond_23

    :cond_22
    const-string/jumbo v13, "quick_camera_launch_power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_23
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGestureSupport(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_24

    const-string/jumbo v13, "finger_sensor_gesture"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_25

    sget v13, Landroid/os/Build$VERSION;->SEM_PLATFORM_INT:I

    const v14, 0x138e4

    if-ge v13, v14, :cond_26

    :cond_25
    const-string/jumbo v13, "swipe_to_call_or_send_messages"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "com.samsung.android.quickassist"

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_27

    const-string/jumbo v13, "quick_dial"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_27
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v13

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "com.samsung.android.game.gametools"

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_28

    if-nez v7, :cond_28

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportGame(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_29

    :cond_28
    const-string/jumbo v13, "game_home"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_29
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v13

    if-nez v13, :cond_2a

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_2b

    :cond_2a
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_2c

    :cond_2b
    const-string/jumbo v13, "display_airmessage"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_2c
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_2d

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "com.samsung.android.myeventcenter"

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_2d

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v13

    if-eqz v13, :cond_2e

    :cond_2d
    const-string/jumbo v13, "key_festival_effect"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_2e
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v13

    if-eqz v13, :cond_2f

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "SMARTMANAGER"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_2f

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    if-eqz v13, :cond_30

    :cond_2f
    const-string/jumbo v13, "call_message_spam_filter"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_30
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v13

    if-nez v13, :cond_31

    if-eqz v6, :cond_32

    :cond_31
    const-string/jumbo v13, "onehand_operation_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "double_tab_launch_component"

    invoke-static {v13, v14}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    const-string/jumbo v13, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    sget-object v14, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_33

    const-string/jumbo v13, "quick_camera_launch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_33
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-static {v13}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v13

    if-eqz v13, :cond_34

    const-string/jumbo v13, "assist_and_voice_input_advanced"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "com.samsung.android.app.scrollcapture"

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "com.samsung.android.app.smartcapture"

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_35

    const-string/jumbo v13, "smart_capture"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "com.sec.app.screenrecorder"

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_36

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_37

    :cond_36
    const-string/jumbo v13, "screen_recorder"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_37
    sget-object v14, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMotionFeatures:[Ljava/lang/String;

    const/4 v13, 0x0

    array-length v15, v14

    :goto_9
    if-ge v13, v15, :cond_44

    aget-object v11, v14, v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v11}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_38

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_38
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    :cond_39
    const-string/jumbo v13, "hongbao_assistant"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3a
    const-string/jumbo v13, "galaxy_labs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/support/v7/preference/SecPreference;

    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/support/v7/preference/SecPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3b
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_3c
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSSecure()Z

    move-result v13

    if-eqz v13, :cond_3d

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "com.samsung.android.app.sprotect"

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_3d

    const-string/jumbo v13, "key_applock"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3d
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSSecure()Z

    move-result v13

    if-eqz v13, :cond_3e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    const v14, 0x7f120226

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Landroid/support/v7/preference/SecPreferenceScreen;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_3

    :cond_3e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    const v14, 0x7f120220

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/SecPreferenceScreen;->setTitle(I)V

    goto :goto_a

    :cond_3f
    const-string/jumbo v13, "key_panic_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_40
    const v13, 0x7f1213fb

    goto/16 :goto_5

    :cond_41
    const v13, 0x7f120cd4

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    goto/16 :goto_6

    :cond_42
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_7

    :cond_43
    const-string/jumbo v13, "quick_camera_launch_power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v13, "assist_and_voice_input_advanced"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_44
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "CscFeature_Setting_ConfigMotionType"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_45

    const-string/jumbo v13, ","

    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v10, v2

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v10, :cond_45

    aget-object v13, v2, v5

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_45
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v13

    const-string/jumbo v14, "com.samsung.android.app.galaxylabs"

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_46

    if-eqz v6, :cond_47

    :cond_46
    const-string/jumbo v13, "galaxy_labs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_47
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v13

    if-nez v13, :cond_48

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_50

    :cond_48
    const-string/jumbo v13, "galaxy_labs"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :goto_c
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_49

    const-string/jumbo v13, "dock_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_49
    if-eqz v12, :cond_4a

    invoke-virtual {v12}, Lcom/samsung/android/app/SemDualAppManager;->isSupported()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_4b

    :cond_4a
    if-nez v12, :cond_4c

    :cond_4b
    const-string/jumbo v13, "dual_app"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_4c
    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKey()Z

    move-result v13

    if-nez v13, :cond_51

    const-string/jumbo v13, "active_key_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_4d
    :goto_d
    const/4 v9, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v8

    if-eqz v8, :cond_4e

    invoke-virtual {v8}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v9

    :cond_4e
    and-int/lit8 v13, v9, 0x8

    if-eqz v13, :cond_4f

    const-string/jumbo v13, "multi_window_setting"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_4f
    new-instance v13, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v13}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_50
    const-string/jumbo v13, "pen_settings_title"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v13, "dock_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v13, "smartscreen_stay"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v13, "key_panic_mode"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v13, "key_safety_assistance"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v13, "safetycare_help"

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removeSafetyPreference(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_51
    invoke-static {}, Lcom/android/settings/Utils;->hasXcoverKeyGridViewConcept()Z

    move-result v13

    if-eqz v13, :cond_4d

    const-string/jumbo v13, "active_key_settings"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v13

    const v14, 0x7f1221fb

    invoke-virtual {v13, v14}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    goto :goto_d
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onMultiWindowModeChanged(Z)V

    const-string/jumbo v0, "Usefulfeature"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowModeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setVideoEnhancerPreference()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_e

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mInteractionControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_3
    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGestureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "AdvancedFeatures"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v0, :cond_3

    goto/16 :goto_0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v12, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "double_tab_launch"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string/jumbo v14, "com.android.settings"

    const-string/jumbo v15, "UFQC"

    const/16 v16, 0x3e8

    invoke-static/range {v13 .. v16}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b041c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    sput v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_8

    const/16 v13, 0x3e8

    :goto_2
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_0
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->edit:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v15, "quick_dial"

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-interface {v14, v15, v13}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v13, "com.samsung.android.action.quickdial"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v14, "status"

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v5, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b0001

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_49

    const/16 v13, 0x3e8

    :goto_4
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "auto_adjust_touch"

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_4a

    const/4 v13, 0x1

    :goto_5
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/high16 v15, 0x7f0b0000

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_4b

    const/16 v13, 0x3e8

    :goto_6
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "swipe_to_call_message"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_4c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    const v14, 0x7f121b3e

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_3
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b0004

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_4d

    const/16 v13, 0x3e8

    :goto_8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "fingerprint_gesture_quick"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string/jumbo v10, ""

    if-eqz v6, :cond_4e

    const v13, 0x7f121b3e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v10

    :goto_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v13, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v13, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v13, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    const/4 v13, 0x1

    return v13

    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string/jumbo v14, "com.android.settings"

    const-string/jumbo v15, "UFQC"

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "double_tab_launch"

    const/4 v15, 0x3

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "lcd_curtain"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_a

    const/4 v13, 0x1

    if-le v11, v13, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->quickCameraDisablePopup()V

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b041c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    sput v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_c

    const/16 v13, 0x3e8

    :goto_b
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string/jumbo v14, "com.android.settings"

    const-string/jumbo v15, "UFQC"

    const/16 v16, 0x3e8

    invoke-static/range {v13 .. v16}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "double_tab_launch"

    add-int/lit8 v15, v11, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_a

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const-string/jumbo v14, "com.android.settings"

    const-string/jumbo v15, "UFQC"

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "double_tab_launch"

    add-int/lit8 v15, v11, -0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_a

    :cond_c
    const/4 v13, 0x0

    goto :goto_b

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_e

    const v13, 0x7f121b3e

    :goto_c
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b047c

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_10

    const/16 v13, 0x3e8

    :goto_d
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "motion_pick_up"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_e
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v13

    if-eqz v13, :cond_f

    const v13, 0x7f121466

    goto :goto_c

    :cond_f
    const v13, 0x7f121465

    goto :goto_c

    :cond_10
    const/4 v13, 0x0

    goto :goto_d

    :cond_11
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_12

    const v13, 0x7f121b3e

    :goto_f
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_e

    :cond_12
    const v13, 0x7f121b3d

    goto :goto_f

    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_17

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_14

    const v13, 0x7f121b3e

    :goto_10
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b019e

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_16

    const/16 v13, 0x3e8

    :goto_11
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_12
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "motion_pick_up_to_call_out"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_14
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v13

    if-eqz v13, :cond_15

    const v13, 0x7f121469

    goto :goto_10

    :cond_15
    const v13, 0x7f121468

    goto :goto_10

    :cond_16
    const/4 v13, 0x0

    goto :goto_11

    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_18

    const v13, 0x7f121b3e

    :goto_13
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_12

    :cond_18
    const v13, 0x7f121b3d

    goto :goto_13

    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_1b

    const v13, 0x7f121b3e

    :goto_14
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b01f3

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_1c

    const/16 v13, 0x3e8

    :goto_15
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_16
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "motion_merged_mute_pause"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v13

    if-nez v13, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "motion_overturn"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1a
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const/high16 v14, 0x200000

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "surface_palm_touch"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_1b
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v13

    goto :goto_14

    :cond_1c
    const/4 v13, 0x0

    goto :goto_15

    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_1e

    const v13, 0x7f121b3e

    :goto_17
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_16

    :cond_1e
    const v13, 0x7f121b3d

    goto :goto_17

    :cond_1f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_26

    const/4 v13, 0x1

    if-ne v12, v13, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->maketurnOffUniversalPopup(Landroid/support/v7/preference/Preference;)V

    goto/16 :goto_3

    :cond_20
    const/4 v13, 0x1

    if-ne v12, v13, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_21

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->makeTalkBackDisablePopup(Landroid/support/v7/preference/Preference;)V

    goto/16 :goto_3

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "surface_palm_swipe"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_24

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_22

    const v13, 0x7f121b3e

    :goto_18
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b03c4

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_23

    const/16 v13, 0x3e8

    :goto_19
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_22
    const v13, 0x7f121b37

    goto :goto_18

    :cond_23
    const/4 v13, 0x0

    goto :goto_19

    :cond_24
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_25

    const v13, 0x7f121b3e

    :goto_1a
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_25
    const v13, 0x7f121b3d

    goto :goto_1a

    :cond_26
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "finger_magnifier"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_27

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_27

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->smartCaptureDisablePopup()V

    goto/16 :goto_3

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "enable_smart_capture"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_2a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_28

    const v13, 0x7f121b3e

    :goto_1b
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b047f

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_29

    const/16 v13, 0x3e8

    :goto_1c
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_28
    const v13, 0x7f121989

    goto :goto_1b

    :cond_29
    const/4 v13, 0x0

    goto :goto_1c

    :cond_2a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_2b

    const v13, 0x7f121b3e

    :goto_1d
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_2b
    const v13, 0x7f121b3d

    goto :goto_1d

    :cond_2c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_2d

    const v13, 0x7f121b3e

    :goto_1e
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "direct_share"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b01a1

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_2e

    const/16 v13, 0x3e8

    :goto_1f
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_2d
    const v13, 0x7f120830

    goto :goto_1e

    :cond_2e
    const/4 v13, 0x0

    goto :goto_1f

    :cond_2f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_34

    const/4 v13, 0x1

    if-ne v12, v13, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_30

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->maketurnOffUniversalPopup(Landroid/support/v7/preference/Preference;)V

    goto/16 :goto_3

    :cond_30
    const/4 v13, 0x1

    if-ne v12, v13, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_31

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->makeTalkBackDisablePopup(Landroid/support/v7/preference/Preference;)V

    goto/16 :goto_3

    :cond_31
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "intelligent_sleep_mode"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_32

    const v13, 0x7f121b3e

    :goto_20
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b0483

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_33

    const/16 v13, 0x3e8

    :goto_21
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_32
    const v13, 0x7f121995

    goto :goto_20

    :cond_33
    const/4 v13, 0x0

    goto :goto_21

    :cond_34
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3a

    const/4 v13, 0x1

    if-ne v12, v13, :cond_39

    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v13

    const-string/jumbo v14, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v13, v2, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_35

    const/4 v1, 0x0

    :cond_35
    if-nez v1, :cond_37

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v15, "any_screen_enabled"

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v13, v15, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_36

    const/4 v13, 0x1

    :goto_22
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f1213c2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    const/4 v13, 0x0

    return v13

    :cond_36
    const/4 v13, 0x0

    goto :goto_22

    :cond_37
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isReadyOneHandedOperationStatusEnable()Z

    move-result v13

    if-nez v13, :cond_38

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->makeOneHandOperationDisablePopup()V

    goto/16 :goto_3

    :cond_38
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setOneHandOperation(I)V

    goto/16 :goto_3

    :cond_39
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setOneHandOperation(I)V

    goto/16 :goto_3

    :cond_3a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3d

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v13

    if-eqz v13, :cond_3c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_3b

    const v13, 0x7f121b3e

    :goto_23
    invoke-virtual {v14, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :goto_24
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "airmessage_on"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_3b
    const v13, 0x7f120122

    goto :goto_23

    :cond_3c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_24

    :cond_3d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_40

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v14, v13}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "hdr_effect"

    invoke-static {v13, v14, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_3e

    const v13, 0x7f121b3e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v13

    :goto_25
    invoke-virtual {v14, v13}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v15, 0x7f0b0273

    invoke-virtual {v13, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_3f

    const/16 v13, 0x3e8

    :goto_26
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v14, v15, v13}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_3e
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    goto :goto_25

    :cond_3f
    const/4 v13, 0x0

    goto :goto_26

    :cond_40
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "red_packet_do_not_show"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_41

    const/4 v9, 0x1

    :goto_27
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "hongbao_assistant"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_42

    const/4 v3, 0x1

    :goto_28
    move-object/from16 v13, p2

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string/jumbo v13, "Usefulfeature"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "onPreferenceChange  showDialog:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " isChecked:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " enabled:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v3, v6, :cond_48

    if-eqz v6, :cond_43

    if-eqz v9, :cond_43

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v13, "com.samsung.hongbaoassistant"

    const-string/jumbo v14, "com.samsung.hongbaoassistant.ConfirmActivity"

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v13, 0x0

    return v13

    :cond_41
    const/4 v9, 0x0

    goto :goto_27

    :cond_42
    const/4 v3, 0x0

    goto :goto_28

    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "hongbao_assistant"

    if-eqz v6, :cond_44

    const/4 v13, 0x1

    :goto_29
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "red_packet_mode"

    if-eqz v6, :cond_45

    const/4 v13, 0x1

    :goto_2a
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v13, "com.samsung.hongbaoassistant"

    const-string/jumbo v14, "com.samsung.hongbaoassistant.HongbaoNotificationService"

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v6, :cond_46

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_2b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0090

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0b0091

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v13, "com.samsung.HONGBAO_ASSISTANT_LOGGING_ACTION"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "screen_id"

    invoke-virtual {v7, v13, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "event_id"

    invoke-virtual {v7, v13, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v14, "value_int"

    if-eqz v6, :cond_47

    const/4 v13, 0x1

    :goto_2c
    invoke-virtual {v7, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13, v7}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_44
    const/4 v13, 0x0

    goto :goto_29

    :cond_45
    const/4 v13, 0x0

    goto :goto_2a

    :cond_46
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto :goto_2b

    :cond_47
    const/4 v13, 0x0

    goto :goto_2c

    :cond_48
    const-string/jumbo v13, "Usefulfeature"

    const-string/jumbo v14, "Changed form Quick Button."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_49
    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_4a
    const/4 v13, 0x0

    goto/16 :goto_5

    :cond_4b
    const/4 v13, 0x0

    goto/16 :goto_6

    :cond_4c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    sget-object v14, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_4d
    const/4 v13, 0x0

    goto/16 :goto_8

    :cond_4e
    sget-object v13, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportSpay(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_4f

    const v13, 0x7f120b14

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_9

    :cond_4f
    const v13, 0x7f120b15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_9
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.game.gamehome.action.SETTING"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b026a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in GameHome"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDualApp:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "com.samsung.android.da.daagent"

    const-string/jumbo v4, "com.samsung.android.da.daagent.activity.DualAppActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in DualApp"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :try_start_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    const-string/jumbo v4, "com.bst.airmessage"

    const-string/jumbo v5, "com.bst.airmessage.settings.AirMessageSettings"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v2, 0x1

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isCoverVerified(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    :cond_3
    const/4 v2, 0x0

    :cond_4
    const-string/jumbo v3, "S View cover attached"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in mDisplayAirmessage"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :try_start_3
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.myeventcenter.MY_EVENT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in mFestivalEffect"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :try_start_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.app.firewall"

    const-string/jumbo v4, "com.sec.android.app.firewall.spamfilter.SpamFilterSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    :catch_4
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in CalMsgSpamFiter"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    :try_start_5
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.app.screenrecorder.START_SETTINGS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in ScreenRecorder"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0400

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :try_start_6
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.android.app.safetyassurance"

    const-string/jumbo v4, "com.sec.android.app.safetyassurance.settings.SafetyAssuranceSetting"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in SendSOSMessage"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    :try_start_7
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.app.galaxylabs"

    const-string/jumbo v4, "com.samsung.android.app.galaxylabs.GalaxyLabsMainActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in GalaxyLabs"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f120fe0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_b
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.applock"

    const-string/jumbo v4, "com.samsung.android.applock.settings.AppLockSettingsActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.hongbaoassistant"

    const-string/jumbo v4, "com.samsung.hongbaoassistant.settings.HongbaoAssistantActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    goto/16 :goto_0

    :catch_8
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in HongbaoAssistant"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->inEnabledAppearance()Z

    move-result v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    const-string/jumbo v2, "com.samsung.android.settings.usefulfeature.HDReffectSettings"

    const v3, 0x7f120cd1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 31

    invoke-super/range {p0 .. p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v23, v0

    const-string/jumbo v27, "false"

    const/16 v28, 0x0

    aput-object v27, v23, v28

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v27

    const-string/jumbo v28, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v29, "isScreenCaptureEnabled"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v13

    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v13, v0, :cond_0

    const/16 v27, 0x1

    move/from16 v0, v27

    if-eq v13, v0, :cond_0

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "access_control_enabled"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v21

    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_1

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "current_sec_theme_package_festival_enabled"

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_20

    const v27, 0x7f121b3e

    :goto_0
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "spam_filter_enable"

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_21

    const v27, 0x7f121b3e

    :goto_1
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "spam_filter_enable"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    if-nez v27, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "double_tab_launch"

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_22

    const/16 v27, 0x1

    :goto_2
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    if-nez v27, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "double_tab_launch"

    const/16 v29, 0x3

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    rem-int/lit8 v27, v5, 0x2

    if-eqz v27, :cond_24

    const/4 v4, 0x1

    :goto_4
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_5

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    const/4 v4, 0x0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "double_tab_launch"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_28

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v27

    if-eqz v27, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121466

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_33

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v27

    if-eqz v27, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121469

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_8
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_9

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_3d

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_9
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_a

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    if-eqz v27, :cond_45

    const-string/jumbo v27, "Usefulfeature"

    const-string/jumbo v28, "MDM: Screen Capture Disabled"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b37

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "surface_palm_swipe"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "surface_palm_swipe"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "enable_smart_capture"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_4c

    const/16 v20, 0x1

    :goto_b
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_4d

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121989

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "enable_smart_capture"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-nez v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4f

    :cond_c
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "access_control_enabled"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mInteractionControlObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_e

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v27

    const-string/jumbo v28, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v0, v9, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_50

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b37

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_e
    :goto_e
    sget-boolean v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v27, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "hongbao_assistant"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_51

    const/4 v12, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v12, :cond_52

    const v27, 0x7f121b3e

    :goto_10
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "hongbao_assistant"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->appLockSummaryUpdate()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "app_lock_enabled"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLockObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "send_emergency_message"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_53

    const/16 v19, 0x1

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v28, v0

    if-eqz v19, :cond_54

    const v27, 0x7f121b3e

    :goto_12
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "send_emergency_message"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessageObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "direct_share"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_55

    const/4 v10, 0x1

    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v10, :cond_56

    const v27, 0x7f121b3e

    :goto_14
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "intelligent_sleep_mode"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_57

    const/16 v24, 0x1

    :goto_15
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_13

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    const/16 v24, 0x0

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v24, :cond_58

    const v27, 0x7f121b3e

    :goto_16
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "intelligent_sleep_mode"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "any_screen_enabled"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_59

    const/4 v7, 0x1

    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "one_handed_op_wakeup_type"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_5a

    const/4 v8, 0x1

    :goto_18
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_5b

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    const/4 v7, 0x0

    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v7, :cond_5d

    if-eqz v8, :cond_5c

    const v27, 0x7f1213cc

    :goto_1a
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "any_screen_enabled"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "airmessage_on"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_5e

    const/4 v6, 0x1

    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v6, :cond_5f

    const v27, 0x7f121b3e

    :goto_1c
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setVideoEnhancerPreference()V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_18

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_60

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_18
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v27, v0

    const-string/jumbo v28, "quick_dial"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "swipe_to_call_message"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_62

    const/16 v26, 0x1

    :goto_1e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v26, :cond_63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b3e

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_1a
    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "swipe_to_call_message"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "fingerprint_gesture_quick"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_64

    const/4 v11, 0x1

    :goto_20
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_1c

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    const/4 v11, 0x0

    :cond_1c
    const-string/jumbo v25, ""

    if-eqz v11, :cond_65

    const v27, 0x7f121b3e

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v25

    :goto_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGesture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "fingerprint_gesture_quick"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFingerSensorGestureObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1e

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Landroid/app/ActivityManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_1e
    :goto_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1f

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_1f

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSafetycareHelp:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setLinkedDataView()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    move-object/from16 v29, v0

    const-string/jumbo v30, "AdvancedFeatures"

    invoke-virtual/range {v27 .. v30}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void

    :cond_20
    const v27, 0x7f121b3d

    goto/16 :goto_0

    :cond_21
    const v27, 0x7f121b3d

    goto/16 :goto_1

    :cond_22
    const/16 v27, 0x0

    goto/16 :goto_2

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto/16 :goto_3

    :cond_24
    const/4 v4, 0x0

    goto/16 :goto_4

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunchPower:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    goto/16 :goto_5

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121465

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_6

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b3d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_6

    :cond_28
    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v27

    if-eqz v27, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121466

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_6

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121465

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_6

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b3d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_6

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "motion_pick_up"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_2c

    const/16 v17, 0x1

    :goto_23
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v17, :cond_2d

    const v27, 0x7f121b3e

    :goto_24
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_6

    :cond_2c
    const/16 v17, 0x0

    goto :goto_23

    :cond_2d
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v27

    if-eqz v27, :cond_2e

    const v27, 0x7f121466

    goto :goto_24

    :cond_2e
    const v27, 0x7f121465

    goto :goto_24

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v17, :cond_30

    const v27, 0x7f121b3e

    :goto_25
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_6

    :cond_30
    const v27, 0x7f121b3d

    goto :goto_25

    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121468

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_7

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b3d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_7

    :cond_33
    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v27

    if-eqz v27, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121469

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_7

    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121468

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_7

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b3d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_7

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "motion_pick_up_to_call_out"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_37

    const/16 v18, 0x1

    :goto_26
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v18, :cond_38

    const v27, 0x7f121b3e

    :goto_27
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_7

    :cond_37
    const/16 v18, 0x0

    goto :goto_26

    :cond_38
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v27

    if-eqz v27, :cond_39

    const v27, 0x7f121469

    goto :goto_27

    :cond_39
    const v27, 0x7f121468

    goto :goto_27

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v18, :cond_3b

    const v27, 0x7f121b3e

    :goto_28
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_7

    :cond_3b
    const v27, 0x7f121b3d

    goto :goto_28

    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b3d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_8

    :cond_3d
    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_8

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b3d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_8

    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "motion_merged_mute_pause"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_40

    const/4 v15, 0x1

    :goto_29
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v15, :cond_41

    const v27, 0x7f121b3e

    :goto_2a
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_8

    :cond_40
    const/4 v15, 0x0

    goto :goto_29

    :cond_41
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSummaryForMutePauseSwitch()I

    move-result v27

    goto :goto_2a

    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v15, :cond_43

    const v27, 0x7f121b3e

    :goto_2b
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_8

    :cond_43
    const v27, 0x7f121b3d

    goto :goto_2b

    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b3d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_9

    :cond_45
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_47

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b37

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_a

    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b3d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_a

    :cond_47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "surface_palm_swipe"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_48

    const/16 v16, 0x1

    :goto_2c
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v16, :cond_49

    const v27, 0x7f121b3e

    :goto_2d
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_a

    :cond_48
    const/16 v16, 0x0

    goto :goto_2c

    :cond_49
    const v27, 0x7f121b37

    goto :goto_2d

    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v16, :cond_4b

    const v27, 0x7f121b3e

    :goto_2e
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_a

    :cond_4b
    const v27, 0x7f121b3d

    goto :goto_2e

    :cond_4c
    const/16 v20, 0x0

    goto/16 :goto_b

    :cond_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v20, :cond_4e

    const v27, 0x7f121b3e

    :goto_2f
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_c

    :cond_4e
    const v27, 0x7f121989

    goto :goto_2f

    :cond_4f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-nez v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-nez v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_d

    goto/16 :goto_d

    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f121b3d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_e

    :cond_51
    const/4 v12, 0x0

    goto/16 :goto_f

    :cond_52
    const v27, 0x7f121b3d

    goto/16 :goto_10

    :cond_53
    const/16 v19, 0x0

    goto/16 :goto_11

    :cond_54
    const v27, 0x7f121b3d

    goto/16 :goto_12

    :cond_55
    const/4 v10, 0x0

    goto/16 :goto_13

    :cond_56
    const v27, 0x7f120830

    goto/16 :goto_14

    :cond_57
    const/16 v24, 0x0

    goto/16 :goto_15

    :cond_58
    const v27, 0x7f121995

    goto/16 :goto_16

    :cond_59
    const/4 v7, 0x0

    goto/16 :goto_17

    :cond_5a
    const/4 v8, 0x0

    goto/16 :goto_18

    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_19

    :cond_5c
    const v27, 0x7f1213d0

    goto/16 :goto_1a

    :cond_5d
    const v27, 0x7f1213c1

    goto/16 :goto_1a

    :cond_5e
    const/4 v6, 0x0

    goto/16 :goto_1b

    :cond_5f
    const v27, 0x7f120122

    goto/16 :goto_1c

    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "auto_adjust_touch"

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_61

    const/16 v27, 0x1

    :goto_30
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "auto_adjust_touch"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_1d

    :cond_61
    const/16 v27, 0x0

    goto :goto_30

    :cond_62
    const/16 v26, 0x0

    goto/16 :goto_1e

    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallorSendMessages:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    sget-object v28, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSwipeToCallSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1f

    :cond_64
    const/4 v11, 0x0

    goto/16 :goto_20

    :cond_65
    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportSpay(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_66

    const v27, 0x7f120b14

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_21

    :cond_66
    const v27, 0x7f120b15

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_21

    :cond_67
    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_68

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_22

    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_22
.end method
