.class public Lcom/samsung/android/settings/applications/ManageDefaultApps;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "ManageDefaultApps.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/applications/ManageDefaultApps$1;,
        Lcom/samsung/android/settings/applications/ManageDefaultApps$2;,
        Lcom/samsung/android/settings/applications/ManageDefaultApps$3;,
        Lcom/samsung/android/settings/applications/ManageDefaultApps$4;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String;

.field private static mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;


# instance fields
.field private mAppDomainURLsPreference:Landroid/preference/Preference;

.field private mDefaultAppSelectionPreference:Lcom/android/settings/SecDropDownPreference;

.field private mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

.field private mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

.field private mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

.field private mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private final mHandler:Landroid/os/Handler;

.field private mHome:Landroid/preference/Preference;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private myUserId:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Lcom/android/settings/applications/DefaultBrowserPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    return-object v0
.end method

.method static synthetic -get1()Lcom/samsung/android/settings/applications/EmHandler;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/applications/ManageDefaultApps;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->myUserId:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/applications/ManageDefaultApps;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/applications/ManageDefaultApps;Landroid/content/Intent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->hasDefaultAppByMDM(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/applications/ManageDefaultApps$3;

    invoke-direct {v0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$3;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/settings/applications/ManageDefaultApps$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$1;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mUpdateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/settings/applications/ManageDefaultApps$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$2;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    new-instance v0, Lcom/samsung/android/settings/applications/ManageDefaultApps$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$4;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    iput-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private buildDefaultAppSelection()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultAppSelectionPreference:Lcom/android/settings/SecDropDownPreference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultAppSelectionPreference:Lcom/android/settings/SecDropDownPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "default_app_selection_option"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setValueIndex(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultAppSelectionPreference:Lcom/android/settings/SecDropDownPreference;

    new-instance v1, Lcom/samsung/android/settings/applications/ManageDefaultApps$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$9;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/SecDropDownPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method private hasDefaultAppByMDM(Landroid/content/Intent;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string/jumbo v5, "getDefaultApplicationInternal"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public exeCustomAction()V
    .locals 0

    return-void
.end method

.method public exeOptAction()V
    .locals 0

    return-void
.end method

.method public exePrefAction()V
    .locals 7

    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->exePrefBasicAction(Landroid/preference/PreferenceScreen;)Z

    move-result v6

    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v2

    if-eqz v6, :cond_0

    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "DefaultApplicationsMessage"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "DefaultApplicationsBrowser"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "DefaultApplicationsCall"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "DefaultApplicationsHome"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v3, ""

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public exeViewAction()V
    .locals 0

    return-void
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0xb5

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultBrowserPreference;->rotateSettingsListPreference()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultPhonePreference;->rotateSettingsListPreference()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultSmsPreference;->rotateSettingsListPreference()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultEmergencyPreference;->rotateSettingsListPreference()V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    instance-of v0, v0, Lcom/android/settings/applications/DefaultHomePreference;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings/applications/DefaultHomePreference;

    invoke-virtual {v0}, Lcom/android/settings/applications/DefaultHomePreference;->rotateSettingsListPreference()V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f080052

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->addPreferencesFromResource(I)V

    new-instance v1, Lcom/samsung/android/settings/applications/EmHandler;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/applications/EmHandler;-><init>(Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;)V

    sput-object v1, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->myUserId:I

    const-string/jumbo v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    const-string/jumbo v1, "default_browser"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultBrowserPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    new-instance v2, Lcom/samsung/android/settings/applications/ManageDefaultApps$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$5;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/DefaultBrowserPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    const-string/jumbo v1, "default_phone_app"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultPhonePreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    new-instance v2, Lcom/samsung/android/settings/applications/ManageDefaultApps$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$6;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/DefaultPhonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const-string/jumbo v1, "default_sms_app"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultSmsPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    new-instance v2, Lcom/samsung/android/settings/applications/ManageDefaultApps$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$7;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/DefaultSmsPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    const-string/jumbo v1, "default_emergency_app"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultEmergencyPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    new-instance v2, Lcom/samsung/android/settings/applications/ManageDefaultApps$8;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps$8;-><init>(Lcom/samsung/android/settings/applications/ManageDefaultApps;)V

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/DefaultEmergencyPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    const-string/jumbo v1, "default_app_selection"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SecDropDownPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultAppSelectionPreference:Lcom/android/settings/SecDropDownPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->buildDefaultAppSelection()V

    const-string/jumbo v1, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "home_dcm"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "default_home"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    const-string/jumbo v1, "domain_urls"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mAppDomainURLsPreference:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "com.bmwgroup.touchcommand"

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "home_dcm"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "default_home"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "default_sms_app"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "default_phone_app"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->removePreference(Ljava/lang/String;)V

    :cond_5
    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_6
    const-string/jumbo v1, "default_home"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DefaultHomePreference;

    iput-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string/jumbo v2, "home_dcm"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DefaultApplications"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPreferenceClick false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/DefaultBrowserPreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/DefaultSmsPreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/DefaultPhonePreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/applications/DefaultEmergencyPreference;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/applications/AppCommonUtils;->updateDefaultBrowserPreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultBrowserPreference;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/applications/AppCommonUtils;->updateDefaultPhonePreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultPhonePreference;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/applications/AppCommonUtils;->updateDefaultSMSPreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultSmsPreference;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/applications/AppCommonUtils;->updateDefaultHomePreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/applications/ManageDefaultApps;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "DefaultApplications"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x7d0

    const/4 v2, 0x1

    const-string/jumbo v0, "DefaultApplicationsMessage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "DefaultApplicationsBrowser"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "DefaultApplicationsCall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "DefaultApplicationsHome"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mHome:Landroid/preference/Preference;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public stopAction()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/applications/ManageDefaultApps;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-void
.end method
