.class public Lcom/samsung/android/settings/lockscreen/LockscreenSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockscreenSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/LockscreenSettings$1;,
        Lcom/samsung/android/settings/lockscreen/LockscreenSettings$2;,
        Lcom/samsung/android/settings/lockscreen/LockscreenSettings$3;,
        Lcom/samsung/android/settings/lockscreen/LockscreenSettings$SummaryProvider;
    }
.end annotation


# static fields
.field private static final MY_USER_ID:I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static final TRUST_AGENT_INTENT:Landroid/content/Intent;

.field private static mSmartLockSummary:Ljava/lang/String;


# instance fields
.field private aodDialog:Landroid/app/AlertDialog;

.field private informationCategory:Landroid/support/v7/preference/SecPreferenceCategory;

.field private mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private final mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mClockStyle:Landroid/support/v7/preference/SecPreference;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

.field private mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mFromCoverSetting:Z

.field private mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockType:Lcom/samsung/android/settings/SecGearPreference;

.field private mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

.field private mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

.field private mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

.field private mProfileChallengeUserId:I

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mSecure:Z

.field private mSecureProfile:Z

.field private mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

.field private mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTrustAgentClickIntent:Landroid/content/Intent;

.field private mTrustAgentManager:Lcom/android/settings/trustagent/TrustAgentManager;

.field private mUm:Landroid/os/UserManager;

