.class public Lcom/samsung/android/settings/SoftwareUpdateSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoftwareUpdateSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/SoftwareUpdateSettings$1;,
        Lcom/samsung/android/settings/SoftwareUpdateSettings$2;,
        Lcom/samsung/android/settings/SoftwareUpdateSettings$3;,
        Lcom/samsung/android/settings/SoftwareUpdateSettings$4;,
        Lcom/samsung/android/settings/SoftwareUpdateSettings$5;,
        Lcom/samsung/android/settings/SoftwareUpdateSettings$6;,
        Lcom/samsung/android/settings/SoftwareUpdateSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mCscFeatureUsOpen:Z

.field private static mDisplayMenu:Z

.field private static mDisplayPRL:Z

.field private static mDisplayUICC:Z

.field private static mEnableMenu:Z

.field private static mInitialHour:I

.field private static mInitialMin:I

.field private static final mNeedToGetCscNetworkFeatureBySimSlot:Z

.field private static mSearchDC:Z

.field private static mSearchPrl:Z

.field private static mSearchSimUnlock:Z

.field private static mSprMenuUpdate:Z

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private mAutoDownloadViaWifiPref:Landroid/support/v14/preference/SecSwitchPreference;

.field mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mHandler:Landroid/os/Handler;

.field private mLastUpdateCheckTimeReceiver:Landroid/content/BroadcastReceiver;

.field private mLastUpdateInfoPref:Landroid/support/v7/preference/SecPreference;

.field public mNoResponseTimer:Landroid/os/CountDownTimer;

.field private mScheduleTimePref:Landroid/support/v7/preference/SecPreference;

.field private mScheduledUpdatePref:Landroid/support/v14/preference/SecSwitchPreference;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mSoftwareUpdatePref:Landroid/support/v7/preference/SecPreference;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mWaitingMessage:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mAutoDownloadViaWifiPref:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/SoftwareUpdateSettings;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mWaitingMessage:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v14/preference/SecSwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/support/v14/preference/SecSwitchPreference;

    return-object v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSearchDC:Z

    return v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSearchPrl:Z

    return v0
.end method

.method static synthetic -get7()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSearchSimUnlock:Z

    return v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/SoftwareUpdateSettings;)Landroid/support/v7/preference/SecPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/support/v7/preference/SecPreference;

    return-object v0
.end method

