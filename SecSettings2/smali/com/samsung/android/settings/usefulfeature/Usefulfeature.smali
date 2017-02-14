.class public Lcom/samsung/android/settings/usefulfeature/Usefulfeature;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "Usefulfeature.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
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
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static SETTINGS_ADVANCEDFEATURE:I

.field private static SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

.field private static SETTINGS_ADVANCEDFEATURE_SMARTCALL:I

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mHdrSummary:Ljava/lang/String;

.field private static mHongbaoAssistantEnabled:Z

.field private static mHongbaoEnabled:Z

.field public static final mMotionFeatures:[Ljava/lang/String;

.field private static mSupportMcc:[Ljava/lang/String;


# instance fields
.field edit:Landroid/content/SharedPreferences$Editor;

.field private mAccelerateHongbaoReceiving:Landroid/preference/Preference;

.field private mAccelerateHongbaoReceivingObserver:Landroid/database/ContentObserver;

.field private mAllDisabledDialog:Landroid/app/AlertDialog;

.field private mAppLock:Landroid/preference/PreferenceScreen;

.field private final mAppLockObserver:Landroid/database/ContentObserver;

.field private mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

.field private mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

.field private mCategoryFour:Landroid/preference/PreferenceCategory;

.field private mCategoryThree:Landroid/preference/PreferenceCategory;

.field private mCategoryTwo:Landroid/preference/PreferenceCategory;

.field private mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mDock:Landroid/preference/Preference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mFestivalEffect:Landroid/preference/PreferenceScreen;

.field private mGalaxyLabs:Landroid/preference/Preference;

.field private mGameHome:Landroid/preference/PreferenceScreen;

.field private mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

.field private mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mHongbaoAssistantObserver:Landroid/database/ContentObserver;

.field private mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

.field private mIdentifyUnsavedNumbersObserver:Landroid/database/ContentObserver;

.field private mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

.field private mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mMultiWindowPref:Landroid/preference/PreferenceScreen;

.field private mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mOneHandedOperationObserver:Landroid/database/ContentObserver;

.field private mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

.field private mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mQuickCameraLaunch:Landroid/preference/SwitchPreference;

.field private mQuickDial:Landroid/preference/SwitchPreference;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mScreenRecorder:Landroid/preference/PreferenceScreen;

.field private mSendSOSMessage:Landroid/preference/Preference;

.field private mSendSOSMessageObserver:Landroid/database/ContentObserver;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

.field private mSmartCaptureObserver:Landroid/database/ContentObserver;

.field private mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

.field private mSmartStayObserver:Landroid/database/ContentObserver;

.field private mSpen:Landroid/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTouchSensitivityObserver:Landroid/database/ContentObserver;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get10()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoEnabled:Z

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get19(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDock:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)Lcom/android/settings/SecSettingsSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    return-object v0
.end method

.method static synthetic -get9()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    return v0
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

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportMCC()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportSmartCall()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->appLockSummaryUpdate()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v3, "pick_up_to_call_out_switch"

    aput-object v3, v0, v2

    const-string/jumbo v3, "pick_up_switch"

    aput-object v3, v0, v1

    const-string/jumbo v3, "merged_mute_or_pause_switch"

    const/4 v4, 0x2

    aput-object v3, v0, v4

    const-string/jumbo v3, "palm_swipe_switch"

    const/4 v4, 0x3

    aput-object v3, v0, v4

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMotionFeatures:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "hongbao"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_RIL_ConfigKeepRrcConnection"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoEnabled:Z

    const-string/jumbo v0, "hongbao_assistant"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_RIL_ConfigKeepRrcConnection"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    sput-boolean v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$15;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;

    invoke-direct {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$16;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

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

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$4;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessageObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$5;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceivingObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$6;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$7;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbersObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$8;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$9;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$9;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLockObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$10;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$11;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$12;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$13;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

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

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b18ae

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    const v2, 0x7f0b18af

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto :goto_0
.end method

.method public static checkMccSmartCall(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_2

    :cond_1
    return v2

    :cond_2
    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_4

    aget-object v0, v3, v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v1, 0x1

    :cond_4
    const-string/jumbo v2, "Usefulfeature"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkMccSmartCall : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static checkSmartSwitchSupport(Landroid/content/Context;)Z
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v3, "device_policy"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "DeviceOwner"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Common_ConfigSmartSwitchFunction"

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "setupwizard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "none"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "SS is not supported"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_2
    const/4 v3, 0x1

    return v3
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

.method public static getInsertedSimCard()I
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSimCardInserted(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static getMultiSimIccType(I)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, "0"

    :try_start_0
    const-string/jumbo v2, "ril.ICC_TYPE"

    const-string/jumbo v3, "0"

    invoke-static {p0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "0"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "0"

    goto :goto_0
.end method

.method public static getSimMcc()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSimMccMncReady()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getSimMcc(I)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSimMccMncReady(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
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

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string/jumbo v13, "com.sec.feature.overlaymagnifier"

    invoke-static {v12, v13}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

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

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "finger_magnifier"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    const/4 v6, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_6

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

    if-ne v12, v13, :cond_7

    const/4 v0, 0x1

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "assistant_menu"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_8

    const/4 v1, 0x1

    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "direct_access"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_9

    const/4 v3, 0x1

    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "accessibility_autoclick_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_a

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
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    const/4 v11, 0x0

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    const/4 v1, 0x0

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public static isSimCardInserted(I)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getMultiSimIccType(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isSimCardStatusOn(I)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x1

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSimCardInserted(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_4

    if-ne p0, v3, :cond_4

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_2

    if-nez p0, :cond_2

    sget-object v1, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "phone1_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimMccMncReady()Z
    .locals 2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public static isSimMccMncReady(I)Z
    .locals 2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private static isSupportMCC()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    if-le v4, v3, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportSmartCall()Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, v0, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static isSupportMccSmartCall()Z
    .locals 10

    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSimMcc()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "persist.radio.multisim.config"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "dsds"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "tsts"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "dsda"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getInsertedSimCard()I

    move-result v7

    if-le v7, v6, :cond_2

    invoke-static {v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSimCardStatusOn(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSimCardStatusOn(I)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSimMcc(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSimMcc(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->checkMccSmartCall(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->checkMccSmartCall(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v7, "Usefulfeature"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isSupportMccSmartCall mSim1Support : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", mSim2Support : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_1

    :goto_0
    return v3

    :cond_1
    move v3, v6

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->checkMccSmartCall(Ljava/lang/String;)Z

    move-result v6

    return v6
.end method

.method private static isSupportSmartCall()Z
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string/jumbo v5, "CscFeature_Common_ConfigSvcProviderForUnknownNumber"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v4, v1, v6

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.samsung.android.smartcallprovider"

    invoke-static {v4, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    array-length v4, v0

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    const-string/jumbo v4, "off"

    aget-object v5, v0, v6

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "off"

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return v6

    :cond_1
    return v3
.end method

.method private makeOneHandOperationDisablePopup()V
    .locals 11

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b0b57

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "com.sec.feature.overlaymagnifier"

    invoke-static {v8, v9}, Landroid/util/GeneralUtil;->hasSystemFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    if-nez v8, :cond_0

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b022c

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

    const v8, 0x7f0b0244

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

    const v8, 0x7f0b0243

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b0228

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

    const v8, 0x7f0b0245

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

    const v8, 0x7f0b02b4

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

    const v8, 0x7f0b01eb

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0b0241

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b14d6

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b14e8

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

    const v8, 0x7f04001b

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v8, 0x7f11010d

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f11010e

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b0b58

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

.method private makeTalkBackDisablePopup(Landroid/preference/Preference;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    const-string/jumbo v1, ""

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f0b0598

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f0b0414

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b0415

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

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$18;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/preference/Preference;)V

    const v6, 0x7f0b0416

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

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$20;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/preference/Preference;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, 0x7f0b08f4

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private maketurnOffUniversalPopup(Landroid/preference/Preference;)V
    .locals 9

    const v8, 0x7f0b023f

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->dismissAllDialog()V

    const-string/jumbo v0, ""

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0b0598

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    const v3, 0x7f0b0414

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b0415

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

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$21;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/preference/Preference;)V

    const v5, 0x7f0b0416

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

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$23;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;Landroid/preference/Preference;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAllDisabledDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0b08f4

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
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

    const v2, 0x7f0b0b52

    :goto_2
    invoke-virtual {v4, v2}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f100188

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
    const v2, 0x7f0b0b50

    goto :goto_2

    :cond_3
    const v2, 0x7f0b03fd

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

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    aget-object v2, v0, v4

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSupportMcc:[Ljava/lang/String;

    goto :goto_0
.end method

.method private smartCaptureDisablePopup()V
    .locals 11

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b03eb

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "\u2022 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0b022c

    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1030132

    invoke-direct {v0, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    const v8, 0x7f04001b

    const/4 v9, 0x0

    invoke-virtual {v4, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v8, 0x7f11010d

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v8, 0x7f11010e

    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const v10, 0x7f0b0293

    invoke-virtual {v8, v10, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x104000a

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$27;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$27;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$28;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$28;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    const/high16 v10, 0x1040000

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$29;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature$29;-><init>(Lcom/samsung/android/settings/usefulfeature/Usefulfeature;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureDisableDialog:Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100185

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE:I

    sget v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.sec.android.easyMover"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->checkSmartSwitchSupport(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v6}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string/jumbo v7, "com.sec.android.easyMover"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v4, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v7, 0x7f0b0b02

    iput v7, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_EASY_MODE"

    invoke-virtual {v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v6}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "com.android.settings"

    const-string/jumbo v7, "com.android.settings.Settings$EasyModeAppActivity"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v1, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v7, 0x7f0b05dd

    iput v7, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v6

    const-string/jumbo v7, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v6}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    iput-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v6, "-nightclock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v6, "com.samsung.android.app.aodservice.settings.NightClock"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v3, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    const v7, 0x7f0b03ef

    iput v7, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :cond_2
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void

    :cond_3
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v6, "com.sec.android.easyMover.LAUNCH_SMART_SWITCH"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    iput-object v2, v6, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v6, "Usefulfeature"

    const-string/jumbo v7, "not found activity"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v6, "com.samsung.android.app.edge.setting.NightClock"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    const v3, 0x7f0b18af

    const v1, 0x7f0b18ae

    const v2, 0x7f0b040d

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

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
    .locals 14

    const/4 v10, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "phone"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const v9, 0x7f080135

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->addPreferencesFromResource(I)V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setSupportMccSmartCall()V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportMCC()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    iget-object v11, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v11, v2, v12, v12}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v4

    const-string/jumbo v9, "pen_settings_title"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSpen:Landroid/preference/Preference;

    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isPenAirViewSupported()Z

    move-result v9

    if-eqz v9, :cond_2f

    :cond_1
    :goto_0
    const-string/jumbo v9, "dock_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDock:Landroid/preference/Preference;

    const-string/jumbo v9, "smartscreen_stay"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isT4RModel()Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "smartscreen_stay"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_3
    const-string/jumbo v9, "game_home"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_4
    const-string/jumbo v9, "display_airmessage"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_5

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_5
    const-string/jumbo v9, "key_festival_effect"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v13}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_6
    const-string/jumbo v9, "identify_unsaved_numbers"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_8

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    const v11, 0x7f0b03fb

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    :cond_7
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v13}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_8
    const-string/jumbo v9, "call_message_spam_filter"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v13}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_9
    const-string/jumbo v9, "category_two"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCategoryTwo:Landroid/preference/PreferenceCategory;

    const-string/jumbo v9, "onehand_operation_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_a
    const-string/jumbo v9, "category_three"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCategoryThree:Landroid/preference/PreferenceCategory;

    const-string/jumbo v9, "quick_camera_launch"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_b
    const-string/jumbo v9, "pick_up_switch"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_c

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_c
    const-string/jumbo v9, "pick_up_to_call_out_switch"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_d

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_d
    const-string/jumbo v9, "screen_recorder"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_e
    const-string/jumbo v9, "smart_capture"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_f
    const-string/jumbo v9, "merged_mute_or_pause_switch"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_10

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_10
    const-string/jumbo v9, "palm_swipe_switch"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_11

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_11
    const-string/jumbo v9, "multi_window_setting"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMultiWindowPref:Landroid/preference/PreferenceScreen;

    sget-boolean v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoEnabled:Z

    if-eqz v9, :cond_30

    const-string/jumbo v9, "accelerate_hongbao_receiving"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_12
    :goto_1
    sget-boolean v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v9, :cond_31

    const-string/jumbo v9, "hongbao_assistant"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_14

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_13
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_14
    :goto_2
    const-string/jumbo v9, "category_four"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCategoryFour:Landroid/preference/PreferenceCategory;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_32

    const-string/jumbo v9, "galaxy_labs"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_15
    :goto_3
    const-string/jumbo v9, "key_applock"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_16

    const-string/jumbo v9, "applock"

    invoke-static {v9}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_33

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    :goto_4
    if-nez v9, :cond_34

    const-string/jumbo v9, "key_applock"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_16
    :goto_5
    invoke-static {}, Lcom/android/settings/Utils;->isPanicModeSupported()Z

    move-result v9

    if-eqz v9, :cond_35

    const-string/jumbo v9, "key_safety_assistance"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :goto_6
    const-string/jumbo v9, "key_safety_assistance"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isSendSOSMessageSupported(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_17

    const-string/jumbo v9, "key_safety_assistance"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_17
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    if-eqz v9, :cond_18

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    invoke-virtual {v9, v13}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_18
    const-string/jumbo v9, "hdr_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    if-eqz v9, :cond_19

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_19
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string/jumbo v11, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v9, v11}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "Galaxy Note7"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_36

    const v9, 0x7f0b0409

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    :goto_7
    const-string/jumbo v9, "direct_share"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SecSettingsSwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v9, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_37

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_37

    const-string/jumbo v9, "direct_share"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_1a
    :goto_8
    const-string/jumbo v9, "increse_touch_sensetivity"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1b

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v9

    if-eqz v9, :cond_38

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1b
    :goto_9
    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->edit:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v9, "quick_dial"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    if-eqz v9, :cond_1c

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    invoke-virtual {v9, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1c
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v11, "com.samsung.android.quickassist"

    invoke-static {v9, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1d

    const-string/jumbo v9, "quick_dial"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_1d
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v11, "com.samsung.android.game.gametools"

    invoke-static {v9, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1e

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v9

    if-eqz v9, :cond_1f

    :cond_1e
    const-string/jumbo v9, "game_home"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_1f
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCseriesUX()Z

    move-result v9

    if-nez v9, :cond_20

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_39

    :cond_20
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v11, "CscFeature_Common_EnableAirMessage"

    invoke-virtual {v9, v11}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_39

    :goto_a
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v9

    if-eqz v9, :cond_21

    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "com.samsung.android.myeventcenter"

    invoke-static {v9, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_21

    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v9

    if-eqz v9, :cond_22

    :cond_21
    const-string/jumbo v9, "key_festival_effect"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_22
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-nez v9, :cond_23

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportSmartCall()Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-nez v9, :cond_24

    :cond_23
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v11, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    invoke-virtual {v9, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "SMARTMANAGER"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_25

    :cond_24
    const-string/jumbo v9, "identify_unsaved_numbers"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_25
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_26

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eqz v9, :cond_27

    :cond_26
    const-string/jumbo v9, "identify_unsaved_numbers"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_27
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v11, "CscFeature_VoiceCall_ConfigOpStyleForSpamCall"

    invoke-virtual {v9, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "SMARTMANAGER"

    invoke-virtual {v9, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eqz v9, :cond_29

    :cond_28
    const-string/jumbo v9, "call_message_spam_filter"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_29
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v9

    if-nez v9, :cond_2a

    if-eqz v4, :cond_2b

    :cond_2a
    const-string/jumbo v9, "category_two"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "onehand_operation_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_2b
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v11, "double_tab_launch_component"

    invoke-static {v9, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    const-string/jumbo v9, "com.sec.android.app.camera/com.sec.android.app.camera.Camera"

    sget-object v11, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->componentNameOfDoubleTapOnHomeCommandIntent:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2c

    const-string/jumbo v9, "quick_camera_launch"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_2c
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v11, "com.samsung.android.app.scrollcapture"

    invoke-static {v9, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2d

    const-string/jumbo v9, "smart_capture"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_2d
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v11, "com.sec.app.screenrecorder"

    invoke-static {v9, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3a

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v9

    if-eqz v9, :cond_3a

    :goto_b
    sget-object v11, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMotionFeatures:[Ljava/lang/String;

    array-length v12, v11

    move v9, v10

    :goto_c
    if-ge v9, v12, :cond_3b

    aget-object v8, v11, v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-static {v13, v8}, Lcom/android/settings/Utils;->isSupportMotionFeature(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2e

    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_2e
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    :cond_2f
    const-string/jumbo v9, "pen_settings_title"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_30
    const-string/jumbo v9, "accelerate_hongbao_receiving"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_31
    const-string/jumbo v9, "hongbao_assistant"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_32
    const-string/jumbo v9, "galaxy_labs"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    if-eqz v9, :cond_15

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    invoke-virtual {v9, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    invoke-virtual {v9, v12}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_33
    move v9, v10

    goto/16 :goto_4

    :cond_34
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v13}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_5

    :cond_35
    const-string/jumbo v9, "key_panic_mode"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_36
    const v9, 0x7f0b0408

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    goto/16 :goto_7

    :cond_37
    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, p0}, Lcom/android/settings/SecSettingsSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {v9, v13}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_8

    :cond_38
    const-string/jumbo v9, "increse_touch_sensetivity"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_39
    const-string/jumbo v9, "display_airmessage"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_3a
    const-string/jumbo v9, "screen_recorder"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_3b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string/jumbo v11, "CscFeature_Setting_ConfigMotionType"

    invoke-virtual {v9, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3c

    const-string/jumbo v9, ","

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v7, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v7, :cond_3c

    aget-object v9, v1, v3

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_3c
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isEasyModeStatus(Landroid/content/ContentResolver;)Z

    move-result v9

    if-nez v9, :cond_45

    :goto_e
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v11, "com.samsung.android.app.galaxylabs"

    invoke-static {v9, v11}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3d

    if-eqz v4, :cond_3e

    :cond_3d
    const-string/jumbo v9, "category_four"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "galaxy_labs"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_3e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUXGraceView()Z

    move-result v9

    if-nez v9, :cond_3f

    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isSupportGraceUXForVZW(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_46

    :cond_3f
    const-string/jumbo v9, "galaxy_labs"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "category_two"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "category_three"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "category_four"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :goto_f
    sget-object v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->hasDockSettings(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_40

    const-string/jumbo v9, "dock_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_40
    invoke-static {}, Lcom/android/settings/Utils;->hasActiveKey()Z

    move-result v9

    if-nez v9, :cond_41

    const-string/jumbo v9, "active_key_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_41
    const/4 v6, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v5

    if-eqz v5, :cond_42

    invoke-virtual {v5}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v6

    :cond_42
    and-int/lit8 v9, v6, 0x8

    if-eqz v9, :cond_43

    const-string/jumbo v9, "multi_window_setting"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    :cond_43
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v9

    instance-of v9, v9, Landroid/preference/PreferenceCategory;

    if-eqz v9, :cond_44

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    invoke-virtual {v11, v10}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_44
    new-instance v9, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v9}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_45
    const-string/jumbo v9, "multi_window_setting"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_46
    const-string/jumbo v9, "pen_settings_title"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "dock_settings"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "smartscreen_stay"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "key_panic_mode"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v9, "key_safety_assistance"

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->removePreference(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public onDestroy()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbersObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilterObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_d

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_4
    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoEnabled:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceivingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_5
    sget-boolean v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLockObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCaptureObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandedOperationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTouchSensitivityObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "AdvancedFeatures"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    if-eqz v0, :cond_4

    goto/16 :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v6, 0x1

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "double_tab_launch"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "com.android.settings"

    const-string/jumbo v9, "UFQC"

    const/16 v10, 0x3e8

    invoke-static {v7, v8, v9, v10}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f10018a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    sput v7, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v8

    sget v9, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_QUICKLAUNCHCAMERA:I

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x3e8

    :goto_2
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :cond_0
    :goto_3
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->edit:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v9, "quick_dial"

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->edit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.action.quickdial"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "status"

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-object v7, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "auto_adjust_touch"

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_41

    const/4 v7, 0x1

    :goto_4
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    const/4 v7, 0x1

    return v7

    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "com.android.settings"

    const-string/jumbo v9, "UFQC"

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_6
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7

    const v7, 0x7f0b18ae

    :goto_5
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f10019c

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9

    const/16 v7, 0x3e8

    :goto_6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "motion_pick_up"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_7
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v7

    if-eqz v7, :cond_8

    const v7, 0x7f0b0903

    goto :goto_5

    :cond_8
    const v7, 0x7f0b0902

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    goto :goto_6

    :cond_a
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b

    const v7, 0x7f0b18ae

    :goto_8
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_7

    :cond_b
    const v7, 0x7f0b18af

    goto :goto_8

    :cond_c
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_d

    const v7, 0x7f0b18ae

    :goto_9
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f10019b

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_f

    const/16 v7, 0x3e8

    :goto_a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_b
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "motion_pick_up_to_call_out"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_d
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v7

    if-eqz v7, :cond_e

    const v7, 0x7f0b0901

    goto :goto_9

    :cond_e
    const v7, 0x7f0b0900

    goto :goto_9

    :cond_f
    const/4 v7, 0x0

    goto :goto_a

    :cond_10
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_11

    const v7, 0x7f0b18ae

    :goto_c
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_b

    :cond_11
    const v7, 0x7f0b18af

    goto :goto_c

    :cond_12
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_14

    const v7, 0x7f0b18ae

    :goto_d
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f10019d

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_15

    const/16 v7, 0x3e8

    :goto_e
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    :goto_f
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "motion_merged_mute_pause"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v7

    if-nez v7, :cond_13

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "motion_overturn"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_13
    sget-object v7, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    const/high16 v8, 0x200000

    invoke-static {v7, v8}, Lcom/android/settings/Utils;->isSupportMotion(Landroid/content/Context;I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "surface_palm_touch"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_14
    const v7, 0x7f0b0905

    goto :goto_d

    :cond_15
    const/4 v7, 0x0

    goto :goto_e

    :cond_16
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_17

    const v7, 0x7f0b18ae

    :goto_10
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto :goto_f

    :cond_17
    const v7, 0x7f0b18af

    goto :goto_10

    :cond_18
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    const/4 v7, 0x1

    if-ne v6, v7, :cond_19

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_19

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->maketurnOffUniversalPopup(Landroid/preference/Preference;)V

    goto/16 :goto_3

    :cond_19
    const/4 v7, 0x1

    if-ne v6, v7, :cond_1a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->makeTalkBackDisablePopup(Landroid/preference/Preference;)V

    goto/16 :goto_3

    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "surface_palm_swipe"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v7

    if-eqz v7, :cond_1d

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1b

    const v7, 0x7f0b18ae

    :goto_11
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f10019a

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1c

    const/16 v7, 0x3e8

    :goto_12
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_1b
    const v7, 0x7f0b040d

    goto :goto_11

    :cond_1c
    const/4 v7, 0x0

    goto :goto_12

    :cond_1d
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1e

    const v7, 0x7f0b18ae

    :goto_13
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_1e
    const v7, 0x7f0b18af

    goto :goto_13

    :cond_1f
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "finger_magnifier"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_20

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->smartCaptureDisablePopup()V

    goto/16 :goto_3

    :cond_20
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "enable_smart_capture"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v7

    if-eqz v7, :cond_23

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_21

    const v7, 0x7f0b18ae

    :goto_14
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f100199

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_22

    const/16 v7, 0x3e8

    :goto_15
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_21
    const v7, 0x7f0b03f7

    goto :goto_14

    :cond_22
    const/4 v7, 0x0

    goto :goto_15

    :cond_23
    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_24

    const v7, 0x7f0b18ae

    :goto_16
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_3

    :cond_24
    const v7, 0x7f0b18af

    goto :goto_16

    :cond_25
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_26

    const v7, 0x7f0b18ae

    :goto_17
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "direct_share"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f10019e

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_27

    const/16 v7, 0x3e8

    :goto_18
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_26
    const v7, 0x7f0b03ff

    goto :goto_17

    :cond_27
    const/4 v7, 0x0

    goto :goto_18

    :cond_28
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    const/4 v7, 0x1

    if-ne v6, v7, :cond_29

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUserKnoxMode(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_29

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isUniversalSwitchEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_29

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->maketurnOffUniversalPopup(Landroid/preference/Preference;)V

    goto/16 :goto_3

    :cond_29
    const/4 v7, 0x1

    if-ne v6, v7, :cond_2a

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2a

    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->makeTalkBackDisablePopup(Landroid/preference/Preference;)V

    goto/16 :goto_3

    :cond_2a
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "intelligent_sleep_mode"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2b

    const v7, 0x7f0b18ae

    :goto_19
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f100197

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_2c

    const/16 v7, 0x3e8

    :goto_1a
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_2b
    const v7, 0x7f0b040e

    goto :goto_19

    :cond_2c
    const/4 v7, 0x0

    goto :goto_1a

    :cond_2d
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    const/4 v7, 0x1

    if-ne v6, v7, :cond_32

    const/4 v0, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v7

    const-string/jumbo v8, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v7, v1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2e

    const/4 v0, 0x0

    :cond_2e
    if-nez v0, :cond_30

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "any_screen_enabled"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2f

    const/4 v7, 0x1

    :goto_1b
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0b0b59

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :cond_2f
    const/4 v7, 0x0

    goto :goto_1b

    :cond_30
    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isReadyOneHandedOperationStatusEnable()Z

    move-result v7

    if-nez v7, :cond_31

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->makeOneHandOperationDisablePopup()V

    goto/16 :goto_3

    :cond_31
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setOneHandOperation(I)V

    goto/16 :goto_3

    :cond_32
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->setOneHandOperation(I)V

    goto/16 :goto_3

    :cond_33
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_36

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v7

    if-eqz v7, :cond_35

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_34

    const v7, 0x7f0b18ae

    :goto_1c
    invoke-virtual {v8, v7}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :goto_1d
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "airmessage_on"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_34
    const v7, 0x7f0b03e6

    goto :goto_1c

    :cond_35
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1d

    :cond_36
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_39

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setChecked(Z)V

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-virtual {v8, v7}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "hdr_effect"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v8, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_37

    const v7, 0x7f0b18ae

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_1e
    invoke-virtual {v8, v7}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f1001a1

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_38

    const/16 v7, 0x3e8

    :goto_1f
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v8, v9, v7}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_37
    sget-object v7, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    goto :goto_1e

    :cond_38
    const/4 v7, 0x0

    goto :goto_1f

    :cond_39
    iget-object v7, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "red_packet_do_not_show"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_3b

    const/4 v5, 0x1

    :goto_20
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "hongbao_assistant"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3c

    const/4 v2, 0x1

    :goto_21
    move-object v7, p2

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string/jumbo v7, "Usefulfeature"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onPreferenceChange  showDialog:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " isChecked:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " enabled:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v2, v4, :cond_40

    if-eqz v4, :cond_3a

    :cond_3a
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "hongbao_assistant"

    if-eqz v4, :cond_3d

    const/4 v7, 0x1

    :goto_22
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "red_packet_mode"

    if-eqz v4, :cond_3e

    const/4 v7, 0x1

    :goto_23
    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.samsung.hongbaoassistant"

    const-string/jumbo v8, "com.samsung.hongbaoassistant.HongbaoNotificationService"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v4, :cond_3f

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_3

    :cond_3b
    const/4 v5, 0x0

    goto/16 :goto_20

    :cond_3c
    const/4 v2, 0x0

    goto :goto_21

    :cond_3d
    const/4 v7, 0x0

    goto :goto_22

    :cond_3e
    const/4 v7, 0x0

    goto :goto_23

    :cond_3f
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_3

    :cond_40
    const-string/jumbo v7, "Usefulfeature"

    const-string/jumbo v8, "Changed form Quick Button."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_41
    const/4 v7, 0x0

    goto/16 :goto_4
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGameHome:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.game.gamehome.action.SETTING"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
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
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_1
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

    if-eqz v3, :cond_2

    sget-object v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->getTypeOfCover(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    :cond_2
    const/4 v2, 0x0

    :cond_3
    const-string/jumbo v3, "S View cover attached"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in mDisplayAirmessage"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :try_start_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v4, "com.samsung.android.myeventcenter.MY_EVENT"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in mFestivalEffect"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :try_start_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "android.intent.action.MAIN"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.android.phone"

    const-string/jumbo v4, "com.android.phone.smartcall.SmartCallSettings"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100186

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    sput v3, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_SMARTCALL:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->SETTINGS_ADVANCEDFEATURE_SMARTCALL:I

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const-string/jumbo v3, "Usefulfeature"

    const-string/jumbo v4, "ActivityNotFoundException in IdentifyUnsavedNumbers"

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

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
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mScreenRecorder:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

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
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f10021e

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
    iget-object v3, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mGalaxyLabs:Landroid/preference/Preference;

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

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
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    invoke-virtual {v0}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->inEnabledAppearance()Z

    move-result v0

    if-nez v0, :cond_0

    return v4

    :cond_0
    const-string/jumbo v2, "com.samsung.android.settings.usefulfeature.HDReffectSettings"

    const v3, 0x7f0b0406

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 31

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    const-string/jumbo v27, "false"

    const/16 v28, 0x0

    aput-object v27, v25, v28

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v27

    const-string/jumbo v28, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v29, "isScreenCaptureEnabled"

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move-object/from16 v2, v29

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v12

    const/16 v27, -0x1

    move/from16 v0, v27

    if-eq v12, v0, :cond_0

    const/16 v27, 0x1

    move/from16 v0, v27

    if-eq v12, v0, :cond_0

    const/16 v27, 0x1

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

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

    move-result-object v13

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v27

    if-nez v27, :cond_2

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isNoSIM(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "spam_call_enable"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_24

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    move-object/from16 v28, v0

    if-eqz v14, :cond_25

    const v27, 0x7f0b18ae

    :goto_2
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "spam_call_enable"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbersObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    move-object/from16 v28, v0

    const/16 v29, 0x1

    invoke-virtual/range {v27 .. v29}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mFestivalEffect:Landroid/preference/PreferenceScreen;

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

    if-eqz v27, :cond_26

    const v27, 0x7f0b18ae

    :goto_3
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mCallMsgSpamfilter:Landroid/preference/PreferenceScreen;

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

    if-eqz v27, :cond_27

    const v27, 0x7f0b18ae

    :goto_4
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

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

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_6

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v27

    if-nez v27, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

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

    if-eqz v27, :cond_28

    const/16 v27, 0x1

    :goto_5
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_7

    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_2b

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

    if-eqz v27, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f0b0903

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_7
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_33

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

    if-eqz v27, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f0b0901

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_8
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_9

    const/16 v27, 0x1

    move/from16 v0, v21

    move/from16 v1, v27

    if-ne v0, v1, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_3a

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

    const v28, 0x7f0b0905

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_9
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_a

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v27

    if-eqz v27, :cond_41

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

    if-eqz v27, :cond_40

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

    const v28, 0x7f0b040d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "surface_palm_swipe"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_b
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

    if-eqz v27, :cond_46

    const/16 v20, 0x1

    :goto_c
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_48

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

    if-eqz v20, :cond_47

    const v27, 0x7f0b18ae

    :goto_d
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :goto_e
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

    if-eqz v27, :cond_4a

    :cond_c
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "access_control_enabled"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeToCaptureObserverInteraction:Landroid/database/ContentObserver;

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

    move-result-object v8

    iget v0, v8, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

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

    if-eqz v27, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f0b040d

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_e
    :goto_10
    sget-boolean v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoEnabled:Z

    if-eqz v27, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceiving:Landroid/preference/Preference;

    move-object/from16 v28, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v29, "red_packet_mode"

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_4c

    const v27, 0x7f0b18ae

    :goto_11
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "red_packet_mode"

    invoke-static/range {v28 .. v28}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAccelerateHongbaoReceivingObserver:Landroid/database/ContentObserver;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    move/from16 v2, v30

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_f
    sget-boolean v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistantEnabled:Z

    if-eqz v27, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "hongbao_assistant"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_4d

    const/4 v11, 0x1

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHongbaoAssistant:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v11, :cond_4e

    const v27, 0x7f0b18ae

    :goto_13
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

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mAppLock:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    if-eqz v27, :cond_11

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

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "send_emergency_message"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_4f

    const/16 v19, 0x1

    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSendSOSMessage:Landroid/preference/Preference;

    move-object/from16 v28, v0

    if-eqz v19, :cond_50

    const v27, 0x7f0b18ae

    :goto_15
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

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

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "direct_share"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_51

    const/4 v9, 0x1

    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDirectShare:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v9, :cond_52

    const v27, 0x7f0b18ae

    :goto_17
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_13
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

    if-eqz v27, :cond_53

    const/16 v26, 0x1

    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartStay:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v26, :cond_54

    const v27, 0x7f0b18ae

    :goto_19
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

    if-eqz v27, :cond_55

    const/4 v5, 0x1

    :goto_1a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "one_handed_op_wakeup_type"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_56

    const/4 v6, 0x1

    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Lcom/android/settings/SecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v5, :cond_58

    if-eqz v6, :cond_57

    const v27, 0x7f0b0b52

    :goto_1c
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

    if-eqz v27, :cond_59

    const/4 v4, 0x1

    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Lcom/android/settings/SecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mDisplayAirmessage:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v4, :cond_5a

    const v27, 0x7f0b18ae

    :goto_1e
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "hdr_effect"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_5b

    const/4 v10, 0x1

    :goto_1f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "sem_perfomance_mode"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v27

    if-eqz v27, :cond_5d

    const/16 v27, 0x2

    move/from16 v0, v22

    move/from16 v1, v27

    if-ne v0, v1, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabledAppearance(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "pbm_video_enhancer"

    const/16 v29, 0x1

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v27

    if-eqz v27, :cond_5c

    const/4 v7, 0x1

    :goto_20
    move v10, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const v29, 0x7f0b0a52

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    aput-object v29, v28, v30

    const v29, 0x7f0b040f

    move-object/from16 v0, p0

    move/from16 v1, v29

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setToastMsg(Ljava/lang/String;)V

    :goto_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v10, :cond_5e

    const v27, 0x7f0b18ae

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getString(I)Ljava/lang/String;

    move-result-object v27

    :goto_22
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_18

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v27

    if-eqz v27, :cond_5f

    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_5f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    :cond_18
    :goto_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIncreaseTouchSensetivity:Landroid/preference/SwitchPreference;

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

    if-eqz v27, :cond_60

    const/16 v27, 0x1

    :goto_24
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

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

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v27, v0

    const-string/jumbo v28, "quick_dial"

    const/16 v29, 0x0

    invoke-interface/range {v27 .. v29}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickDial:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    invoke-virtual/range {v27 .. v28}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getActivity()Landroid/app/Activity;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v27

    if-eqz v27, :cond_20

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/settings/widget/RelativeLinkView;->resetLinkData()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getListView()Landroid/widget/ListView;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/settings/widget/RelativeLinkView;->getRelativeLinkView()Landroid/view/View;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData1:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    const/16 v24, 0x1

    :cond_1c
    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-virtual/range {v27 .. v27}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v27

    const-string/jumbo v28, "sem_perfomance_mode"

    const/16 v29, 0x0

    invoke-static/range {v27 .. v29}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1e

    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v27

    if-eqz v27, :cond_1d

    const/16 v27, 0x1

    move/from16 v0, v22

    move/from16 v1, v27

    if-eq v0, v1, :cond_1e

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData2:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    const/16 v24, 0x1

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mLinkedData3:Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    const/16 v24, 0x1

    :cond_1f
    if-eqz v24, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->getListView()Landroid/widget/ListView;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    :cond_20
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

    :cond_21
    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mContext:Landroid/content/Context;

    invoke-static/range {v27 .. v27}, Lcom/android/settings/Utils;->isRoaming(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportMCC()Z

    move-result v27

    if-eqz v27, :cond_22

    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isSupportMccSmartCall()Z

    move-result v27

    if-eqz v27, :cond_23

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mIdentifyUnsavedNumbers:Landroid/preference/PreferenceScreen;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_24
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_25
    const v27, 0x7f0b18af

    goto/16 :goto_2

    :cond_26
    const v27, 0x7f0b18af

    goto/16 :goto_3

    :cond_27
    const v27, 0x7f0b18af

    goto/16 :goto_4

    :cond_28
    const/16 v27, 0x0

    goto/16 :goto_5

    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mQuickCameraLaunch:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_6

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f0b0902

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_7

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f0b18af

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_7

    :cond_2c
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

    if-eqz v27, :cond_2d

    const/16 v17, 0x1

    :goto_25
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_30

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

    if-eqz v17, :cond_2e

    const v27, 0x7f0b18ae

    :goto_26
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_7

    :cond_2d
    const/16 v17, 0x0

    goto :goto_25

    :cond_2e
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v27

    if-eqz v27, :cond_2f

    const v27, 0x7f0b0903

    goto :goto_26

    :cond_2f
    const v27, 0x7f0b0902

    goto :goto_26

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v17, :cond_31

    const v27, 0x7f0b18ae

    :goto_27
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_7

    :cond_31
    const v27, 0x7f0b18af

    goto :goto_27

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f0b0900

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_8

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f0b18af

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_8

    :cond_34
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

    if-eqz v27, :cond_35

    const/16 v18, 0x1

    :goto_28
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_38

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

    if-eqz v18, :cond_36

    const v27, 0x7f0b18ae

    :goto_29
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_8

    :cond_35
    const/16 v18, 0x0

    goto :goto_28

    :cond_36
    invoke-static {}, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->isNotSupportSamsungMessageApp()Z

    move-result v27

    if-eqz v27, :cond_37

    const v27, 0x7f0b0901

    goto :goto_29

    :cond_37
    const v27, 0x7f0b0900

    goto :goto_29

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v18, :cond_39

    const v27, 0x7f0b18ae

    :goto_2a
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_8

    :cond_39
    const v27, 0x7f0b18af

    goto :goto_2a

    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f0b18af

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_9

    :cond_3b
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

    if-eqz v27, :cond_3c

    const/4 v15, 0x1

    :goto_2b
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_3e

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

    if-eqz v15, :cond_3d

    const v27, 0x7f0b18ae

    :goto_2c
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_9

    :cond_3c
    const/4 v15, 0x0

    goto :goto_2b

    :cond_3d
    const v27, 0x7f0b0905

    goto :goto_2c

    :cond_3e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mMergedMutePauseSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v15, :cond_3f

    const v27, 0x7f0b18ae

    :goto_2d
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_9

    :cond_3f
    const v27, 0x7f0b18af

    goto :goto_2d

    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f0b18af

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_a

    :cond_41
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

    if-eqz v27, :cond_42

    const/16 v16, 0x1

    :goto_2e
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v27

    if-eqz v27, :cond_44

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

    if-eqz v16, :cond_43

    const v27, 0x7f0b18ae

    :goto_2f
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_b

    :cond_42
    const/16 v16, 0x0

    goto :goto_2e

    :cond_43
    const v27, 0x7f0b040d

    goto :goto_2f

    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v16, :cond_45

    const v27, 0x7f0b18ae

    :goto_30
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_b

    :cond_45
    const v27, 0x7f0b18af

    goto :goto_30

    :cond_46
    const/16 v20, 0x0

    goto/16 :goto_c

    :cond_47
    const v27, 0x7f0b03f7

    goto/16 :goto_d

    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mSmartCapture:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v28, v0

    if-eqz v20, :cond_49

    const v27, 0x7f0b18ae

    :goto_31
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_e

    :cond_49
    const v27, 0x7f0b18af

    goto :goto_31

    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpToCallOutSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-nez v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPickUpSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    if-eqz v27, :cond_d

    goto/16 :goto_f

    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mPalmSwipeSwitch:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const v28, 0x7f0b18af

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setSummary(I)V

    goto/16 :goto_10

    :cond_4c
    const v27, 0x7f0b18af

    goto/16 :goto_11

    :cond_4d
    const/4 v11, 0x0

    goto/16 :goto_12

    :cond_4e
    const v27, 0x7f0b18af

    goto/16 :goto_13

    :cond_4f
    const/16 v19, 0x0

    goto/16 :goto_14

    :cond_50
    const v27, 0x7f0b18af

    goto/16 :goto_15

    :cond_51
    const/4 v9, 0x0

    goto/16 :goto_16

    :cond_52
    const v27, 0x7f0b03ff

    goto/16 :goto_17

    :cond_53
    const/16 v26, 0x0

    goto/16 :goto_18

    :cond_54
    const v27, 0x7f0b040e

    goto/16 :goto_19

    :cond_55
    const/4 v5, 0x0

    goto/16 :goto_1a

    :cond_56
    const/4 v6, 0x0

    goto/16 :goto_1b

    :cond_57
    const v27, 0x7f0b0b50

    goto/16 :goto_1c

    :cond_58
    const v27, 0x7f0b03fd

    goto/16 :goto_1c

    :cond_59
    const/4 v4, 0x0

    goto/16 :goto_1d

    :cond_5a
    const v27, 0x7f0b03e6

    goto/16 :goto_1e

    :cond_5b
    const/4 v10, 0x0

    goto/16 :goto_1f

    :cond_5c
    const/4 v7, 0x0

    goto/16 :goto_20

    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHDREffect:Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/samsung/android/settings/usefulfeature/DisabledAppearanceSecSettingsSwitchPreference;->setEnabledAppearance(Z)V

    goto/16 :goto_21

    :cond_5e
    sget-object v27, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mHdrSummary:Ljava/lang/String;

    goto/16 :goto_22

    :cond_5f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/Usefulfeature;->mOneHandOperation:Lcom/android/settings/SecSettingsSwitchPreference;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Lcom/android/settings/SecSettingsSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_23

    :cond_60
    const/16 v27, 0x0

    goto/16 :goto_24
.end method