.field private sPowerManager:Landroid/os/PowerManager;


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/LockscreenSettings;)Landroid/support/v14/preference/SecSwitchPreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockscreen/LockscreenSettings;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/lockscreen/LockscreenSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->resetAccessabilityFeature()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/lockscreen/LockscreenSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->updateAlwaysOnScreenSummary()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/lockscreen/LockscreenSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->updatePreferenceRelatedAOD()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.service.trust.TrustAgentService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mFromCoverSetting:Z

    new-instance v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$1;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private InitPreference(I)V
    .locals 22

    const-string/jumbo v18, "sec_info_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/support/v7/preference/SecPreferenceCategory;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->informationCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const-string/jumbo v18, "always_on_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    const-string/jumbo v19, "com.samsung.android.app.aodservice"

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_17

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v18

    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "aod_mode"

    invoke-static/range {v19 .. v19}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    const-string/jumbo v18, "unlock_set_or_change"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnabled()Z

    move-result v10

    invoke-static {}, Lcom/android/settings/Utils;->isUCMKeyguardEnforced()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    if-eqz v10, :cond_19

    invoke-static {}, Lcom/android/settings/Utils;->getUCMKeyguardVendorName()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SecGearPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz v11, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/SecGearPreference;->setEnabled(Z)V

    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->addSmartLockPreference()V

    const-string/jumbo v18, "secured_lock_settigns"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/SecRestrictedPreference;->setEnabled(Z)V

    const v15, 0x7f120ff9

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v18

    if-eqz v18, :cond_3

    const v15, 0x7f120ffa

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(I)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_5

    if-eqz v10, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/SecRestrictedPreference;->setEnabled(Z)V

    :cond_6
    const-string/jumbo v18, "lock_screen_menu_sec_notifications"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "lock_screen_show_notifications"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_1a

    const/4 v5, 0x1

    :goto_2
    const v12, 0x7f1210ab

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    const-string/jumbo v19, "com.samsung.android.app.aodservice"

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_7

    const v12, 0x7f1210aa

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v5, :cond_8

    const v12, 0x7f121b3e

    :cond_8
    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_9
    const-string/jumbo v18, "lock_app_shortcut"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/SecGearPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-nez v6, :cond_a

    if-eqz v8, :cond_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/SecGearPreference;->setEnabled(Z)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    if-eqz v6, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_c
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v19

    const/16 v20, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    if-nez v6, :cond_d

    if-eqz v8, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    if-nez v6, :cond_f

    if-eqz v8, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_10
    const-string/jumbo v18, "clock_style_pref"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->setClockStyleStateInRoaming()V

    :cond_11
    const-string/jumbo v18, "lock_screen_dualclock"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "dualclock_menu_settings"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    if-eqz v18, :cond_1c

    const/4 v7, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    if-eqz v7, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_12
    const-string/jumbo v18, "oversea"

    const-string/jumbo v19, "ril.currentplmn"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1d

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticSKTModel()Z

    move-result v18

    if-eqz v18, :cond_1d

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f1208f0

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f12132c

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    :cond_13
    :goto_5
    const-string/jumbo v18, "lock_screen_menu_owner_infomation"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v18

    if-eqz v18, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/SecRestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->updateOwnerInfo()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v18, v0

    const v19, 0x7f12063b

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/SecRestrictedPreference;->setTitle(I)V

    :cond_14
    const-string/jumbo v18, "lock_screen_additional_info"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    if-eqz v18, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    const-string/jumbo v19, "com.samsung.android.app.aodservice"

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    const v19, 0x7f1200f3

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    :cond_15
    :goto_7
    return-void

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto/16 :goto_0

    :cond_17
    const-string/jumbo v18, "always_on_screen"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/SecGearPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_19
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    move-object/from16 v18, v0

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getLockTypeSummary(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/samsung/android/settings/SecGearPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1a
    const/4 v5, 0x0

    goto/16 :goto_2

    :cond_1b
    invoke-static {}, Lcom/android/settings/Utils;->isJapanDCMModel()Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isDCMhome(Landroid/content/Context;)Z

    move-result v19

    xor-int/lit8 v19, v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_1c
    const/4 v7, 0x0

    goto/16 :goto_4

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "dualclock_menu_settings"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const/16 v20, 0x1

    invoke-static/range {v19 .. v20}, Lcom/android/settings/Utils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    move-object/from16 v18, v0

    const v19, 0x7f1208f0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto/16 :goto_5

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/SecRestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_6

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mFaceWidgets:Landroid/support/v7/preference/SecPreferenceScreen;

    move-object/from16 v18, v0

    const v19, 0x7f1200f1

    invoke-virtual/range {v18 .. v19}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(I)V

    goto/16 :goto_7
.end method

.method private RemoveMenu()V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v4

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v1

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.app.aodservice"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "aod_mode"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-static {v6, v7, v10, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    const/4 v0, 0x1

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    if-eqz v6, :cond_1

    if-nez v4, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v6, :cond_b

    xor-int/lit8 v6, v3, 0x1

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->informationCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    if-eqz v6, :cond_4

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isUsingContentHomeButtonInAOD(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->informationCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->informationCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->informationCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v6, v10}, Landroid/support/v7/preference/SecPreferenceCategory;->setEnabled(Z)V

    :cond_6
    if-eqz v2, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->informationCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockAppShortcut:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecPreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_7
    if-eqz v2, :cond_9

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isUsingContentHomeButtonInAOD(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->informationCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_9
    return-void

    :cond_a
    const/4 v0, 0x0

    goto :goto_0

    :cond_b
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSupportPowerKey()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/SecPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private addSmartLockPreference()V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mTrustAgentManager:Lcom/android/settings/trustagent/TrustAgentManager;

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-static {v4, v5, v6, v7}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActiveTrustAgents(Landroid/content/Context;Lcom/android/settings/trustagent/TrustAgentManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;

    move-result-object v1

    const-string/jumbo v4, "trust_agent"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/SecRestrictedPreference;

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    iget-object v5, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecRestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    iget-object v5, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/SecRestrictedPreference;->setIntent(Landroid/content/Intent;)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    iget-object v5, v0, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/SecRestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;
    .locals 11

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v5

    xor-int/lit8 v1, v5, 0x1

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSecure:Z

    iget v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mProfileChallengeUserId:I

    const/16 v8, -0x2710

    if-eq v5, v8, :cond_9

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mProfileChallengeUserId:I

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz v1, :cond_8

    iget-boolean v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSecure:Z

    :goto_0
    iput-boolean v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSecureProfile:Z

    const v5, 0x7f15008f

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v5, "unlock_set_or_change"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    instance-of v5, v4, Lcom/samsung/android/settings/SecGearPreference;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/samsung/android/settings/SecGearPreference;

    invoke-virtual {v5, v9}, Lcom/samsung/android/settings/SecGearPreference;->setOnGearClickListener(Lcom/samsung/android/settings/SecGearPreference$OnGearClickListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_2
    const/4 v2, 0x0

    const-string/jumbo v5, "DeviceLockTime"

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    const-string/jumbo v9, "CscFeature_Setting_ReplaceMenuLockAutoAs"

    invoke-virtual {v8, v9}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v8, "is_secured_lock"

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v10, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v9

    if-eqz v9, :cond_a

    :goto_1
    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v6, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v6, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_b

    const v2, 0x7f121c8c

    :goto_2
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->InitPreference(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->RemoveMenu()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isVzwDemoMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockType:Lcom/samsung/android/settings/SecGearPreference;

    invoke-virtual {v5, v7}, Lcom/samsung/android/settings/SecGearPreference;->setEnabled(Z)V

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSmartlock:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/SecRestrictedPreference;->setEnabled(Z)V

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSecuredLockSettings:Landroid/support/v7/preference/SecPreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/support/v7/preference/SecPreferenceScreen;->setEnabled(Z)V

    :cond_6
    return-object v3

    :cond_7
    move v5, v6

    goto/16 :goto_0

    :cond_8
    move v5, v7

    goto/16 :goto_0

    :cond_9
    move v5, v7

    goto/16 :goto_0

    :cond_a
    move v6, v7

    goto :goto_1

    :cond_b
    const v2, 0x7f121c8b

    goto :goto_2

    :cond_c
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v6, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const v2, 0x7f1202d2

    goto :goto_2

    :sswitch_1
    const v2, 0x7f120849

    goto :goto_2

    :sswitch_2
    const v2, 0x7f121c97

    goto :goto_2

    :sswitch_3
    const v2, 0x7f121c99

    goto :goto_2

    :sswitch_4
    const v2, 0x7f121c95

    goto :goto_2

    :sswitch_5
    const v2, 0x7f121c7e

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x9100 -> :sswitch_0
        0x10000 -> :sswitch_2
        0x10001 -> :sswitch_1
        0x20000 -> :sswitch_3
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_4
        0x60000 -> :sswitch_4
        0x70000 -> :sswitch_5
        0x90000 -> :sswitch_0
    .end sparse-switch
.end method

.method private getAODclocksummary()Ljava/lang/String;
    .locals 6

    const/16 v5, 0x21c

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aod_mode_start_time"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aod_mode_end_time"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const v3, 0x7f120199

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eq v2, v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v4, v2, 0x3c

    rem-int/lit8 v5, v2, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ~ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit8 v4, v1, 0x3c

    rem-int/lit8 v5, v1, 0x3c

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mUseCalendar(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getActiveTrustAgents(Landroid/content/Context;Lcom/android/settings/trustagent/TrustAgentManager;Lcom/android/internal/widget/LockPatternUtils;Landroid/app/admin/DevicePolicyManager;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/trustagent/TrustAgentManager;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Landroid/app/admin/DevicePolicyManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    sget-object v12, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->TRUST_AGENT_INTENT:Landroid/content/Intent;

    const/16 v13, 0x80

    invoke-virtual {v6, v12, v13}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    sget v12, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/LockPatternUtils;->getEnabledTrustAgents(I)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    const/16 v13, 0x10

    invoke-static {p0, v13, v12}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_4

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v4, v12, :cond_4

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v12, :cond_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1, v7, v6}, Lcom/android/settings/trustagent/TrustAgentManager;->shouldProvideTrust(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {v6, v7}, Lcom/android/settings/TrustAgentUtils;->getSettingsComponent(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v12, v11, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v12, :cond_0

    invoke-static {v7}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-nez v12, :cond_0

    iget-object v12, v11, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->title:Ljava/lang/String;

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    if-eqz v1, :cond_2

    invoke-static {v7}, Lcom/android/settings/TrustAgentUtils;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13, v12}, Landroid/app/admin/DevicePolicyManager;->getTrustAgentConfiguration(Landroid/content/ComponentName;Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v12

    if-nez v12, :cond_2

    iput-object v1, v11, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->admin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    :cond_2
    iget-object v12, v11, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    if-nez v12, :cond_3

    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget v5, v12, Landroid/content/pm/ServiceInfo;->labelRes:I

    const/4 v9, 0x0

    :try_start_0
    iget-object v12, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_1
    invoke-static {v9, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->isSmartLockPreference(Landroid/content/res/Resources;I)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_3

    if-eqz v9, :cond_3

    sget-object v12, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSmartLockSummary:Ljava/lang/String;

    if-eqz v12, :cond_3

    sget-object v12, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSmartLockSummary:Ljava/lang/String;

    iput-object v12, v11, Lcom/android/settings/TrustAgentUtils$TrustAgentComponentInfo;->summary:Ljava/lang/String;

    :cond_3
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v10

    :catch_0
    move-exception v2

    const-string/jumbo v12, "LockscreenSettings"

    const-string/jumbo v13, "getResourcesForApplication NameNotFoundException!"

    invoke-static {v12, v13}, Lcom/samsung/android/settingslib/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private getBiometricsSummary(ZZZZ)Ljava/lang/String;
    .locals 12

    const-string/jumbo v3, ", "

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ar"

    const-string/jumbo v2, "ja"

    const-string/jumbo v0, "zh"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v3, "\u060c "

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "4digits_pin_enabled"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    const/4 v6, 0x1

    :goto_1
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "knox_finger_print_plus"

    invoke-static {v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    const/4 v7, 0x1

    :goto_2
    const-string/jumbo v9, "LockscreenSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isMultifactorEnabled : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_f

    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v10, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_1
    :goto_3
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string/jumbo v3, "\u3001"

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v3, "\uff0c"

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    goto :goto_2

    :catch_0
    move-exception v5

    const-string/jumbo v9, "LockscreenSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SettingNotFoundException : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Landroid/provider/Settings$SettingNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_2

    :sswitch_0
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121c97

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121ba2

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_7

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121c97

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121ba0

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121c97

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121ba1

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :sswitch_1
    if-eqz p2, :cond_9

    if-eqz p3, :cond_9

    if-eqz v6, :cond_8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121c9a

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121ba2

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_8
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121c99

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121ba2

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_9
    if-eqz p2, :cond_b

    if-eqz v6, :cond_a

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121c9a

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121ba0

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_a
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121c99

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121ba0

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_b
    if-eqz v6, :cond_c

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121c9a

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121ba1

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_c
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121c99

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121ba1

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :sswitch_2
    if-eqz p2, :cond_d

    if-eqz p3, :cond_d

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121c95

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121ba2

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_d
    if-eqz p2, :cond_e

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121c95

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121ba0

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_e
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const v10, 0x7f121c95

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const v10, 0x7f121ba1

    invoke-virtual {p0, v10, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_f
    iget-object v9, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v10, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    invoke-virtual {v9, v10}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    :goto_4
    if-eqz p1, :cond_10

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f12037c

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    if-eqz p4, :cond_11

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f1218f0

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    if-eqz p3, :cond_12

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f120e46

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    if-eqz p2, :cond_1

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f120b18

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :sswitch_3
    const v9, 0x7f120849

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_4
    const v9, 0x7f1202d2

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_5
    const v9, 0x7f121c97

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_6
    if-eqz v6, :cond_13

    const v9, 0x7f121c9a

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_13
    const v9, 0x7f121c99

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :sswitch_7
    const v9, 0x7f121c95

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :sswitch_8
    const v9, 0x7f121c7e

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x30000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x60000 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x9100 -> :sswitch_4
        0x10000 -> :sswitch_5
        0x10001 -> :sswitch_3
        0x20000 -> :sswitch_6
        0x30000 -> :sswitch_6
        0x40000 -> :sswitch_7
        0x50000 -> :sswitch_7
        0x60000 -> :sswitch_7
        0x70000 -> :sswitch_8
        0x90000 -> :sswitch_4
    .end sparse-switch
.end method

.method private getLockTypeSummary(I)Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v6, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v6, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f121c8c

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    const v5, 0x7f121c8b

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v7, 0x10

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v7, 0x100

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-eqz v5, :cond_4

    const/4 v0, 0x1

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    const/16 v7, 0x1000

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricLockscreen(II)I

    move-result v5

    if-eqz v5, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-direct {p0, v2, v1, v3, v0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getBiometricsSummary(ZZZZ)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static isSmartLockPreference(Landroid/content/res/Resources;I)Ljava/lang/Boolean;
    .locals 9

    const/4 v8, 0x0

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v6, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-instance v2, Landroid/content/res/Resources;

    invoke-direct {v2, v0, v4, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    :try_start_0
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :cond_0
    :goto_0
    if-nez v5, :cond_1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v3

    const-string/jumbo v5, ""

    goto :goto_0

    :cond_1
    const-string/jumbo v6, "Smart Lock"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string/jumbo v6, "LockscreenSettings"

    const-string/jumbo v7, "isSmartLockSupported : true"

    invoke-static {v6, v7}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6

    :cond_2
    const-string/jumbo v6, "LockscreenSettings"

    const-string/jumbo v7, "isSmartLockSupported : false"

    invoke-static {v6, v7}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    return-object v6
.end method

.method private mUseCalendar(II)Ljava/lang/String;
    .locals 6

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    :goto_0
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, p2}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/16 v2, 0xa

    goto :goto_0
.end method

.method private makeAccessiblityDisablePopup()V
    .locals 13

    const/4 v0, 0x0

    const-string/jumbo v1, "\u2011"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "accessibility_display_magnification_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "accessibility_display_magnification_navbar_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_6

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "finger_magnifier"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_7

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "FmMagnifier"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_8

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "high_contrast"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_9

    const/4 v5, 0x1

    :goto_3
    const-string/jumbo v9, ""

    const-string/jumbo v6, ""

    const v10, 0x7f120192

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v0, 0x1

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/settings/Utils;->getEnabledTalkbackName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    const v10, 0x7f120080

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f120080

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-nez v4, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    const v10, 0x7f120065

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f120065

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    if-eqz v5, :cond_4

    add-int/lit8 v0, v0, 0x1

    const v10, 0x7f12124d

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v10, "\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f12124d

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/4 v10, 0x1

    if-ne v0, v10, :cond_a

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const v11, 0x7f120190

    invoke-virtual {p0, v11, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f120175

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const v11, 0x7f12018f

    invoke-virtual {p0, v11, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_4
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$4;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$4;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenSettings;)V

    const v12, 0x7f120191

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    new-instance v11, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$5;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$5;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenSettings;)V

    const/high16 v12, 0x1040000

    invoke-virtual {v10, v12, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->aodDialog:Landroid/app/AlertDialog;

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->aodDialog:Landroid/app/AlertDialog;

    new-instance v11, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$6;

    invoke-direct {v11, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$6;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenSettings;)V

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v10, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->aodDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_5
    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_a
    const/4 v10, 0x2

    if-lt v0, v10, :cond_b

    const v10, 0x7f120193

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_b
    return-void
.end method

.method private needShowSmartLockDialog(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v2, "lock_screen_menu_settings"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "smart_lock_show_dialog"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isCHNSimInserted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    return v3
.end method

.method private resetAccessabilityFeature()V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "accessibility_display_magnification_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "finger_magnifier"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "FmMagnifier"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "high_contrast"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    const/4 v3, 0x1

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "accessibility_display_magnification_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "finger_magnifier"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "FmMagnifier"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    if-eqz v3, :cond_4

    const-string/jumbo v5, "accessibility"

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v7}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "high_contrast"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    goto :goto_3
.end method

.method private setClockStyleStateInRoaming()V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    if-nez v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v7, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "aod_mode"

    sget v8, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    invoke-static {v6, v7, v9, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v10, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "dualclock_menu_settings"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "roaming_clock_option"

    sget v8, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_4

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isIgnoreNationalRoaming(Landroid/content/Context;)Z

    move-result v1

    const-string/jumbo v6, "LockscreenSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isNetworkRoaming = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v5, :cond_6

    if-eqz v3, :cond_6

    xor-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_6

    if-eqz v4, :cond_6

    if-nez v2, :cond_1

    xor-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_5

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v7, 0x7f1205c7

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v6, v9}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    :goto_4
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v7, 0x7f1205c6

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v7, 0x7f1205c5

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    :goto_5
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v6, v10}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto :goto_4

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mClockStyle:Landroid/support/v7/preference/SecPreference;

    const v7, 0x7f1205c8

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/SecPreference;->setSummary(I)V

    goto :goto_5
.end method

.method private setLinkedDataView()V
    .locals 14

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->isShopDemo(Landroid/content/Context;)Z

    move-result v6

    invoke-static {}, Lcom/android/settings/Utils;->isLDUModel()Z

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_7

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-nez v12, :cond_7

    new-instance v12, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v12, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    new-instance v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v7}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.android.settings"

    const-string/jumbo v13, "com.samsung.android.settings.smartscan.SmartScanEntry"

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "flowId"

    const/16 v13, 0x2343

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v12, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getMetricsCategory()I

    move-result v13

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v0, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v12, 0x7f12037c

    iput v12, v7, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v8}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.android.settings"

    const-string/jumbo v13, "com.samsung.android.settings.face.FaceEntry"

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "flowId"

    const/16 v13, 0x2344

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v12, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getMetricsCategory()I

    move-result v13

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v1, v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v12, 0x7f120379

    iput v12, v8, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v9}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.android.settings"

    const-string/jumbo v13, "com.samsung.android.settings.iris.IrisLockSettings"

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "flowId"

    const/16 v13, 0x2345

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v12, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getMetricsCategory()I

    move-result v13

    invoke-virtual {v2, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v2, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v12, 0x7f12037b

    iput v12, v9, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v10}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.android.settings"

    const-string/jumbo v13, "com.android.settings.fingerprint.FingerprintEntry"

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "flowId"

    const/16 v13, 0x2346

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v12, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getMetricsCategory()I

    move-result v13

    invoke-virtual {v3, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object v3, v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v12, 0x7f12037a

    iput v12, v10, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v11}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v12, "com.samsung.android.applock"

    const-string/jumbo v13, "com.samsung.android.applock.settings.AppLockSettingsActivity"

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v12, "flowId"

    const/16 v13, 0x1208

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v12, "callerMetric"

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getMetricsCategory()I

    move-result v13

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v12, "is_from_suggestions"

    const/4 v13, 0x1

    invoke-virtual {v4, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iput-object v4, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSSecure()Z

    move-result v12

    if-eqz v12, :cond_8

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v13, "com.samsung.android.app.sprotect"

    invoke-static {v12, v13}, Lcom/android/settings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    const v12, 0x7f120226

    iput v12, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIntelligentBiometrics()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->isGuestUser()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_0

    xor-int/lit8 v12, v6, 0x1

    if-eqz v12, :cond_0

    xor-int/lit8 v12, v5, 0x1

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_0

    sget v12, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_0

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v12, v7}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSilentLock()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->isGuestUser()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1

    xor-int/lit8 v12, v6, 0x1

    if-eqz v12, :cond_1

    xor-int/lit8 v12, v5, 0x1

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->isSharedDeviceEnabled(Landroid/content/Context;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1

    sget v12, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    invoke-static {v12}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v12, v8}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportIris()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->isGuestUser()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_2

    xor-int/lit8 v12, v6, 0x1

    if-eqz v12, :cond_2

    xor-int/lit8 v12, v5, 0x1

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->isSharedDeviceSupportIris(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v12, v9}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_2
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->hasFingerprintFeature(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->isGuestUser()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_3

    xor-int/lit8 v12, v6, 0x1

    if-eqz v12, :cond_3

    xor-int/lit8 v12, v5, 0x1

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v12, v10}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_3
    const-string/jumbo v12, "applock"

    invoke-static {v12}, Lcom/android/settings/Utils;->isSupportCHNEnhancedFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/Utils;->isAfwProfile(Landroid/content/Context;)Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportSSecure()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string/jumbo v13, "com.samsung.android.app.sprotect"

    invoke-static {v12, v13}, Lcom/android/settings/Utils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSSecure()Z

    move-result v12

    xor-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_6

    :cond_5
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v12, v11}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)Landroid/view/View;

    :cond_6
    iget-object v12, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v12, p0}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Ljava/lang/Object;)V

    :cond_7
    return-void

    :cond_8
    const v12, 0x7f120220

    iput v12, v11, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    goto/16 :goto_0
.end method

.method private showSmartLockDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    move-object v2, p2

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f0d036d

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v4, 0x7f0a06ed

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const v4, 0x7f0a0523

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f121992    # 1.9420006E38f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$7;

    invoke-direct {v5, p0, v0, p2}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$7;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenSettings;Landroid/widget/CheckBox;Landroid/content/Intent;)V

    const v6, 0x7f1205fd

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$8;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$8;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenSettings;)V

    const v6, 0x7f1205f6

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$9;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings$9;-><init>(Lcom/samsung/android/settings/lockscreen/LockscreenSettings;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updateAlwaysOnScreenSummary()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "aod_mode"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v3, v4, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x1

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setChecked(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getAODclocksummary()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAODDisabledInPSM(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplayState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v4, 0x7f12018d

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isNavigationBarEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v4, 0x7f120195

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v4, 0x7f120196

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v4, 0x7f12018e

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    goto :goto_2

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isDesktopDockConnected(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v6}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_2

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreen:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v3, v7}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_2
.end method

.method private updateOwnerInfo()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "com.samsung.android.app.aodservice"

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const v2, 0x7f1218d1

    if-eqz v1, :cond_3

    const v2, 0x7f1218d0

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/SecRestrictedPreference;->setSummary(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mOwnerInfo:Landroid/support/v7/preference/SecRestrictedPreference;

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/SecRestrictedPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0
.end method

.method private updatePreferenceRelatedAOD()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isAlwaysOnDisplayEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->informationCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isUsingContentHomeButtonInAOD(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->informationCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->informationCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/SecPreferenceCategory;->setOrderingAsAdded(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->informationCategory:Landroid/support/v7/preference/SecPreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1130

    return v0
.end method

.method protected isGuestUser()Z
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    return v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v1, "LockscreenSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResult : requestCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " resultCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb1

    if-ne p1, v1, :cond_1

    if-ne p2, v4, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v5, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/16 v1, 0xc8

    if-ne p1, v1, :cond_2

    if-ne p2, v4, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->updateOwnerInfo()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/trustagent/TrustAgentManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mTrustAgentManager:Lcom/android/settings/trustagent/TrustAgentManager;

    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->sPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string/jumbo v3, "display"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v2, "coversetting"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mFromCoverSetting:Z

    :cond_0
    const v2, 0x7f120ffb

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mSmartLockSummary:Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string/jumbo v2, "trust_agent_click_intent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "trust_agent_click_intent"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    :cond_1
    const-string/jumbo v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->MY_USER_ID:I

    invoke-static {v2, v3}, Lcom/android/settings/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/ManagedLockPasswordProvider;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mManagedPasswordProvider:Lcom/android/settings/ManagedLockPasswordProvider;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mUm:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mProfileChallengeUserId:I

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v7}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v7, "lock_screen_menu_sec_notifications"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const v6, 0x7f1210ab

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v10, "com.samsung.android.app.aodservice"

    invoke-static {v7, v10}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    const v6, 0x7f1210aa

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v7, v0}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    if-eqz v0, :cond_1

    const v6, 0x7f121b3e

    :cond_1
    invoke-virtual {v7, v6}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->setSummary(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mLockscreenSecNotification:Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;

    invoke-virtual {v7, v0}, Landroid/support/v14/preference/SecRestrictedSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "lock_screen_show_notifications"

    if-eqz v0, :cond_4

    move v7, v8

    :goto_0
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b037d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    if-eqz v0, :cond_3

    const/16 v9, 0x3e8

    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v7, v10, v9}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    return v8

    :cond_4
    move v7, v9

    goto :goto_0

    :cond_5
    const-string/jumbo v7, "always_on_screen"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "accessibility_display_magnification_enabled"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "finger_magnifier"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "FmMagnifier"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_b

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "high_contrast"

    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_c

    const/4 v3, 0x1

    :goto_3
    if-eqz v0, :cond_d

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_6

    if-nez v1, :cond_6

    if-nez v2, :cond_6

    if-eqz v3, :cond_d

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->makeAccessiblityDisablePopup()V

    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b02fe

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    invoke-static {v7, v9}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    return v8

    :cond_8
    const/4 v1, 0x1

    goto :goto_1

    :cond_9
    const/4 v1, 0x0

    goto :goto_1

    :cond_a
    const/4 v2, 0x1

    goto :goto_2

    :cond_b
    const/4 v2, 0x0

    goto :goto_2

    :cond_c
    const/4 v3, 0x0

    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "aod_mode"

    if-eqz v0, :cond_e

    move v7, v8

    :goto_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    invoke-static {v10, v11, v7, v12}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isNotAODSettingTime(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v10, 0x7f120194

    invoke-virtual {p0, v10}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_4

    :cond_e
    move v7, v9

    goto :goto_5

    :cond_f
    const-string/jumbo v7, "lock_screen_dualclock"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "dualclock_menu_settings"

    if-eqz v0, :cond_10

    move v7, v8

    :goto_6
    invoke-static {v10, v11, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v0, :cond_11

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/android/settings/Utils;->getOnOffstatus(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v8}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :goto_7
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->setClockStyleStateInRoaming()V

    return v8

    :cond_10
    move v7, v9

    goto :goto_6

    :cond_11
    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    const v10, 0x7f1208f0

    invoke-virtual {v7, v10}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->setSummary(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mDualclock:Landroid/support/v14/preference/SecSwitchPreferenceScreen;

    invoke-virtual {v7, v9}, Landroid/support/v14/preference/SecSwitchPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_7

    :cond_12
    return v9
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 17

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v13

    const-string/jumbo v1, "unlock_set_or_change"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120fe0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x1

    return v1

    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "fromScreenLock"

    const/4 v2, 0x1

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v3, "com.android.settings.ChooseLockGeneric$ChooseLockGenericFragment"

    const v4, 0x7f121c88

    const/16 v5, 0x7b

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_2
    const-string/jumbo v1, "always_on_screen"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.samsung.android.app.aodservice.settings.AODSettingsMain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b02fd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    :catch_0
    move-exception v9

    const-string/jumbo v1, "LockscreenSettings"

    const-string/jumbo v2, "ActivityNotFoundException in AlwaysOnDisplay"

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string/jumbo v1, "secured_lock_settigns"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120fe0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x1

    return v1

    :cond_4
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    :cond_5
    const-string/jumbo v1, "trust_agent"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0465

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v8, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->needShowSmartLockDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->showSmartLockDialog(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v1, 0x1

    return v1

    :cond_6
    new-instance v10, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v10, v1, v0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    const/16 v2, 0xb1

    invoke-virtual {v10, v2, v1}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v1, "lock_screen_dualclock"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mFromCoverSetting:Z

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "LNCS"

    const-string/jumbo v4, "SViewCover"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "LNCS"

    const-string/jumbo v4, "LockScreen"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string/jumbo v1, "clock_style_pref"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->getClockStyleSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v9

    const-string/jumbo v1, "LockscreenSettings"

    const-string/jumbo v2, "Not exist ClockPackSetting Activity"

    invoke-static {v1, v2}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v1, "lock_screen_menu_owner_infomation"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v15

    if-eqz v15, :cond_c

    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1

    :cond_c
    const v16, 0x7f12063b

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->newInstance(I)Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    move-result-object v14

    const/16 v1, 0xc8

    move-object/from16 v0, p0

    invoke-virtual {v14, v0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "dialog"

    invoke-virtual {v14, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mFromCoverSetting:Z

    if-eqz v1, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "LNCS"

    const-string/jumbo v4, "SViewCover"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.android.settings"

    const-string/jumbo v3, "LNCS"

    const-string/jumbo v4, "LockScreen"

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->aodDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_magnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->aodDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->createPreferenceHierarchy()Landroid/support/v7/preference/PreferenceScreen;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->updateAlwaysOnScreenSummary()V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->setLinkedDataView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->buildPreferenceForCOM()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "aod_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mAlwaysOnScreenObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "FmMagnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "high_contrast"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "trust_agent_click_intent"

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/LockscreenSettings;->mTrustAgentClickIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