.method static synthetic -get9()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSprMenuUpdate:Z

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/SoftwareUpdateSettings;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -set1(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSprMenuUpdate:Z

    return p0
.end method

.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isChangedTitleAndSummaryOfAutoDownloadMenu()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isSupportInAppFOTASchedule()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isWifiDedicated(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;)J
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getScheduledInstallTime(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/SoftwareUpdateSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getOemSimLock()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/SoftwareUpdateSettings;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->handleGetSimLockResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap6()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->intializeAndUpdateSprMenus()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/SoftwareUpdateSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->updateLastCheckedDate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->getSalesCode()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->sSalesCode:Ljava/lang/String;

    const/4 v1, 0x2

    sput v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialHour:I

    sput v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialMin:I

    sput-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSearchDC:Z

    sput-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSearchPrl:Z

    sput-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSearchSimUnlock:Z

    sput-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSprMenuUpdate:Z

    sput-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mDisplayMenu:Z

    sput-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableMenu:Z

    sput-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mDisplayPRL:Z

    sput-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mDisplayUICC:Z

    sput-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mCscFeatureUsOpen:Z

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getOmcVersion()F

    move-result v1

    float-to-double v2, v1

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->IsDualSim()Z

    move-result v0

    :cond_0
    sput-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mNeedToGetCscNetworkFeatureBySimSlot:Z

    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$4;

    invoke-direct {v0}, Lcom/samsung/android/settings/SoftwareUpdateSettings$4;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$5;

    invoke-direct {v0}, Lcom/samsung/android/settings/SoftwareUpdateSettings$5;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/support/v7/preference/SecPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mAutoDownloadViaWifiPref:Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/support/v7/preference/SecPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroid/support/v7/preference/SecPreference;

    iput-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mLastUpdateCheckTimeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mWaitingMessage:I

    iput-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mServiceMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$1;

    const-wide/16 v2, 0x4e20

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings$1;-><init>(Lcom/samsung/android/settings/SoftwareUpdateSettings;JJ)V

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mNoResponseTimer:Landroid/os/CountDownTimer;

    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings$2;-><init>(Lcom/samsung/android/settings/SoftwareUpdateSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSvcModeMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings$3;-><init>(Lcom/samsung/android/settings/SoftwareUpdateSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings$6;-><init>(Lcom/samsung/android/settings/SoftwareUpdateSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private static IsDualSim()Z
    .locals 4

    const/4 v1, 0x0

    const-string/jumbo v2, "ro.multisim.simslotcount"

    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v3, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private addSoftwareUpdateBadge()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/support/v7/preference/SecPreference;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getFotaBadgeCount(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/support/v7/preference/SecPreference;

    const v1, 0x7f0d022e

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setWidgetLayoutResource(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/SecPreference;->setWidgetLayoutResource(I)V

    goto :goto_0
.end method

.method private applySoftwareUpdatePolicy()V
    .locals 12

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x1

    new-array v5, v11, [Ljava/lang/String;

    const-string/jumbo v7, "false"

    aput-object v7, v5, v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "content://com.sec.knox.provider/RestrictionPolicy3"

    const-string/jumbo v9, "isOTAUpgradeAllowed"

    invoke-static {v7, v8, v9, v10}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string/jumbo v8, "content://com.sec.knox.provider/RestrictionPolicy2"

    const-string/jumbo v9, "isFirmwareAutoUpdateAllowed"

    invoke-static {v7, v8, v9, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-nez v3, :cond_0

    const-string/jumbo v7, "SoftwareUpdateSettings"

    const-string/jumbo v8, "applySoftwareUpdatePolicy() : FOTA is disabled by policy"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_0
    if-ne v2, v11, :cond_1

    const-string/jumbo v7, "SoftwareUpdateSettings"

    const-string/jumbo v8, "applySoftwareUpdatePolicy() : FOTA AutoUpdate is fixed by policy"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_1
    const-string/jumbo v7, "key_update"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_2
    const-string/jumbo v7, "key_auto_download"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz v1, :cond_5

    :goto_0
    invoke-virtual {v4, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_3
    const-string/jumbo v6, "key_scheduled_update"

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :cond_4
    return-void

    :cond_5
    move v0, v6

    goto :goto_0
.end method

.method private createBroadcastReceivers()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/SoftwareUpdateSettings$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings$7;-><init>(Lcom/samsung/android/settings/SoftwareUpdateSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mLastUpdateCheckTimeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private static getDataSimSlotId(Landroid/content/Context;)I
    .locals 6

    const/4 v5, 0x0

    sget-boolean v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mNeedToGetCscNetworkFeatureBySimSlot:Z

    if-nez v3, :cond_0

    const-string/jumbo v3, "SoftwareUpdateSettings"

    const-string/jumbo v4, "omc version is under 5 or device is not dual sim, so return 0"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v3, "SoftwareUpdateSettings"

    const-string/jumbo v4, "subscriptionInfo is null, so return sim slot 0"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v0

    const-string/jumbo v3, "SoftwareUpdateSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subscriptionID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", slotId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getOemSimLock()V
    .locals 6

    const-string/jumbo v3, "SoftwareUpdateSettings"

    const-string/jumbo v4, "getOemSimLock"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x51

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x42

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0x6d

    const/16 v5, 0x14

    invoke-direct {p0, v3, v4, v5}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->sendRilRequest([BII)V
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

    const-string/jumbo v3, "SoftwareUpdateSettings"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    :try_start_2
    const-string/jumbo v3, "SoftwareUpdateSettings"

    const-string/jumbo v4, "getOemSimLock exception occured during operation"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    const-string/jumbo v3, "SoftwareUpdateSettings"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_1
    throw v3

    :catch_3
    move-exception v2

    const-string/jumbo v4, "SoftwareUpdateSettings"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static getOmcVersion()F
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_COMMON_CONFIG_OMC_VERSION"

    const-string/jumbo v3, "null"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private static getScheduledInstallTime(Landroid/content/Context;)J
    .locals 8

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v6, "SOFTWARE_UPDATE_SET_INSTALL_TIME"

    invoke-static {v1, v6}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_0

    move-wide v2, v4

    :cond_0
    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private handleGetSimLockResponse(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v4, "SoftwareUpdateSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleGetSimLockResponse"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "response"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v4, v0

    if-nez v4, :cond_1

    :cond_0
    const-string/jumbo v4, "SoftwareUpdateSettings"

    const-string/jumbo v5, "response is null or empty"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    aget-byte v3, v0, v7

    const-string/jumbo v2, ""

    packed-switch v3, :pswitch_data_0

    :goto_0
    const-string/jumbo v4, "uicc_unlock"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    const-string/jumbo v4, "SoftwareUpdateSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleGetSimLockResponse buf.length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " buf is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f12101a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f121c9f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private initSoftwareUpdateMenuCategory()V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    :cond_0
    const v2, 0x7f15010e

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v2, "key_update"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/support/v7/preference/SecPreference;

    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->addSoftwareUpdateBadge()V

    const-string/jumbo v2, "key_auto_download"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mAutoDownloadViaWifiPref:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v2, "key_scheduled_update"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v14/preference/SecSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/support/v14/preference/SecSwitchPreference;

    const-string/jumbo v2, "key_scheduled_update_time"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/support/v7/preference/SecPreference;

    const-string/jumbo v2, "key_last_update"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/SecPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroid/support/v7/preference/SecPreference;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_SyncML_ConfigGroupOpCode"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "USOpen"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    sput-boolean v2, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mCscFeatureUsOpen:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->updateAutoDownloadMenu()V

    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->updateScheduledUpdateMenu()V

    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->updateLastCheckedDate()V

    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->updateLastUpdateData()V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSprMenuUpdate:Z

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->intializeAndUpdateSprMenus()V

    const-string/jumbo v2, "update_profile"

    sget-boolean v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mDisplayMenu:Z

    sget-boolean v4, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableMenu:Z

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->updateSprPrefMenu(Ljava/lang/String;ZZ)V

    const-string/jumbo v2, "update_prl"

    sget-boolean v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mDisplayPRL:Z

    sget-boolean v4, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableMenu:Z

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->updateSprPrefMenu(Ljava/lang/String;ZZ)V

    const-string/jumbo v2, "uicc_unlock"

    sget-boolean v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mDisplayUICC:Z

    sget-boolean v4, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableMenu:Z

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->updateSprPrefMenu(Ljava/lang/String;ZZ)V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static intializeAndUpdateSprMenus()V
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v2, "CscFeature_Common_UseChameleon"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mDisplayMenu:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v2, "CscFeature_Setting_EnableMultipleSWUpdate"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableMenu:Z

    sget-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mDisplayMenu:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "persist.sys.omadm_hfa_prl"

    const-string/jumbo v2, "1"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mDisplayPRL:Z

    sget-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mDisplayMenu:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isSimUnlockSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isSprBootCarrierId()Z

    move-result v0

    :goto_1
    sput-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mDisplayUICC:Z

    sget-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mDisplayMenu:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableMenu:Z

    :goto_2
    sput-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSearchDC:Z

    sget-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mDisplayPRL:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableMenu:Z

    :goto_3
    sput-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSearchPrl:Z

    sget-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mDisplayUICC:Z

    if-eqz v0, :cond_0

    sget-boolean v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEnableMenu:Z

    :cond_0
    sput-boolean v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSearchSimUnlock:Z

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 4

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v2, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "SoftwareUpdateSettings"

    const-string/jumbo v3, "mServiceMessenger is null. Do nothing."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static isChangedTitleAndSummaryOfAutoDownloadMenu()Z
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->sSalesCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "SKT/SKC/SKO/KT/KTT/KTC/KTO/LG/LGT/LUC/LUO"

    sget-object v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "ANY/KOO"

    sget-object v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastVersionUpdatedByFOTA(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    const-string/jumbo v1, "%s/%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->readPDAVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->readCSCVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->readCPVersion()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SoftwareUpdateSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "get current version : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isNoNeedAutoDownloadMenu(Landroid/content/Context;)Z
    .locals 5

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    invoke-static {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getDataSimSlotId(Landroid/content/Context;)I

    move-result v3

    const-string/jumbo v4, "CscFeature_SyncML_EnableNotiDeltaBinarySizeBeforeDownload"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v1

    sget-object v2, Lcom/samsung/android/settings/SoftwareUpdateSettings;->sSalesCode:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "TMB/TMK"

    sget-object v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mCscFeatureUsOpen:Z

    xor-int/lit8 v0, v2, 0x1

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private static isSimUnlockSupported()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_SupportSimUnlock"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static isSprBootCarrierId()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "SPR"

    aput-object v2, v1, v4

    const-string/jumbo v2, "VMU"

    aput-object v2, v1, v5

    const-string/jumbo v2, "BST"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string/jumbo v2, "XAS"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string/jumbo v2, "ro.boot.carrierid"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return v5

    :cond_1
    return v4
.end method

.method private static isSupportInAppFOTASchedule()Z
    .locals 1

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mCscFeatureUsOpen:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWifiDedicated(Landroid/content/Context;)Z
    .locals 6

    const/4 v1, 0x1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    invoke-static {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getDataSimSlotId(Landroid/content/Context;)I

    move-result v3

    const-string/jumbo v4, "CscFeature_SyncML_DeltaBinaryDownVia"

    const-string/jumbo v5, "Not_Define"

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SMLDM_BEARER"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string/jumbo v1, "wifi_dedicated"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private readCSCVersion()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ril.official_cscver"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readPDAVersion()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ro.build.PDA"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private sendRilRequest([BII)V
    .locals 3

    const-string/jumbo v0, "SoftwareUpdateSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendRilRequest invokeOemRilRequestRaw message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mWaitingMessage:I

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mNoResponseTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void
.end method

.method private setScheduledInstallTime(II)V
    .locals 8

    const/4 v3, -0x1

    const/4 v6, 0x0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-wide/16 v4, 0x0

    if-ne p1, v3, :cond_1

    if-ne p2, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_2

    sput p1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialHour:I

    sput p2, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialMin:I

    const/16 v3, 0xb

    invoke-virtual {v1, v3, p1}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v1, v3, p2}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    invoke-virtual {v1, v3, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v6}, Ljava/util/Calendar;->set(II)V

    iget-object v3, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/support/v7/preference/SecPreference;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/support/v7/preference/SecPreference;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    :goto_1
    const-string/jumbo v3, "SoftwareUpdateSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "save scheduled install time to settings db :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "SOFTWARE_UPDATE_SET_INSTALL_TIME"

    invoke-static {v3, v6, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "sec.fota.intent.SET_INSTALL_TIME"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.wssyncmldm"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "changed_data"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x2

    sput v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialHour:I

    sput v6, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialMin:I

    goto :goto_1
.end method

.method private updateAutoDownloadMenu()V
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mAutoDownloadViaWifiPref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isNoNeedAutoDownloadMenu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "key_auto_download"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mAutoDownloadViaWifiPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setPersistent(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mAutoDownloadViaWifiPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "SOFTWARE_UPDATE_WIFI_ONLY2"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mAutoDownloadViaWifiPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isChangedTitleAndSummaryOfAutoDownloadMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mAutoDownloadViaWifiPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1202af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isWifiDedicated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mAutoDownloadViaWifiPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1202b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mAutoDownloadViaWifiPref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1202b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SecSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateLastCheckedDate()V
    .locals 12

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/support/v7/preference/SecPreference;

    if-nez v8, :cond_0

    return-void

    :cond_0
    const-string/jumbo v6, ""

    const-string/jumbo v1, ""

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "SOFTWARE_UPDATE_LAST_CHECKED_DATE"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-eqz v8, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v8, v4, v8

    if-gtz v8, :cond_1

    const-string/jumbo v8, "%s %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f120f59

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getDataSimSlotId(Landroid/content/Context;)I

    move-result v9

    const-string/jumbo v10, "CscFeature_SyncML_DisableWarning4DataCostDuringFota"

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    sget-object v8, Lcom/samsung/android/settings/SoftwareUpdateSettings;->sSalesCode:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    const-string/jumbo v8, "TMB/TMK"

    sget-object v9, Lcom/samsung/android/settings/SoftwareUpdateSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    :cond_2
    sget-object v8, Lcom/samsung/android/settings/SoftwareUpdateSettings;->sSalesCode:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string/jumbo v8, "SKT/SKC/SKO/KT/KTT/KTC/KTO/LG/LGT/LUC/LUO"

    sget-object v9, Lcom/samsung/android/settings/SoftwareUpdateSettings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isWifiDedicated(Landroid/content/Context;)Z

    move-result v8

    :goto_2
    if-nez v8, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f121caf

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    :cond_4
    if-nez v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_5
    iget-object v7, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSoftwareUpdatePref:Landroid/support/v7/preference/SecPreference;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v8, "SoftwareUpdateSettings"

    const-string/jumbo v9, "SettingNotFoundException in updateLastCheckedDate"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    :cond_8
    move v8, v7

    goto :goto_2
.end method

.method private updateLastUpdateData()V
    .locals 18

    const-string/jumbo v13, ""

    const-wide/16 v10, 0x0

    const-string/jumbo v15, ""

    const-string/jumbo v2, "content://com.wssyncmldm.ContentProvider/updatehistory"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v2, 0x3

    new-array v4, v2, [Ljava/lang/String;

    const-string/jumbo v2, "Date"

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const-string/jumbo v2, "Version"

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const-string/jumbo v2, "ResultCode"

    const/4 v5, 0x2

    aput-object v2, v4, v5

    const-string/jumbo v7, "rowid DESC"

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "ResultCode=200"

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "Date"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const-string/jumbo v2, "Version"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v15

    :cond_0
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    const-string/jumbo v2, "SoftwareUpdateSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get LastUpdateTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v16, "MMMM dd, yyyy"

    sget-object v17, Ljava/util/Locale$Category;->DISPLAY:Ljava/util/Locale$Category;

    invoke-static/range {v17 .. v17}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v6, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "SoftwareUpdateSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "get LastUpdateVersion : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroid/support/v7/preference/SecPreference;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isLastVersionUpdatedByFOTA(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v16, 0x0

    cmp-long v2, v10, v16

    if-lez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f120f5b

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v9, v5, v6

    const/4 v6, 0x1

    aput-object v14, v5, v6

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v13}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v12

    :try_start_1
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    :cond_4
    const-string/jumbo v2, "SoftwareUpdateSettings"

    const-string/jumbo v5, "last version doesn\'t match or date <= 0"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f120f5d

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v13}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroid/support/v7/preference/SecPreference;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto :goto_1
.end method

.method private updateScheduledUpdateMenu()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/support/v14/preference/SecSwitchPreference;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isSupportInAppFOTASchedule()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "key_scheduled_update"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v1, "key_scheduled_update_time"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f121b67

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getScheduledInstallTime(Landroid/content/Context;)J

    move-result-wide v2

    const-string/jumbo v1, "SoftwareUpdateSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get scheduledUpdateTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v7}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/support/v7/preference/SecPreference;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v7}, Landroid/support/v7/preference/SecPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialHour:I

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialMin:I

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SecSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduledUpdatePref:Landroid/support/v14/preference/SecSwitchPreference;

    invoke-virtual {v1, v6}, Landroid/support/v14/preference/SecSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v1, v6}, Landroid/support/v7/preference/SecPreference;->setVisible(Z)V

    goto :goto_1
.end method

.method private updateSprPrefMenu(Ljava/lang/String;ZZ)V
    .locals 4

    const-string/jumbo v1, "SoftwareUpdateSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSprPrefMenu() Key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; display? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; enable? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removePreference(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1

    const/16 v0, 0x260

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1fa4

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v1, "SoftwareUpdateSettings"

    const-string/jumbo v2, "onCreate Software Update"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isSprBootCarrierId()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isSimUnlockSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.phone"

    const-string/jumbo v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->createBroadcastReceivers()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mLastUpdateCheckTimeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "sec.fota.intent.CHECKED_DATE_UPDATED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 7

    const/16 v4, 0xc

    const/16 v2, 0xb

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    sget v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialHour:I

    invoke-virtual {v6, v2, v1}, Ljava/util/Calendar;->set(II)V

    sget v1, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialMin:I

    invoke-virtual {v6, v4, v1}, Ljava/util/Calendar;->set(II)V

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    new-instance v0, Lcom/samsung/android/app/SemTimePickerDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v6, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/SemTimePickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/app/SemTimePickerDialog$OnTimeSetListener;IIZ)V

    invoke-virtual {v0}, Lcom/samsung/android/app/SemTimePickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.helphub"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    if-eq v2, v5, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f120ceb

    invoke-interface {p1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f080246

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SoftwareUpdateSettings"

    const-string/jumbo v3, "NameNotFoundException in onCreateOptionsMenu"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mLastUpdateCheckTimeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mLastUpdateCheckTimeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mLastUpdateCheckTimeReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    const/4 v7, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isSupportOnlineHelpMenu(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    :try_start_0
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "helphub:appid"

    const-string/jumbo v5, "update_your_device"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v7

    :catch_0
    move-exception v0

    const-string/jumbo v4, "SoftwareUpdateSettings"

    const-string/jumbo v5, "ActivityNotFoundException in onOptionsItemSelected"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "helphub:section"

    const-string/jumbo v5, "upgrade"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v7

    :catch_1
    move-exception v1

    const-string/jumbo v4, "SoftwareUpdateSettings"

    const-string/jumbo v5, "NameNotFoundException in onOptionsItemSelected"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "SoftwareUpdate"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    const/16 v2, 0x3e8

    const/4 v8, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v5, "SoftwareUpdateSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "key_scheduled_update"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0491

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-eqz v1, :cond_1

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "SOFTWARE_UPDATE_SET_INSTALL_EVERYDAY"

    if-eqz v1, :cond_2

    move v2, v4

    :goto_1
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v1, :cond_3

    sget v2, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialHour:I

    sget v3, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mInitialMin:I

    invoke-direct {p0, v2, v3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->setScheduledInstallTime(II)V

    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/SecPreference;->setVisible(Z)V

    :cond_0
    :goto_2
    return v4

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    invoke-direct {p0, v8, v8}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->setScheduledInstallTime(II)V

    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mScheduleTimePref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/SecPreference;->setVisible(Z)V

    goto :goto_2

    :cond_4
    const-string/jumbo v5, "key_auto_download"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b048e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    if-eqz v0, :cond_6

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "SOFTWARE_UPDATE_WIFI_ONLY2"

    if-eqz v0, :cond_5

    move v3, v4

    :cond_5
    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_6
    move v2, v3

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 14

    const/4 v13, 0x0

    const/16 v12, 0x20

    const/4 v11, 0x1

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v9, "ro.product.name"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x2

    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v9, "SM-G930P"

    aput-object v9, v0, v13

    const-string/jumbo v9, "SM-G935P"

    aput-object v9, v0, v11

    const-string/jumbo v6, "com.sec.omadmspr"

    const-string/jumbo v1, "com.sec.omadmspr.sdm.SDMService"

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v6, "com.samsung.sdm"

    const-string/jumbo v1, "com.samsung.sdm.SDMService"

    :cond_0
    const-string/jumbo v9, "key_update"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string/jumbo v9, "SoftwareUpdateSettings"

    const-string/jumbo v10, "Software Update Checked"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b048f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->checkNewSoftwareUpdate(Landroid/content/Context;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v9

    return v9

    :cond_2
    const-string/jumbo v9, "update_prl"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string/jumbo v9, "SoftwareUpdateSettings"

    const-string/jumbo v10, "Update PRL is clicked"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "com.sprint.samsung.OMADMExtension.HFA"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "EXTRA_HFA_TYPE"

    const-string/jumbo v10, "START_PRL"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_3
    const-string/jumbo v9, "update_profile"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string/jumbo v9, "SoftwareUpdateSettings"

    const-string/jumbo v10, "Update Profile is clicked"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "com.sprint.samsung.OMADMExtension.HFA"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "EXTRA_HFA_TYPE"

    const-string/jumbo v10, "START_DP"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_4
    const-string/jumbo v9, "uicc_unlock"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string/jumbo v9, "SoftwareUpdateSettings"

    const-string/jumbo v10, "UICC Unlock is clicked"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "com.sprint.samsung.OMADMExtension.HFA"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "EXTRA_HFA_TYPE"

    const-string/jumbo v10, "SIM_UNLOCK"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v9, "key_scheduled_update_time"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string/jumbo v9, "SoftwareUpdateSettings"

    const-string/jumbo v10, "Scheduled software update Checked"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->removeDialog(I)V

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->showDialog(I)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v9, "key_last_update"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const-string/jumbo v9, "SoftwareUpdateSettings"

    const-string/jumbo v10, "Last Update is clicked"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0490

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v9, "com.wssyncmldm.LastUpdateActivity"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "com.wssyncmldm"

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v9, "SoftwareUpdateSettings"

    const-string/jumbo v10, "LastUpdateActivity is not found"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f120f5d

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v9, v8}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mLastUpdateInfoPref:Landroid/support/v7/preference/SecPreference;

    invoke-virtual {v9, v13}, Landroid/support/v7/preference/SecPreference;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->initSoftwareUpdateMenuCategory()V

    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->applySoftwareUpdatePolicy()V

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "SoftwareUpdate"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isSprBootCarrierId()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->isSimUnlockSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/SoftwareUpdateSettings;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getOemSimLock()V

    const-string/jumbo v0, "SoftwareUpdateSettings"

    const-string/jumbo v1, "onResume() mServiceMessenger"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SoftwareUpdateSettings"

    const-string/jumbo v1, " onResume() mServiceMessenger"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "SoftwareUpdateSettings"

    const-string/jumbo v1, " onResume() mServiceMessenger is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onTimeSet(Lcom/samsung/android/widget/SemTimePicker;II)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/samsung/android/settings/SoftwareUpdateSettings;->setScheduledInstallTime(II)V

    :cond_0
    return-void
.end method

.method public readCPVersion()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "ril.sw_ver"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
