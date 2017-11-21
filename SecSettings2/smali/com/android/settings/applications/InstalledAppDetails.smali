.class public Lcom/android/settings/applications/InstalledAppDetails;
.super Lcom/android/settings/applications/AppInfoBase;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/InstalledAppDetails$1;,
        Lcom/android/settings/applications/InstalledAppDetails$2;,
        Lcom/android/settings/applications/InstalledAppDetails$3;,
        Lcom/android/settings/applications/InstalledAppDetails$4;,
        Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;,
        Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;,
        Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;
    }
.end annotation


# static fields
.field private static mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

.field private static mIsKNOX3rdpartyApp:Z


# instance fields
.field private getApplicationUninstallationEnabled:I

.field private isStopSystemAppAllowed:I

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mAppsSettingsPreference:Landroid/preference/Preference;

.field private final mBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryPreference:Lcom/samsung/android/settings/ProgressPreference;

.field private mChartData:Lcom/android/settingslib/net/ChartData;

.field private final mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

.field private final mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mDataPreference:Lcom/samsung/android/settings/ProgressPreference;

.field private mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

.field private mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

.field private mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

.field private mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

.field private mDisableAfterUninstall:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mForceStopButton:Landroid/widget/Button;

.field private mHeader:Lcom/android/settings/applications/SecLayoutPreference;

.field private mHome:Landroid/preference/Preference;

.field private final mHomePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInitialized:Z

.field private mIsEmerMode:Z

.field private mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

.field private mLaunchPreference:Landroid/preference/Preference;

.field private mMemoryPreference:Lcom/samsung/android/settings/ProgressPreference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private final mPermissionCallback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private mPermissionsPreference:Landroid/preference/Preference;

.field private mShowUninstalled:Z

.field private mSipper:Lcom/android/internal/os/BatterySipper;

.field protected mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

.field protected mStatsManager:Lcom/android/settings/applications/ProcStatsData;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mStoragePreference:Lcom/samsung/android/settings/ProgressPreference;

.field private mUninstallButton:Landroid/widget/Button;

.field private mUpdatedSysApp:Z

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/DefaultBrowserPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/DefaultSmsPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    return-object v0
.end method

