.class public Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettingsMobility.java"

# interfaces
.implements Lcom/android/settings/DialogCreatable;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$17;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$18;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$19;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$1;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$2;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$3;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$4;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$5;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$6;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$7;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$8;,
        Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String;

.field public static option_flag:I


# instance fields
.field public interactioncontrol:Z

.field private mAccessControlDialog:Landroid/app/AlertDialog;

.field private mAssistantMenu:Landroid/support/v14/preference/SecSwitchPreference;

.field private mAutoClickDialog:Landroid/app/AlertDialog;

.field private mAutoclickPreferenceScreen:Landroid/support/v14/preference/SecSwitchPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDialogTitle:Ljava/lang/String;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

.field private final mSettingsContentObserver:Lcom/samsung/android/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSingleTapModeDialog:Landroid/app/AlertDialog;

.field private mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

.field private mToggleAccessControlObserver:Landroid/database/ContentObserver;

.field private mToggleAccessControlPreference:Landroid/support/v14/preference/SecSwitchPreference;

.field private mToggleAirWakeUpPreference:Landroid/support/v14/preference/SecSwitchPreference;

.field private mToggleAssistantMenuObserver:Landroid/database/ContentObserver;

.field private mToggleAutoClickControlObserver:Landroid/database/ContentObserver;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field public magnifier:Z

.field public onhandoperation:Z

.field public stalkback:Z

.field public talkback:Z