.method static synthetic -get3()Lcom/samsung/android/settings/applications/EmHandler;
    .locals 1

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/samsung/android/settings/ProgressPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Lcom/samsung/android/settings/ProgressPreference;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/samsung/android/settings/ProgressPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Lcom/samsung/android/settings/ProgressPreference;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/internal/os/BatterySipper;)Lcom/android/internal/os/BatterySipper;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateDataUsage()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/applications/InstalledAppDetails;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/applications/InstalledAppDetails;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateStorage()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/applications/InstalledAppDetails;->mIsKNOX3rdpartyApp:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoBase;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    iput-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmerMode:Z

    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$1;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$2;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$3;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$3;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionCallback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    new-instance v0, Lcom/android/settings/applications/InstalledAppDetails$4;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/InstalledAppDetails$4;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addAppInstallerInfoPref(Landroid/preference/PreferenceScreen;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b156c

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v4, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0b156d

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setTitle(I)V

    const-string/jumbo v6, "app_info_store"

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v8

    const v7, 0x7f0b156e

    invoke-virtual {p0, v7, v6}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.SHOW_APP_INFO"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string/jumbo v6, "android.intent.extra.PACKAGE_NAME"

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {v0, v4}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-void

    :cond_3
    invoke-virtual {v4, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private addDynamicPrefs()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isManagedProfile(Landroid/os/UserManager;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/Utils;->isKnoxContainer(Landroid/os/UserManager;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/applications/DefaultHomePreference;->hasHomePreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string/jumbo v5, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const-string/jumbo v5, "home_dcm"

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    iput-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHome:Landroid/preference/Preference;

    const-string/jumbo v5, "default_home"

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "default_home"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/applications/DefaultBrowserPreference;->hasBrowserPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string/jumbo v5, "default_browser"

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/DefaultBrowserPreference;

    iput-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    new-instance v6, Lcom/android/settings/applications/InstalledAppDetails$10;

    invoke-direct {v6, p0}, Lcom/android/settings/applications/InstalledAppDetails$10;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/DefaultBrowserPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/applications/DefaultPhonePreference;->hasPhonePreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string/jumbo v5, "default_phone_app"

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/DefaultPhonePreference;

    iput-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    new-instance v6, Lcom/android/settings/applications/InstalledAppDetails$11;

    invoke-direct {v6, p0}, Lcom/android/settings/applications/InstalledAppDetails$11;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/DefaultPhonePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/applications/DefaultEmergencyPreference;->hasEmergencyPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string/jumbo v5, "default_emergency_app"

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/DefaultEmergencyPreference;

    iput-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    new-instance v6, Lcom/android/settings/applications/InstalledAppDetails$12;

    invoke-direct {v6, p0}, Lcom/android/settings/applications/InstalledAppDetails$12;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/DefaultEmergencyPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_4
    :goto_3
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/applications/DefaultSmsPreference;->hasSmsPreference(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_10

    const-string/jumbo v5, "default_sms_app"

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/DefaultSmsPreference;

    iput-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    new-instance v6, Lcom/android/settings/applications/InstalledAppDetails$13;

    invoke-direct {v6, p0}, Lcom/android/settings/applications/InstalledAppDetails$13;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/DefaultSmsPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    :goto_4
    const-string/jumbo v5, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->hasPermission(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v5, "android.permission.WRITE_SETTINGS"

    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->hasPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v1, :cond_6

    if-eqz v2, :cond_8

    :cond_6
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0b1a24

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    invoke-virtual {v4, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    if-eqz v1, :cond_7

    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getOverlayTitle()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setTitle(I)V

    const-string/jumbo v5, "system_alert_window"

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v5, Lcom/android/settings/applications/InstalledAppDetails$14;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/InstalledAppDetails$14;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_7
    if-eqz v2, :cond_8

    new-instance v3, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getWriteSettingsTitle()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setTitle(I)V

    const-string/jumbo v5, "write_settings_apps"

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    new-instance v5, Lcom/android/settings/applications/InstalledAppDetails$15;

    invoke-direct {v5, p0}, Lcom/android/settings/applications/InstalledAppDetails$15;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v3, v5}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    :cond_8
    invoke-direct {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->addAppInstallerInfoPref(Landroid/preference/PreferenceScreen;)V

    return-void

    :cond_9
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->removeDefaultAppPref()V

    return-void

    :cond_a
    const-string/jumbo v5, "default_home"

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/DefaultHomePreference;

    iput-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHome:Landroid/preference/Preference;

    const-string/jumbo v5, "home_dcm"

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "home_dcm"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v5, "default_home"

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "default_home"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_c
    const-string/jumbo v5, "home_dcm"

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "home_dcm"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_0

    :cond_d
    const-string/jumbo v5, "default_browser"

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "default_browser"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v5, "default_phone_app"

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "default_phone_app"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v5, "default_emergency_app"

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "default_emergency_app"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    :cond_10
    const-string/jumbo v5, "default_sms_app"

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    const-string/jumbo v6, "default_sms_app"

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4
.end method

.method private buildApplicationSettings()Z
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "com.sec.android.intent.action.SEC_APPLICATION_SETTINGS"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v7, "com.sec.android.intent.category.SEC_APPLICATION_SETTINGS"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v4, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_7

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v7, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resolvePackageName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v7, :cond_3

    :cond_2
    return v10

    :cond_3
    const-string/jumbo v7, "com.sec.android.gallery3d"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v1}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    sget-object v7, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "skip gallery menu"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_5
    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsSettingsPreference:Landroid/preference/Preference;

    if-eqz v7, :cond_6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "from_settings"

    invoke-virtual {v0, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsSettingsPreference:Landroid/preference/Preference;

    invoke-virtual {v7, v0}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsSettingsPreference:Landroid/preference/Preference;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    return v11

    :cond_6
    return v10

    :cond_7
    return v10
.end method

.method private checkContainerRestrictionOnButtons()V
    .locals 12

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "sec_container_"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v11, 0x2e

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const/4 v5, 0x0

    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v4

    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v4, v8}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getEnterpriseContainerManager(I)Lcom/sec/enterprise/knox/EnterpriseContainerManager;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerApplicationPolicy()Lcom/sec/enterprise/knox/ContainerApplicationPolicy;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerManager;->getContainerApplicationPolicy()Lcom/sec/enterprise/knox/ContainerApplicationPolicy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/enterprise/knox/ContainerApplicationPolicy;->getPackages()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v10, v1

    move v8, v9

    :goto_0
    if-ge v8, v10, :cond_0

    aget-object v6, v1, v8

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v11

    if-eqz v11, :cond_2

    const/4 v5, 0x1

    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    iget-object v8, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    :try_start_1
    sget-object v8, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    const-string/jumbo v10, "checkContainerRestrictionOnButtons: containerMgr is null"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v3

    sget-object v8, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SecurityException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    sget-object v8, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "IllegalStateException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkForceStop()V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButtonsForException()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x200000

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    invoke-direct {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.action.QUERY_PACKAGE_RESTART"

    const-string/jumbo v2, "package"

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v0, "android.intent.extra.PACKAGES"

    new-array v2, v5, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v6

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.UID"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v0, "android.intent.extra.user_handle"

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mCheckKillProcessesReceiver:Landroid/content/BroadcastReceiver;

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/app/Activity;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "activity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    sget-object v3, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "forceStopPackage : ActivityManager is null "

    invoke-static {v3, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, p1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3, p1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    return-void
.end method

.method public static getNotificationSummary(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "show_importance_slider"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v9, :cond_4

    const/4 v3, 0x1

    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz v3, :cond_5

    iget v6, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->appImportance:I

    const/16 v7, -0x3e8

    if-eq v6, v7, :cond_0

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->appImportance:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    const v7, 0x7f0b1a17

    invoke-virtual {p1, v7, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_1
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v6, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v6, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->appVisOverride:I

    if-nez v6, :cond_7

    const v6, 0x7f0b1a13

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    iget-boolean v6, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->appBypassDnd:Z

    if-eqz v6, :cond_2

    const v6, 0x7f0b198c

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_8

    if-lez v1, :cond_3

    const v6, 0x7f0b1a16

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    iget-boolean v6, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->banned:Z

    if-eqz v6, :cond_6

    const v6, 0x7f0b1a11

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->appImportance:I

    if-lez v6, :cond_0

    iget v6, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->appImportance:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_0

    const v6, 0x7f0b1a12

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget v6, p0, Lcom/android/settings/notification/NotificationBackend$AppRow;->appVisOverride:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    const v6, 0x7f0b1a14

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    if-nez v0, :cond_9

    const v6, 0x7f0b1a10

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static getNotificationSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)Ljava/lang/CharSequence;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, p1, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settings/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;
    .locals 1

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageList;->hasReadyMobileRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method private handleDisableable(Landroid/widget/Button;)Z
    .locals 4

    const v3, 0x7f0b038e

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->isSystemPackage(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isDisablingBtnUnblocked()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isDisabledUntilUsed()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const v1, 0x7f0b038f

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isDisablingBtnBlocked()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleHeader()V
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v4, "header_view"

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/SecLayoutPreference;

    iput-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHeader:Lcom/android/settings/applications/SecLayoutPreference;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHeader:Lcom/android/settings/applications/SecLayoutPreference;

    const v5, 0x7f1103df

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/SecLayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f1101b7

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const v5, 0x7f0b1512

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    const v4, 0x7f1101b6

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHeader:Lcom/android/settings/applications/SecLayoutPreference;

    const v5, 0x7f1103de

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/SecLayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    new-instance v4, Lcom/android/settings/applications/InstalledAppDetails$5;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/applications/InstalledAppDetails$5;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/Intent;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v1, :cond_1

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private initUninstallButtons()V
    .locals 14

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_a

    const/4 v7, 0x1

    :goto_0
    const/4 v5, 0x1

    if-eqz v7, :cond_b

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-direct {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->handleDisableable(Landroid/widget/Button;)Z

    move-result v5

    :goto_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v10, v11}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v10, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "disablAppList : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, ","

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v10, 0x0

    array-length v11, v1

    :goto_2
    if-ge v10, v11, :cond_0

    aget-object v0, v1, v10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v13, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    iget-object v12, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v12, v12, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v12, v12, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v12, :cond_d

    const/4 v5, 0x0

    :cond_0
    if-eqz v7, :cond_1

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v5, 0x0

    :cond_1
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/settings/applications/InstalledAppDetails;->isProfileOrDeviceOwner(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v5, 0x0

    :cond_2
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->isUninstallInQueue(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v5, 0x0

    :cond_3
    if-eqz v5, :cond_4

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    iget-object v11, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v11, v11, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-eqz v7, :cond_e

    const/4 v5, 0x0

    :cond_4
    :goto_3
    iget-boolean v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-eqz v10, :cond_5

    const/4 v5, 0x0

    :cond_5
    :try_start_0
    const-string/jumbo v10, "webviewupdate"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/webkit/IWebViewUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/webkit/IWebViewUpdateService;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v10, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v9, v10}, Landroid/webkit/IWebViewUpdateService;->isFallbackPackage(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_6

    const/4 v5, 0x0

    :cond_6
    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v8, v11

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const-string/jumbo v11, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string/jumbo v12, "getApplicationUninstallationEnabled"

    invoke-static {v10, v11, v12, v8}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v10

    iput v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->getApplicationUninstallationEnabled:I

    iget v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->getApplicationUninstallationEnabled:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_7

    iget v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->getApplicationUninstallationEnabled:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_7

    const/4 v5, 0x0

    :cond_7
    iget-boolean v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmerMode:Z

    if-eqz v10, :cond_8

    const/4 v5, 0x0

    :cond_8
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v10, v5}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz v5, :cond_9

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void

    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_b
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x800000

    and-int/2addr v10, v11

    if-nez v10, :cond_c

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_c

    const/4 v5, 0x0

    :cond_c
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const v11, 0x7f0b1518

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_1

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    :cond_e
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v10, v6}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v2

    if-nez v2, :cond_10

    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    const/4 v11, 0x1

    if-le v10, v11, :cond_f

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_10
    iget-object v10, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_11

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_11
    const/4 v5, 0x1

    goto/16 :goto_3

    :catch_0
    move-exception v4

    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10
.end method

.method private isDisabledUntilUsed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDisablingBtnBlocked()Z
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string/jumbo v4, "com.sec.android.app.blockdisabling"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Blocked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    const-string/jumbo v4, "com.evernote"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "com.samsung.android.app.pinboard"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "com.osp.app.signin"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    return v3

    :catch_0
    move-exception v2

    sget-object v4, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Not found package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isDisablingBtnUnblocked()Z
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    const-string/jumbo v4, "com.sec.android.app.unblockdisabling"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unblocked : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    const-string/jumbo v4, "com.samsung.android.app.watchmanager"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "com.sec.android.sidesync30"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "com.sec.android.sidesync.source"

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    return v3

    :catch_0
    move-exception v2

    sget-object v4, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Not found package : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isKioskHomeBlocked()Z
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "content://com.sec.knox.provider2/KioskMode"

    const-string/jumbo v5, "isKioskModeEnabled"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "content://com.sec.knox.provider2/KioskMode"

    const-string/jumbo v5, "getKioskHomePackage"

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isProfileOrDeviceOwner(Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x1

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v5}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerAppOnAnyUser(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v7

    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v5}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v7

    :cond_2
    const/4 v5, 0x0

    return v5
.end method

.method private isSingleUser()Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserCount()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private removeDefaultAppPref()V
    .locals 2

    const-string/jumbo v0, "default_home"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "default_home"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_0
    const-string/jumbo v0, "home_dcm"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "home_dcm"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1
    const-string/jumbo v0, "default_browser"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "default_browser"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    const-string/jumbo v0, "default_phone_app"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "default_phone_app"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_3
    const-string/jumbo v0, "default_emergency_app"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "default_emergency_app"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    const-string/jumbo v0, "default_sms_app"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "default_sms_app"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_5
    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHeader:Lcom/android/settings/applications/SecLayoutPreference;

    const v3, 0x7f11014b

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/SecLayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :cond_0
    invoke-static {v0, v2, v3, v1}, Lcom/android/settings/applications/InstalledAppDetails;->setupAppSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setupAppSnippet(Landroid/view/View;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v3, 0x1020018

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const v5, 0x7f04031e

    invoke-virtual {v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v3, 0x1020006

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x1020016

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f110724

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f0b1553

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x1

    return v2

    :catch_0
    move-exception v0

    :cond_0
    return v3
.end method

.method private startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {p1, p2, p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    return-void
.end method

.method public static startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;Lcom/samsung/android/settings/SecSettingsPreferenceFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/CharSequence;",
            "Lcom/samsung/android/settings/SecSettingsPreferenceFragment;",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "package"

    iget-object v3, p3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "uid"

    iget-object v3, p3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "hideInfoButton"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return-void
.end method

.method private startManagePermissionsActivity()V
    .locals 4

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.extra.PACKAGE_NAME"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "hideInfoButton"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "InstalledAppDetails"

    const-string/jumbo v3, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v2, "isKNOX3rdApp"

    sget-boolean v3, Lcom/android/settings/applications/InstalledAppDetails;->mIsKNOX3rdpartyApp:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean p3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    return-void
.end method

.method private updateBattery()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/samsung/android/settings/ProgressPreference;

    invoke-virtual {v2, v7}, Lcom/samsung/android/settings/ProgressPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    div-double/2addr v2, v4

    int-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v1, v2

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/samsung/android/settings/ProgressPreference;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f0b1a5c

    invoke-virtual {p0, v4, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/ProgressPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/samsung/android/settings/ProgressPreference;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/ProgressPreference;->setProgress(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/samsung/android/settings/ProgressPreference;

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/ProgressPreference;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/samsung/android/settings/ProgressPreference;

    const v3, 0x7f0b1a5d

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/ProgressPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/samsung/android/settings/ProgressPreference;

    invoke-virtual {v2, v6}, Lcom/samsung/android/settings/ProgressPreference;->setProgress(I)V

    goto :goto_0
.end method

.method private updateDataUsage()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/samsung/android/settings/ProgressPreference;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settingslib/net/ChartData;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-wide v0, v11, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v18, v0

    iget-wide v0, v11, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v20, v0

    add-long v16, v18, v20

    :goto_0
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->getTotalBytes()J

    move-result-wide v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-wide/16 v18, 0x0

    cmp-long v3, v12, v18

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/samsung/android/settings/ProgressPreference;

    const v10, 0x7f0b1a8f

    invoke-virtual {v3, v10}, Lcom/samsung/android/settings/ProgressPreference;->setSummary(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/samsung/android/settings/ProgressPreference;

    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/samsung/android/settings/ProgressPreference;->setProgress(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-wide/16 v16, 0x0

    goto :goto_0

    :cond_2
    const-wide/16 v18, 0x0

    cmp-long v3, v16, v18

    if-eqz v3, :cond_3

    const-wide/16 v18, 0x64

    mul-long v18, v18, v12

    div-long v18, v18, v16

    move-wide/from16 v0, v18

    long-to-int v14, v0

    :cond_3
    sget-object v3, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "appUsageBytes : "

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v18, ", totalBytes : "

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v18, ", ratio : "

    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    const/16 v18, 0x0

    aput-object v10, v3, v18

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    const/16 v18, 0x1

    aput-object v10, v3, v18

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/applications/InstalledAppDetails;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v10, v10, Lcom/android/settingslib/net/ChartData;->detail:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v10}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v18

    const v10, 0x10010

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1, v10}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v10

    const/16 v18, 0x2

    aput-object v10, v3, v18

    const v10, 0x7f0b038d

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v3}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/samsung/android/settings/ProgressPreference;

    invoke-virtual {v3, v15}, Lcom/samsung/android/settings/ProgressPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/samsung/android/settings/ProgressPreference;

    invoke-virtual {v3, v14}, Lcom/samsung/android/settings/ProgressPreference;->setProgress(I)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/samsung/android/settings/ProgressPreference;

    const v10, 0x7f0b1550

    invoke-virtual {v3, v10}, Lcom/samsung/android/settings/ProgressPreference;->setSummary(I)V

    goto/16 :goto_1
.end method

.method private updateDynamicPrefs()V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/applications/AppCommonUtils;->updateDefaultBrowserPreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultBrowserPreference;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/applications/AppCommonUtils;->updateDefaultPhonePreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultPhonePreference;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/applications/AppCommonUtils;->updateDefaultSMSPreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Lcom/android/settings/applications/DefaultSmsPreference;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mHome:Landroid/preference/Preference;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/applications/AppCommonUtils;->updateDefaultHomePreference(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/preference/Preference;)V

    const-string/jumbo v1, "system_alert_window"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/settings/applications/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    const-string/jumbo v1, "write_settings_apps"

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v1, v2}, Lcom/android/settings/applications/WriteSettingsDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_1
    return-void
.end method

.method private updateForceStopButton(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private updateForceStopButtonsForException()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "com.wssyncmldm"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.ws.dm"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.sec.android.fotaclient"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_EnableSprintExtension"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "com.sec.sprextension"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "com.sec.sprextension.phoneinfo"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_EnableItsOn"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "com.itsoninc.android.itsonclient"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "com.itsoninc.android.itsonservice"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "com.itsoninc.android.uid"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "com.samsung.android.bbc.bbcagent"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "com.samsung.android.themecenter"

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isKioskHomeBlocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/android/settings/applications/InstalledAppDetails;->updateForceStopButton(Z)V

    goto/16 :goto_0
.end method

.method private updateStorage()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Lcom/samsung/android/settings/ProgressPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Lcom/samsung/android/settings/ProgressPreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/applications/AppStorageSettings;->getSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ProgressPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Lcom/samsung/android/settings/ProgressPreference;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/applications/AppStorageSettings;->getRatio(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ProgressPreference;->setProgress(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkAdminRestrictionOnButtons()V
    .locals 5

    :try_start_0
    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->isStopSystemAppAllowed:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->isStopSystemAppAllowed:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    const-string/jumbo v3, "android"

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Unable to get package info"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkKnox(I)V
    .locals 4

    sget-object v2, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "checkKnox() start"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xd

    if-ne p1, v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.knox.containeragent.password_verify_from_UninstallApp"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const/high16 v2, 0x20000

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Lcom/android/settings/applications/InstalledAppDetails;->startActivityForResult(Landroid/content/Intent;I)V

    sget-object v2, Lcom/android/settings/applications/InstalledAppDetails;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "checkKnox(KNOX_VERIFY_UNINSTALL)"

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 6

    const v5, 0x7f0b1567

    const v2, 0x7f0b038e

    const v4, 0x7f0b1541

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    return-object v3

    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$7;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetails$7;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$8;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetails$8;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0b1560

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$9;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/InstalledAppDetails$9;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    const v2, 0x7f0b155f

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public exeCustomAction()V
    .locals 0

    return-void
.end method

.method public exeOptAction()V
    .locals 0

    return-void
.end method

.method public exePrefAction()V
    .locals 11

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->exePrefBasicAction(Landroid/preference/PreferenceScreen;)Z

    move-result v9

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v8, ""

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    :cond_0
    if-eqz v9, :cond_2

    const-string/jumbo v0, "ApplicationInfoBattery"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v2, "ApplicationInfo"

    const-string/jumbo v3, "BatteryUsageInfo"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "Yes"

    const-string/jumbo v6, "AppName"

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "ApplicationInfoBattery"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v2, "ApplicationInfo"

    const-string/jumbo v3, "BatteryUsageInfo"

    const-string/jumbo v4, "Exist"

    const-string/jumbo v5, "No"

    const-string/jumbo v6, "AppName"

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    goto :goto_0
.end method

.method public exeViewAction()V
    .locals 11

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->exeViewBasicAction()Z

    move-result v9

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v8, ""

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v8, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    :cond_0
    if-eqz v9, :cond_4

    const-string/jumbo v0, "ApplicationInfoUninstall"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v2, "ApplicationInfo"

    const-string/jumbo v3, "Uninstall"

    const-string/jumbo v4, "possible"

    const-string/jumbo v5, "yes"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    :goto_1
    return-void

    :cond_2
    const-string/jumbo v0, "ApplicationInfoDisable"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v2, "ApplicationInfo"

    const-string/jumbo v3, "Disable"

    const-string/jumbo v4, "alreadyapplied"

    const-string/jumbo v5, "no"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "ApplicationInfoForceStop"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v2, "ApplicationInfo"

    const-string/jumbo v3, "ForceStop"

    const-string/jumbo v4, "Active"

    const-string/jumbo v5, "yes"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "ApplicationInfoUninstall"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v2, "ApplicationInfo"

    const-string/jumbo v3, "Uninstall"

    const-string/jumbo v4, "possible"

    const-string/jumbo v5, "no"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "ApplicationInfoDisable"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v2, "ApplicationInfo"

    const-string/jumbo v3, "Disable"

    const-string/jumbo v4, "possible"

    const-string/jumbo v5, "no"

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v2, "ApplicationInfo"

    const-string/jumbo v3, "Disable"

    const-string/jumbo v4, "alreadyapplied"

    const-string/jumbo v5, "yes"

    const-string/jumbo v6, "AppName"

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string/jumbo v0, "ApplicationInfoForceStop"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v2, "ApplicationInfo"

    const-string/jumbo v3, "ForceStop"

    const-string/jumbo v4, "Active"

    const-string/jumbo v5, "no"

    const-string/jumbo v6, "AppName"

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onActivityCreated(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->handleHeader()V

    const-string/jumbo v0, "apps_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsSettingsPreference:Landroid/preference/Preference;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->buildApplicationSettings()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "apps_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->removePreference(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string/jumbo v0, "notification_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "storage_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/ProgressPreference;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Lcom/samsung/android/settings/ProgressPreference;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Lcom/samsung/android/settings/ProgressPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/ProgressPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "permission_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "data_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/ProgressPreference;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/samsung/android/settings/ProgressPreference;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/samsung/android/settings/ProgressPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/samsung/android/settings/ProgressPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/ProgressPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :cond_2
    const-string/jumbo v0, "battery"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/ProgressPreference;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/samsung/android/settings/ProgressPreference;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/samsung/android/settings/ProgressPreference;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/ProgressPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/samsung/android/settings/ProgressPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/ProgressPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo v0, "memory"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/ProgressPreference;

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Lcom/samsung/android/settings/ProgressPreference;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Lcom/samsung/android/settings/ProgressPreference;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/ProgressPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Lcom/samsung/android/settings/ProgressPreference;

    const v1, 0x7f0b1a85

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/ProgressPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string/jumbo v0, "preferred_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    return-void

    :cond_3
    const-string/jumbo v0, "apps_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/InstalledAppDetails;->removePreference(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/applications/AppInfoBase;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    if-eqz v0, :cond_0

    iput-boolean v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDisableAfterUninstall:Z

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.android.settings"

    const-string/jumbo v2, "ALDS"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v0, v2}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v4, v4}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    :cond_1
    if-ne p1, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v4, v4}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    :cond_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    const/4 v5, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v6, :cond_0

    invoke-virtual {p0, v10, v10}, Lcom/android/settings/applications/InstalledAppDetails;->setIntentAndFinish(ZZ)V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    if-ne p1, v6, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1000df

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/DeviceAdminAdd;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v5, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4, v10}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    const-string/jumbo v6, "sec_container_"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/InstalledAppDetails;->checkKnox(I)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-static {v6, v2, v7}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfUninstallBlocked(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iget-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-static {v6, v2, v7}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v3

    :goto_0
    if-eqz v1, :cond_3

    if-eqz v3, :cond_7

    :cond_3
    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_4

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isDisabledUntilUsed()Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_4
    new-instance v6, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;

    iget-object v7, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v6, p0, v7, v9}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Landroid/content/pm/ApplicationInfo;I)V

    new-array v7, v10, [Ljava/lang/Object;

    check-cast v5, Ljava/lang/Object;

    aput-object v5, v7, v9

    invoke-virtual {v6, v7}, Lcom/android/settings/applications/InstalledAppDetails$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_5
    :goto_1
    return-void

    :cond_6
    const/4 v3, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    :cond_8
    iget-boolean v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v5, :cond_9

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->isSingleUser()Z

    move-result v5

    if-eqz v5, :cond_9

    const/4 v5, 0x3

    invoke-virtual {p0, v5, v9}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    :cond_9
    const/4 v5, 0x2

    invoke-virtual {p0, v5, v9}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    :cond_a
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-nez v5, :cond_b

    invoke-direct {p0, v2, v10, v9}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_b
    invoke-direct {p0, v2, v9, v9}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_1

    :cond_c
    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    if-ne p1, v5, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f1000e0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-eqz v5, :cond_e

    :cond_d
    invoke-virtual {p0, v10, v9}, Lcom/android/settings/applications/InstalledAppDetails;->showDialogInner(II)V

    goto :goto_1

    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v5, v6}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/InstalledAppDetails;->setHasOptionsMenu(Z)V

    const v3, 0x7f080086

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->addPreferencesFromResource(I)V

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->addDynamicPrefs()V

    new-instance v3, Lcom/samsung/android/settings/applications/EmHandler;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/applications/EmHandler;-><init>(Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;)V

    sput-object v3, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string/jumbo v4, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v5, "isStopSystemAppAllowed"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->isStopSystemAppAllowed:I

    invoke-static {}, Lcom/android/settings/Utils;->isBandwidthControlEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "netstats"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v3, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v6, p0, Lcom/android/settings/applications/InstalledAppDetails;->mIsEmerMode:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const-string/jumbo v3, "usb"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :cond_1
    const-string/jumbo v3, "data_settings"

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/InstalledAppDetails;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    const v1, 0x7f0b151e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v0, 0x7f0b1519

    invoke-interface {p1, v2, v3, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return v3

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v4, v3}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return v4

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000de

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v3, v3}, Lcom/android/settings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V

    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onPause()V

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "ApplicationInfo"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Lcom/samsung/android/settings/ProgressPreference;

    if-ne p1, v0, :cond_0

    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStoragePreference:Lcom/samsung/android/settings/ProgressPreference;

    invoke-virtual {v1}, Lcom/samsung/android/settings/ProgressPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_1

    const-class v0, Lcom/android/settings/notification/AppNotificationSettings;

    const v1, 0x7f0b196c

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionsPreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->startManagePermissionsActivity()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    if-ne p1, v0, :cond_3

    const-class v0, Lcom/android/settings/applications/AppLaunchSettings;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    invoke-virtual {v1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mMemoryPreference:Lcom/samsung/android/settings/ProgressPreference;

    if-ne p1, v0, :cond_6

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SupportCiq"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v7, v0, -0x1

    :goto_1
    if-ltz v7, :cond_5

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ProcStatsEntry;

    const-string/jumbo v0, "diagandroid.iqd"

    iget-object v1, v6, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsPackageEntry;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v1

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStats:Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-static {v0, v1, v5, v2}, Lcom/android/settings/applications/ProcessStatsBase;->launchMemoryDetail(Lcom/android/settings/SettingsActivity;Lcom/android/settings/applications/ProcStatsData$MemInfo;Lcom/android/settings/applications/ProcStatsPackageEntry;Z)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataPreference:Lcom/samsung/android/settings/ProgressPreference;

    if-ne p1, v0, :cond_7

    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    const v1, 0x7f0b1a0a

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->startAppInfoFragment(Ljava/lang/Class;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/samsung/android/settings/ProgressPreference;

    if-ne p1, v0, :cond_9

    new-instance v3, Lcom/android/settings/fuelgauge/BatteryEntry;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mSipper:Lcom/android/internal/os/BatterySipper;

    const/4 v8, 0x0

    invoke-direct {v3, v0, v8, v1, v5}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SupportCiq"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "diagandroid.iqd"

    iget-object v1, v3, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "system"

    iput-object v0, v3, Lcom/android/settings/fuelgauge/BatteryEntry;->name:Ljava/lang/String;

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryHelper:Lcom/android/internal/os/BatteryStatsHelper;

    move v5, v2

    invoke-static/range {v0 .. v5}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->startBatteryDetailPage(Lcom/android/settings/SettingsActivity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;ZZ)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultBrowserPreference:Lcom/android/settings/applications/DefaultBrowserPreference;

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultSmsPreference:Lcom/android/settings/applications/DefaultSmsPreference;

    if-ne p1, v0, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultPhonePreference:Lcom/android/settings/applications/DefaultPhonePreference;

    if-ne p1, v0, :cond_c

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000fd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDefaultEmergencyPreference:Lcom/android/settings/applications/DefaultEmergencyPreference;

    if-ne p1, v0, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100101

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_d
    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v2, :cond_6

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_c

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    :goto_2
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedBySystem:Z

    if-eqz v2, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v2, v1, v3}, Lcom/android/settingslib/RestrictedLockUtils;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_5

    const-string/jumbo v2, "com.skt.prod.phone"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v2, "com.skt.prod.dialer"

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_5
    return-void

    :cond_6
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-nez v2, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v5, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eqz v2, :cond_b

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v6, :cond_1

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    move v2, v4

    goto/16 :goto_1

    :cond_d
    iput-boolean v4, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUpdatedSysApp:Z

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/settings/applications/AppInfoBase;->onResume()V

    iget-boolean v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mFinishing:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUserId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/settingslib/AppItem;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v0, v1}, Lcom/android/settingslib/AppItem;-><init>(I)V

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/AppItem;->addUid(I)V

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mStatsSession:Landroid/net/INetworkStatsSession;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->getTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    :cond_1
    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;

    invoke-direct {v1, p0, v5}, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;)V

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$BatteryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    new-instance v1, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;

    invoke-direct {v1, p0, v5}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;-><init>(Lcom/android/settings/applications/InstalledAppDetails;Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;)V

    new-array v2, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/InstalledAppDetails$MemoryUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-direct {p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateDynamicPrefs()V

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "ApplicationInfo"

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method protected refreshUi()Z
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->retrieveAppEntry()Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v13, v13, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v13, :cond_1

    :cond_0
    const/4 v13, 0x0

    return v13

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v13, :cond_2

    const/4 v13, 0x0

    return v13

    :cond_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v14, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    const/4 v13, 0x2

    if-ne v7, v13, :cond_3

    const/4 v13, 0x0

    return v13

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const/4 v13, 0x0

    return v13

    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v13, v8}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->clear()V

    const/4 v9, 0x0

    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v9, v13, :cond_5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v13, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v13, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v11, :cond_4

    const-string/jumbo v13, "android.app.home.alternate"

    invoke-virtual {v11, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2}, Lcom/android/settings/applications/InstalledAppDetails;->signaturesMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mHomePackages:Ljava/util/HashSet;

    invoke-virtual {v13, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkForceStop()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings/applications/InstalledAppDetails;->setAppLabelAndIcon(Landroid/content/pm/PackageInfo;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->initUninstallButtons()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->getContext()Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPermissionCallback:Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-static {v13, v14, v15}, Lcom/android/settings/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v13, v13, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v13, v13, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v14, 0x800000

    and-int/2addr v13, v14

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v13, v13, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v13, v13, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/InstalledAppDetails;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v14, v15, v0, v1, v4}, Lcom/android/settingslib/applications/AppUtils;->getLaunchByDefaultSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/hardware/usb/IUsbManager;Landroid/appwidget/AppWidgetManager;Landroid/content/pm/PackageManager;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mNotificationPreference:Landroid/preference/Preference;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/applications/InstalledAppDetails;->mBackend:Lcom/android/settings/notification/NotificationBackend;

    invoke-static {v14, v4, v15}, Lcom/android/settings/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateDataUsage()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateBattery()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkAdminRestrictionOnButtons()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->checkContainerRestrictionOnButtons()V

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/InstalledAppDetails;->updateStorage()V

    new-instance v13, Landroid/os/Handler;

    invoke-direct {v13}, Landroid/os/Handler;-><init>()V

    new-instance v14, Lcom/android/settings/applications/InstalledAppDetails$6;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/settings/applications/InstalledAppDetails$6;-><init>(Lcom/android/settings/applications/InstalledAppDetails;)V

    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    if-nez v13, :cond_a

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mInitialized:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v13, v13, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v14, 0x800000

    and-int/2addr v13, v14

    if-nez v13, :cond_9

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    :cond_6
    const/4 v13, 0x1

    return v13

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mLaunchPreference:Landroid/preference/Preference;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_9
    const/4 v13, 0x0

    goto :goto_2

    :cond_a
    :try_start_1
    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v14, v14, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v15, 0x2200

    invoke-virtual {v13, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/applications/InstalledAppDetails;->mShowUninstalled:Z

    if-nez v13, :cond_6

    iget v13, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/high16 v14, 0x800000

    and-int/2addr v13, v14

    if-eqz v13, :cond_b

    const/4 v13, 0x1

    :goto_3
    return v13

    :cond_b
    const/4 v13, 0x0

    goto :goto_3

    :catch_1
    move-exception v5

    const/4 v13, 0x0

    return v13
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x3

    const/16 v3, 0x7d0

    const-string/jumbo v0, "ApplicationInfoBattery"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mBatteryPreference:Lcom/samsung/android/settings/ProgressPreference;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "ApplicationInfoUninstall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "ApplicationInfoDisable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mUninstallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "ApplicationInfoForceStop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mForceStopButton:Landroid/widget/Button;

    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public stopAction()V
    .locals 2

    sget-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/applications/InstalledAppDetails;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-void
.end method