.field public universalswitch:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAutoclickPreferenceScreen:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/support/v7/preference/ListPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->isScreenLockUsed()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->isSinglePopupNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->setScreenLockUsedSetting(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->switchOnToast()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->turnOnOffAssistantMenu(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->turnOnOffInteractionControl(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->updateMobilityPreferences()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->updateServicesPreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$8;

    invoke-direct {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$8;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mCurConfig:Landroid/content/res/Configuration;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->universalswitch:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->talkback:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->stalkback:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onhandoperation:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->interactioncontrol:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->magnifier:Z

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapModeDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAccessControlDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAutoClickDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mDialog:Landroid/app/AlertDialog;

    iput-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$1;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mUpdateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$2;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$3;

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$3;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsContentObserver:Lcom/samsung/android/settings/accessibility/SettingsContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$4;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$5;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$6;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAssistantMenuObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$7;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$7;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAutoClickControlObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$9;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private cancelReduceSizeBroadcast()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "any_screen_enabled"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.intent.action.ONEHAND_REDUCE_SCREEN_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "is_enabled"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private getCurrentSecurityTitle()Ljava/lang/String;
    .locals 6

    const v5, 0x7f12173f

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const v1, 0x7f12003e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_0
    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f121c99

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_1
    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f121c95

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f121c97

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v5, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_2
        0x20000 -> :sswitch_0
        0x30000 -> :sswitch_0
        0x40000 -> :sswitch_1
        0x50000 -> :sswitch_1
        0x60000 -> :sswitch_1
    .end sparse-switch
.end method

.method private initializeAllPreferences()V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v6, "assistant_menu_preference"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.app.assistantmenu"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const-string/jumbo v6, "assistant_menu_preference"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->removePreference(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v6, "select_long_press_timeout_preference"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v7/preference/ListPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    const v7, 0x7f120552

    invoke-virtual {v6, v7}, Landroid/support/v7/preference/ListPreference;->setNegativeButtonText(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v6, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0300e3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0300e2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v5

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_2

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v7, v5, v0

    aget-object v8, v3, v0

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "select_long_press_timeout_preference"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->removePreference(Ljava/lang/String;)V

    :cond_3
    const-string/jumbo v6, "air_wake_up"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-nez v6, :cond_4

    sget-object v6, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "mSContextManager is null, mSContextManager init"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, "scontext"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/scontext/SContextManager;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    :cond_4
    const-string/jumbo v6, "com.sec.feature.sensorhub"

    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const-string/jumbo v6, "air_wake_up"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->removePreference(Ljava/lang/String;)V

    :cond_6
    const-string/jumbo v6, "autoclick_preference_screen"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAutoclickPreferenceScreen:Landroid/support/v14/preference/SecSwitchPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAutoclickPreferenceScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v6, "access_control_key"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/support/v14/preference/SecSwitchPreference;

    const v7, 0x7f120033

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v6, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string/jumbo v7, "com.samsung.android.app.accesscontrol"

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    const-string/jumbo v6, "access_control_key"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->removePreference(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v6, "access_control_key"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v6, "select_long_press_timeout_preference"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->removePreference(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public static isLocaleRTL()Z
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->isLocaleRTL(Ljava/util/Locale;)Z

    move-result v0

    return v0
.end method

.method public static isLocaleRTL(Ljava/util/Locale;)Z
    .locals 9

    const-string/jumbo v0, "ar"

    const-string/jumbo v3, "fa"

    const-string/jumbo v1, "he"

    const-string/jumbo v2, "iw"

    const-string/jumbo v6, "ji"

    const-string/jumbo v4, "ur"

    const-string/jumbo v5, "yi"

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x1

    goto :goto_0
.end method

.method private isScreenLockUsed()Z
    .locals 4

    const/4 v1, 0x0

    const v2, 0x7f12003e

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getCurrentSecurityTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "interaction_control_exit_locked"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSinglePopupNeeded()Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v2, "pref_assistant_noti"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assistant_menu"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_interaction"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v4
.end method

.method private setScreenLockUsedSetting(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "interaction_control_exit_locked"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v8, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f120246

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    const v6, 0x7f121c16

    invoke-virtual {v4, v6, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d001f

    invoke-virtual {v2, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v4, 0x7f0a0013

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setFocusable(Z)V

    const v4, 0x7f0a0291

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$14;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$14;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/widget/CheckBox;)V

    const v6, 0x7f12089e

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$15;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$15;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$16;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$16;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showAccessControlTurnOffPopup()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f120043

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$20;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$20;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$21;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$21;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    const v2, 0x7f120552

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$22;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$22;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAccessControlDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private showAutoClickExclusivePopup()V
    .locals 13

    const v12, 0x7f120047

    const/4 v11, 0x0

    sput v11, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f050005

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    const-string/jumbo v4, ""

    iget-boolean v8, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onhandoperation:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u2022 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1213cb

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v8, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    add-int/lit8 v8, v8, 0x8

    sput v8, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x1030132

    invoke-direct {v0, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v8, "layout_inflater"

    invoke-virtual {v0, v8}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    const v8, 0x7f0d001e

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

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

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {p0, v12}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    const v9, 0x7f121c0c

    invoke-virtual {p0, v9, v8}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const/4 v10, 0x5

    invoke-direct {v8, v9, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1205fd

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$11;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$11;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$12;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$12;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    const v10, 0x7f120552

    invoke-virtual {v8, v10, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v9, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$13;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$13;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAutoClickDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private switchOnToast()V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_interaction"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assistant_menu"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "easy_interaction"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.app.assistantmenu"

    const-string/jumbo v4, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f12195f

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private turnOnOffAssistantMenu(Landroid/content/Context;Z)V
    .locals 5

    const/4 v1, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.app.assistantmenu"

    const-string/jumbo v4, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->isExclusivePopupNeeded(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->isSinglePopupNeeded()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->switchOnToast()V

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eqz p2, :cond_0

    const/16 v1, 0x3e8

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v2, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "AssistantMenu Service Start!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assistant_menu"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->showDialog(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "AssistantMenu Service Stop!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "assistant_menu"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private static turnOnOffInteractionControl(Landroid/content/Context;Z)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Turn on Interaction control"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "access_control_use"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Turn off Interaction control"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "access_control_use"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.app.accesscontrol"

    const-string/jumbo v3, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method private updateAllPreferences()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->updateMobilityPreferences()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->updateServicesPreferences()V

    return-void
.end method

.method private updateAutoclickSummary(Landroid/support/v14/preference/SecSwitchPreference;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessibility_autoclick_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1, v5}, Landroid/support/v14/preference/SecSwitchPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    if-nez v1, :cond_1

    const v2, 0x7f120056

    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessibility_autoclick_delay"

    const/16 v4, 0x258

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getAutoclickPreferenceSummary(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateMobilityPreferences()V
    .locals 9

    const/16 v5, 0x1f4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "long_press_timeout"

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    if-ne v0, v5, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "assistant_menu"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    :goto_2
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAutoclickPreferenceScreen:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAutoclickPreferenceScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "accessibility_autoclick_enabled"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_c

    move v1, v2

    :goto_3
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAutoclickPreferenceScreen:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->updateAutoclickSummary(Landroid/support/v14/preference/SecSwitchPreference;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "air_motion_wake_up"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_d

    move v1, v2

    :goto_4
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :goto_5
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "access_control_use"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_f

    move v1, v2

    :goto_6
    invoke-virtual {v4, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    :cond_5
    :goto_7
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v3}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    :cond_6
    :goto_8
    return-void

    :cond_7
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0x5dc

    if-ne v0, v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayProvider;->getTimeOutText(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    new-array v4, v2, [Ljava/lang/Object;

    const-string/jumbo v5, "%.2f"

    new-array v6, v2, [Ljava/lang/Object;

    int-to-float v7, v0

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const v5, 0x7f1210b5

    invoke-virtual {p0, v5, v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    const/16 v4, 0x2bc

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_b
    move v1, v3

    goto/16 :goto_2

    :cond_c
    move v1, v3

    goto/16 :goto_3

    :cond_d
    move v1, v3

    goto/16 :goto_4

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto/16 :goto_5

    :cond_f
    move v1, v3

    goto/16 :goto_6

    :cond_10
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_7

    :cond_11
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setEnabled(Z)V

    goto :goto_8
.end method

.method private updateServicesPreferences()V
    .locals 28

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v25

    if-nez v25, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "accessibility_enabled"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_2

    const/4 v6, 0x1

    :goto_0
    const/16 v16, 0x0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v9

    :goto_1
    move/from16 v0, v16

    if-ge v0, v9, :cond_1

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/accessibilityservice/AccessibilityServiceInfo;

    if-nez v17, :cond_3

    :cond_1
    return-void

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    new-instance v20, Landroid/support/v7/preference/SecPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v17 .. v17}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v25

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v17 .. v17}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string/jumbo v25, "com.samsung.android.universalswitch"

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isUniversalSwitchSupportMultiUser()Z

    move-result v25

    xor-int/lit8 v25, v25, 0x1

    if-eqz v25, :cond_5

    :cond_4
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_5
    new-instance v8, Landroid/content/ComponentName;

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-direct {v8, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/SecPreference;->setKey(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v6, :cond_a

    invoke-interface {v14, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v21

    :goto_3
    sget-object v25, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "title is : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, " serviceEnabled : "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v25

    if-eqz v25, :cond_b

    const v25, 0x7f1200a9

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4
    const/16 v25, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setOrder(I)V

    const-class v25, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setFragment(Ljava/lang/String;)V

    const/16 v25, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setPersistent(Z)V

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/preference/SecPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    const-string/jumbo v25, "preference_key"

    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/preference/SecPreference;->getKey()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v25, "checked"

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v25, "title"

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_6

    const v25, 0x7f120083

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_6
    const-string/jumbo v25, "com.samsung.android.universalswitch"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v25

    if-eqz v25, :cond_7

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const-string/jumbo v26, "universalswitch_service_description_tablet"

    const-string/jumbo v27, "string"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    :cond_7
    :goto_5
    const-string/jumbo v25, "summary"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_8

    const-string/jumbo v25, "settings_title"

    const v26, 0x7f120066

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v25, "settings_component_name"

    new-instance v26, Landroid/content/ComponentName;

    move-object/from16 v0, v26

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v26}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const-string/jumbo v25, "component_name"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0, v8}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v25, "com.samsung.android.universalswitch"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->removePreference(Ljava/lang/String;)V

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    if-eqz v20, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v25

    if-eqz v25, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContext()Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_c

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_2

    :cond_a
    const/16 v21, 0x0

    goto/16 :goto_3

    :cond_b
    const v25, 0x7f1200a8

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :catch_0
    move-exception v13

    sget-object v25, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    const-string/jumbo v26, "universalswitch_service_description_tablet not found in universal"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_c
    const/16 v25, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_2
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    return p1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x13ec

    return v0
.end method

.method public isExclusivePopupNeeded(Landroid/content/Context;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "universal_switch_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->universalswitch:Z

    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->talkback:Z

    invoke-static {p1}, Lcom/android/settings/Utils;->isStalkBackEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->stalkback:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "any_screen_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onhandoperation:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "access_control_use"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->interactioncontrol:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "finger_magnifier"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_4

    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->magnifier:Z

    iget-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->universalswitch:Z

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->talkback:Z

    or-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->stalkback:Z

    or-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onhandoperation:Z

    or-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->interactioncontrol:Z

    or-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->magnifier:Z

    or-int v0, v1, v2

    sget-object v1, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Universal Switch : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->universalswitch:Z

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nTalkback : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->talkback:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nS Talkback : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->stalkback:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nOne-handed operation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onhandoperation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nInteraction Control : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->interactioncontrol:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nmagnifier : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->magnifier:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    move v1, v3

    goto/16 :goto_0

    :cond_2
    move v1, v3

    goto/16 :goto_1

    :cond_3
    move v1, v3

    goto/16 :goto_2

    :cond_4
    move v2, v3

    goto :goto_3
.end method

.method public isExclusivePopupNeededForAutoClick(Landroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "any_screen_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onhandoperation:Z

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onhandoperation:Z

    sget-object v1, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\nOne-handed operation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->onhandoperation:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public needAccFeatureConfirmDialog(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assistant_menu_do_not_show_confirm_popup"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$10;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$10;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f15000a

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->initializeAllPreferences()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->updateServicesPreferences()V

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v18

    if-nez v18, :cond_0

    const/16 v18, 0x0

    return-object v18

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 v18, 0x0

    return-object v18

    :pswitch_1
    const/16 v18, 0x0

    sput v18, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string/jumbo v19, "easy_interaction"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f050005

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v13

    const-string/jumbo v10, ""

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "com.samsung.android.universalswitch"

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    if-nez v18, :cond_1

    sget v18, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    add-int/lit8 v18, v18, 0x1

    sput v18, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f1200aa

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "com.google.android.marvin.talkback"

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    sget v18, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    add-int/lit8 v18, v18, 0x2

    sput v18, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    invoke-static {}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->isLocaleRTL()Z

    move-result v18

    if-eqz v18, :cond_6

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\u200f\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f120c5d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "com.samsung.android.app.talkback"

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-static {}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->isLocaleRTL()Z

    move-result v18

    if-eqz v18, :cond_7

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\u200f\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f120821

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :goto_1
    sget v18, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    add-int/lit8 v18, v18, 0x4

    sput v18, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    :cond_3
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f1213cb

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget v18, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    add-int/lit8 v18, v18, 0x8

    sput v18, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "com.samsung.android.app.accesscontrol"

    invoke-static/range {v18 .. v19}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    sget v18, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    add-int/lit8 v18, v18, 0x10

    sput v18, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->option_flag:I

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f12003d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    const-string/jumbo v19, "com.sec.feature.overlaymagnifier"

    invoke-virtual/range {v18 .. v19}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f120065

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_5
    new-instance v5, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const v19, 0x1030132

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v5, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v18, "layout_inflater"

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    const v18, 0x7f0d001e

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    const v18, 0x7f0a0012

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setFocusable(Z)V

    const v18, 0x7f0a0259

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v18, 0x7f0a025a

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v18, 0x7f120241

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v18, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const/16 v20, 0x5

    invoke-direct/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f1205fd

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;

    invoke-direct/range {v20 .. v21}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$23;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$24;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$24;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    const v20, 0x7f120552

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$25;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$25;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapModeDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapModeDialog:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSingleTapModeDialog:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    return-object v18

    :cond_6
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f120c5d

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f120821

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/support/v7/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string/jumbo v19, "layout_inflater"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    const v18, 0x7f0d0202

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v18, 0x7f0a02cc

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v18, Landroid/content/ComponentName;

    const-string/jumbo v19, "com.samsung.android.app.assistantmenu"

    const-string/jumbo v20, "com.samsung.android.app.assistantmenu.serviceframework.AssistantMenuService"

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v18, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mDialogTitle:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f12195f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f121960

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$26;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$26;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;Landroid/content/Intent;)V

    const v20, 0x104000a

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$27;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility$27;-><init>(Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;)V

    const v20, 0x7f120552

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    return-object v18

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsContentObserver:Lcom/samsung/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAssistantMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAutoClickControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DexterityAndInteraction"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v15, p2

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "sidesync_source_connect"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f121c3a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "assistant_menu"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "activity"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    invoke-virtual {v9}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v11

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/support/v14/preference/SecSwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->showLockTaskEscapeMessage()V

    const/4 v1, 0x0

    return v1

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v1, v10, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120045

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f12118e

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    return v1

    :cond_2
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->needAccFeatureConfirmDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V

    const/4 v1, 0x1

    return v1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->turnOnOffAssistantMenu(Landroid/content/Context;Z)V

    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->turnOnOffAssistantMenu(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAirWakeUpPreference:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object/from16 v15, p2

    check-cast v15, Ljava/lang/Boolean;

    const-string/jumbo v1, "accessibility"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityManager;->OnStartGestureWakeup()Z

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getMetricsCategory()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0045

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v1, 0x3e8

    :goto_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    const/4 v1, 0x1

    return v1

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V

    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityManager;->OnStopGestureWakeup()Z

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAutoclickPreferenceScreen:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object/from16 v15, p2

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->isExclusivePopupNeededForAutoClick(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->showAutoClickExclusivePopup()V

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getMetricsCategory()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b003b

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0x3e8

    :goto_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    :cond_9
    const/4 v1, 0x0

    return v1

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessibility_autoclick_enabled"

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    :goto_5
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    goto :goto_5

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "accessibility_autoclick_enabled"

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x1

    :goto_6
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_d
    const/4 v1, 0x0

    goto :goto_6

    :cond_e
    const/4 v1, 0x0

    goto :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlPreference:Landroid/support/v14/preference/SecSwitchPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object/from16 v15, p2

    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->turnOnOffInteractionControl(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getMetricsCategory()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b0284

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x3e8

    :goto_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    const/4 v1, 0x1

    return v1

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "access_control_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->showAccessControlTurnOffPopup()V

    goto :goto_7

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/accessibility/AccessibilityUtils;->turnOnOffInteractionControl(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_7

    :cond_12
    const/4 v1, 0x0

    goto :goto_8

    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const/16 v1, 0x2bc

    if-ne v14, v1, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const-class v2, Lcom/samsung/android/settings/accessibility/touchsensibility/TapAndHoldDelayCustomFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    move-object/from16 v7, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getMetricsCategory()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    const/4 v1, 0x1

    return v1

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "long_press_timeout"

    invoke-static {v1, v2, v14}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_9
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPreferenceClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SecSwitchPreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mAssistantMenu:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v1, "com.samsung.android.settings.AssistantMenuPreferenceFragment"

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setFragment(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->updateAllPreferences()V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsContentObserver:Lcom/samsung/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "long_press_timeout"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mTapAndHoldDelayObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "access_control_use"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAccessControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "assistant_menu"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAssistantMenuObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "accessibility_autoclick_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mToggleAutoClickControlObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DexterityAndInteraction"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public turnOffExlusiveOptions(Landroid/content/Context;I)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    and-int/lit8 v2, p2, 0x1

    if-lez v2, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/android/settings/Utils;->turnOffUniversalSwitch(Landroid/content/Context;)Z

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "turnOffExlusiveOptions - UNIVERSAL INPUT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    and-int/lit8 v2, p2, 0x2

    if-gtz v2, :cond_1

    and-int/lit8 v2, p2, 0x4

    if-lez v2, :cond_2

    :cond_1
    invoke-static {p1}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "turnOffExlusiveOptions - TALKBACK/GALAXY TALKBACK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    and-int/lit8 v2, p2, 0x8

    if-lez v2, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->cancelReduceSizeBroadcast()V

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "turnOffExlusiveOptions - One-handed Operation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    and-int/lit8 v2, p2, 0x10

    if-lez v2, :cond_4

    const-string/jumbo v2, "access_control_use"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v2, "access_control_enabled"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.app.accesscontrol"

    const-string/jumbo v4, "com.samsung.android.app.accesscontrol.AccessControlMainService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    sget-object v2, Lcom/samsung/android/settings/accessibility/AccessibilitySettingsMobility;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "turnOffExlusiveOptions - INTERACTION_CONTROL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v2, "finger_magnifier"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
