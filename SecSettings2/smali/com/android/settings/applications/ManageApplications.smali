.class public Lcom/android/settings/applications/ManageApplications;
.super Lcom/samsung/android/settings/SecInstrumentedFragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplications$1;,
        Lcom/android/settings/applications/ManageApplications$2;,
        Lcom/android/settings/applications/ManageApplications$3;,
        Lcom/android/settings/applications/ManageApplications$4;,
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;,
        Lcom/android/settings/applications/ManageApplications$SectionInfo;,
        Lcom/android/settings/applications/ManageApplications$SummaryProvider;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_LABELS:[I

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static hide_app_list:Ljava/lang/String;

.field private static hide_app_notification_list:[Ljava/lang/String;

.field private static mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

.field private static mHideApp:Z

.field private static mSkipApp:Z


# instance fields
.field final handler:Landroid/os/Handler;

.field public mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mBooster:Lcom/samsung/android/settings/utils/Booster;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mCurrentUid:I

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field public mFilter:I

.field private mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

.field private mFilterSpinner:Landroid/widget/Spinner;

.field private mFinishAfterDialog:Z

.field private mFuncDesc:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mListContainer:Landroid/view/View;

.field public mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

.field private mResetAppsDialogCallback:Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;

.field private mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

.field private mRootView:Landroid/view/View;

.field private mShowSystem:Z

.field private mSortOrder:I

.field private mSpinnerHeader:Landroid/view/View;

.field private mVolumeName:Ljava/lang/String;

.field private mVolumeUuid:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->hide_app_notification_list:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/settings/applications/ManageApplications;)Lcom/android/settings/notification/NotificationBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/settings/applications/ManageApplications;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    return v0
.end method

.method static synthetic -get12()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->mSkipApp:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/settings/applications/ManageApplications;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    return v0
.end method

.method static synthetic -get14(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get2()Lcom/samsung/android/settings/applications/EmHandler;
    .locals 1

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/applications/ManageApplications;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/applications/ManageApplications;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->mHideApp:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/applications/ManageApplications;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settings/applications/ManageApplications;->mSkipApp:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/applications/ManageApplications;->hasWhiteListByMDM(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/ManageApplications;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->addRelativeView()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/applications/ManageApplications;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->removeRelativeView()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/16 v1, 0x10

    const/4 v5, 0x3

    const/4 v4, 0x0

    const-string/jumbo v0, "ManageApplications"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/applications/ManageApplications;->DEBUG:Z

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->FILTER_LABELS:[I

    new-array v0, v1, [Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settings/applications/AppStatePowerBridge;->FILTER_POWER_WHITELISTED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_SILENCED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_BLOCKED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_PRIORITY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_HIDE_ALL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/AppStateNotificationBridge;->FILTER_APP_NOTIFICATION_HIDE_SENSITIVE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/AppStateUsageBridge;->FILTER_APP_USAGE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/AppStateOverlayBridge;->FILTER_SYSTEM_ALERT_WINDOW:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->FILTER_WRITE_SETTINGS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    sput-boolean v4, Lcom/android/settings/applications/ManageApplications;->mHideApp:Z

    sput-boolean v4, Lcom/android/settings/applications/ManageApplications;->mSkipApp:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->hide_app_list:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/applications/ManageApplications$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ManageApplications$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    new-instance v0, Lcom/android/settings/applications/ManageApplications$3;

    invoke-direct {v0}, Lcom/android/settings/applications/ManageApplications$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void

    :array_0
    .array-data 4
        0x7f0b1a55
        0x7f0b1a1a
        0x7f0b1a1a
        0x7f0b1a1b
        0x7f0b1533
        0x7f0b1a23
        0x7f0b1a1e
        0x7f0b1a20
        0x7f0b1a22
        0x7f0b1a21
        0x7f0b1a1c
        0x7f0b1a1d
        0x7f0b1a1f
        0x7f0b1a1a
        0x7f0b1aa9
        0x7f0b1aaf
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;-><init>()V

    const v0, 0x7f110878

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    new-instance v0, Lcom/android/settings/applications/ManageApplications$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$1;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/applications/ManageApplications$4;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$4;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addRelativeView()V
    .locals 9

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-eqz v7, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId()Z

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isRelativeLinkSupported(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v7, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v7, Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/samsung/android/settings/widget/RelativeLinkView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    new-instance v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v3}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    const-string/jumbo v7, "com.samsung.android.sm.ACTION_STORAGE"

    invoke-direct {p0, v7}, Lcom/android/settings/applications/ManageApplications;->isIntentEnabledInSM(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.android.sm.ACTION_STORAGE"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v6, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    :goto_1
    const v7, 0x7f0b138d

    iput v7, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v4}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-direct {p0, v7}, Lcom/android/settings/applications/ManageApplications;->isIntentEnabledInSM(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string/jumbo v7, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_2
    iput-object v0, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v7, 0x7f0b1664

    iput v7, v4, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    new-instance v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;

    invoke-direct {v5}, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;-><init>()V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v7, "com.samsung.settings.INFO_APP_SHORTCUTS"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->intent:Landroid/content/Intent;

    const v7, 0x7f0b083d

    iput v7, v5, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->titleRes:I

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v7, v3}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v7, v4}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v7, v5}, Lcom/samsung/android/settings/widget/RelativeLinkView;->pushLinkData(Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;)V

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    iget-object v8, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v8}, Lcom/samsung/android/settings/widget/RelativeLinkView;->create(Landroid/widget/ListView;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v7, "com.android.settings.deviceinfo.StorageSettings"

    iput-object v7, v3, Lcom/samsung/android/settings/SettingsPreferenceFragmentLinkData;->fragment:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string/jumbo v7, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method private createHeader()V
    .locals 9

    const/4 v8, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v5, 0x7f110275

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f040042

    invoke-virtual {v4, v5, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    const v5, 0x7f110169

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    new-instance v4, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    invoke-virtual {v2, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getDefaultFilter()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v4, v7, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v7, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_3
    :goto_1
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v4, v7, :cond_4

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v4, v8}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    :cond_4
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v4, v8, :cond_5

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v4, v7}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    :cond_5
    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    new-instance v5, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->setOverrideFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    :cond_6
    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    goto :goto_1
.end method

.method private getDefaultFilter()I
    .locals 1

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x2

    return v0

    :pswitch_1
    const/16 v0, 0xc

    return v0

    :pswitch_2
    const/16 v0, 0xd

    return v0

    :pswitch_3
    const/4 v0, 0x0

    return v0

    :pswitch_4
    const/16 v0, 0xe

    return v0

    :pswitch_5
    const/16 v0, 0xf

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static hasWhiteListByMDM(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    :try_start_0
    const-string/jumbo v0, "content://com.sec.knox.provider2/ApplicationPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "getAllPackagesFromBatteryOptimizationWhiteList"

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v9, 0x0

    :goto_0
    const-string/jumbo v0, "getAllPackagesFromBatteryOptimizationWhiteList"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x1

    const-string/jumbo v0, "ManageApplications"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "white list app:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    return v8

    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "ManageApplications"

    const-string/jumbo v2, "failed to get white list by MDM."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private isFastScrollEnabled()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const v2, 0x7f110878

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isIntentEnabledInSM(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/settings/Utils;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    return v3
.end method

.method private removeRelativeView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRelativeLinkView:Lcom/samsung/android/settings/widget/RelativeLinkView;

    :cond_0
    return-void
.end method

.method private searchAndLaunchApp()V
    .locals 19

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamsSize()I

    move-result v18

    const/4 v1, 0x1

    move/from16 v0, v18

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exePramAction)size="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getParamString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    sget-object v1, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exePramAction)queryAppName="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v13, ""

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getBaseEntries()Ljava/util/ArrayList;

    move-result-object v12

    if-nez v12, :cond_1

    sget-object v1, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exePramAction)allEntries="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    return-void

    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    :goto_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_3

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    sget-object v1, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exePramAction)matchedSize="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_4

    sget-object v2, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "exePramAction)app_name="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ", uid="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    move/from16 v0, v16

    if-le v0, v1, :cond_5

    sget-object v1, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "There are many matched apps for : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, ")"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v4, "AppName"

    const-string/jumbo v5, "Match"

    const-string/jumbo v6, "no"

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    return-void

    :cond_5
    if-nez v16, :cond_6

    sget-object v1, Lcom/samsung/android/settings/applications/EmHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "There is no matched apps for : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v4, "App"

    const-string/jumbo v5, "Exist"

    const-string/jumbo v6, "no"

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    return-void

    :cond_6
    const/4 v1, 0x1

    move/from16 v0, v16

    if-ne v0, v1, :cond_8

    const-class v4, Lcom/android/settings/applications/InstalledAppDetails;

    const v5, 0x7f0b1507

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AppNotifications"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-class v4, Lcom/android/settings/notification/AppNotificationSettings;

    const v5, 0x7f0b196c

    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Activity;I)V

    sget-object v6, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v7, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    const-string/jumbo v8, "ApplicationInfo"

    const-string/jumbo v9, "AppName"

    const-string/jumbo v10, "Match"

    const-string/jumbo v11, "yes"

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    :cond_8
    return-void
.end method

.method private startAppInfoFragment(Ljava/lang/Class;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    const/4 v5, 0x1

    move-object v0, p1

    move v1, p2

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;I)V

    return-void
.end method

.method private startApplicationDetailsActivity(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    const-class v0, Lcom/android/settings/applications/InstalledAppDetails;

    const v1, 0x7f0b1507

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    :goto_0
    return-void

    :pswitch_0
    const-class v0, Lcom/android/settings/notification/AppNotificationSettings;

    const v1, 0x7f0b196c

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    :pswitch_1
    const-class v0, Lcom/android/settings/applications/AppLaunchSettings;

    const v1, 0x7f0b0398

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    :pswitch_2
    const-class v0, Lcom/android/settings/applications/UsageAccessDetails;

    const v1, 0x7f0b1a45

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    :pswitch_3
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const v1, 0x7f0b138d

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageApplications;->toggleSwitchHighPower(Landroid/view/View;)V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageApplications;->toggleSwitchOverlay(Landroid/view/View;)V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageApplications;->toggleSwitchWriteSettings(Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private toggleSwitchHighPower(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppViewHolder;

    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/settings/applications/ManageApplications;->hasWhiteListByMDM(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    monitor-exit v2

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Lcom/android/settings/fuelgauge/HighPowerDetail;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/HighPowerDetail;-><init>()V

    iget-object v3, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/settings/fuelgauge/HighPowerDetail;->setPowerWhitelisted(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit v2

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private toggleSwitchOverlay(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppViewHolder;

    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    monitor-enter v5

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    :try_start_1
    new-instance v3, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object v6, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6, v7}, Lcom/android/settings/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    :cond_0
    if-eqz v2, :cond_3

    :try_start_2
    iget-boolean v4, v2, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->permissionDeclared:Z

    if-eqz v4, :cond_3

    new-instance v6, Lcom/android/settings/applications/DrawOverlayDetails;

    invoke-direct {v6}, Lcom/android/settings/applications/DrawOverlayDetails;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v4, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/android/settings/applications/DrawOverlayDetails;->setCanDrawOverlay(Landroid/content/Context;Ljava/lang/String;IZ)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v4

    iget-object v6, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6, v7}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit v5

    :cond_2
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v4, "ManageApplications"

    const-string/jumbo v6, "Click disabled app"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-void

    :cond_3
    monitor-exit v5

    return-void

    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method private toggleSwitchWriteSettings(Landroid/view/View;)V
    .locals 10

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/AppViewHolder;

    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    monitor-enter v5

    const/4 v2, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    :try_start_1
    new-instance v3, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    iget-object v6, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6, v7}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    :cond_0
    if-eqz v2, :cond_3

    :try_start_2
    iget-boolean v4, v2, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->permissionDeclared:Z

    if-eqz v4, :cond_3

    new-instance v6, Lcom/android/settings/applications/WriteSettingsDetails;

    invoke-direct {v6}, Lcom/android/settings/applications/WriteSettingsDetails;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v7

    iget-object v4, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v6, v7, v8, v9, v4}, Lcom/android/settings/applications/WriteSettingsDetails;->setCanWriteSettings(Landroid/content/Context;Ljava/lang/String;IZ)V

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v4

    iget-object v6, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v6, v7}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit v5

    :cond_2
    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v4, "ManageApplications"

    const-string/jumbo v6, "Click disabled app"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v5

    return-void

    :cond_3
    monitor-exit v5

    return-void

    :cond_4
    const/4 v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method


# virtual methods
.method public exeCustomAction()V
    .locals 5

    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/applications/EmHandler;->exeOptBasicAction(Landroid/content/Context;Landroid/view/Menu;)Z

    move-result v0

    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "ApplicationInfo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "AppNotifications"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->searchAndLaunchApp()V

    :cond_1
    return-void
.end method

.method public exeOptAction()V
    .locals 5

    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/applications/EmHandler;->exeOptBasicAction(Landroid/content/Context;Landroid/view/Menu;)Z

    move-result v0

    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->getStateId()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;)V

    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->finish()V

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    sget-object v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/settings/applications/EmHandler;->setResult(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;Ljava/lang/String;)V

    sget-object v2, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v2}, Lcom/samsung/android/settings/applications/EmHandler;->retryAction()V

    goto :goto_0
.end method

.method public exePrefAction()V
    .locals 0

    return-void
.end method

.method public exeViewAction()V
    .locals 0

    return-void
.end method

.method protected getMetricsCategory()I
    .locals 2

    const/16 v1, 0xdd

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0x41

    return v0

    :pswitch_1
    const/16 v0, 0x85

    return v0

    :pswitch_2
    const/16 v0, 0x8f

    return v0

    :pswitch_3
    const/16 v0, 0xb6

    return v0

    :pswitch_4
    const/16 v0, 0x5f

    return v0

    :pswitch_5
    const/16 v0, 0xb8

    return v0

    :pswitch_6
    return v1

    :pswitch_7
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->addRelativeView()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mFinishAfterDialog:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v0, "chg"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "chg"

    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-set2(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Z)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    new-instance v3, Lcom/samsung/android/settings/applications/EmHandler;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/applications/EmHandler;-><init>(Lcom/samsung/android/settings/applications/EmHandler$EmHandlerCallback;)V

    sput-object v3, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    new-instance v3, Lcom/samsung/android/settings/utils/Booster;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/settings/utils/Booster;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mBooster:Lcom/samsung/android/settings/utils/Booster;

    const/16 v4, 0xbb8

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/utils/Booster;->start(I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, "classname"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-class v3, Lcom/android/settings/Settings$AllApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->getDefaultFilter()I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    if-eqz p1, :cond_2

    const-string/jumbo v3, "sortOrder"

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const-string/jumbo v3, "showSystem"

    iget-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    :cond_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Setting_ConfigBlockNotiAppList"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/applications/ManageApplications;->hide_app_list:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v3, v5, :cond_3

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->hide_app_list:Ljava/lang/String;

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->hide_app_list:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b1551

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/settings/applications/ManageApplications$5;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/ManageApplications$5;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsDialogCallback:Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;

    new-instance v3, Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsDialogCallback:Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;

    invoke-direct {v3, v4, v5}, Lcom/android/settings/applications/ResetAppsHelper;-><init>(Landroid/content/Context;Lcom/android/settings/applications/ResetAppsHelper$OnResetAppsDialogListener;)V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    new-instance v3, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_4
    const-class v3, Lcom/android/settings/Settings$NotificationAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput v5, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    new-instance v3, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v3}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mNotifBackend:Lcom/android/settings/notification/NotificationBackend;

    goto :goto_0

    :cond_5
    const-class v3, Lcom/android/settings/Settings$DomainsURLsAppListActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    goto/16 :goto_0

    :cond_6
    const-class v3, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v0, :cond_7

    const-string/jumbo v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string/jumbo v3, "volumeUuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    const-string/jumbo v3, "volumeName"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeName:Ljava/lang/String;

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    :goto_2
    const v3, 0x7f110879

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    goto/16 :goto_0

    :cond_7
    iput v6, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto :goto_2

    :cond_8
    const-class v3, Lcom/android/settings/Settings$UsageAccessSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x4

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto/16 :goto_0

    :cond_9
    const-class v3, Lcom/android/settings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, 0x5

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    goto/16 :goto_0

    :cond_a
    const-class v3, Lcom/android/settings/Settings$OverlaySettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v3, 0x6

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getOverlayTitle()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    :cond_b
    const-class v3, Lcom/android/settings/Settings$WriteSettingsActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x7

    iput v3, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getWriteSettingsTitle()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    goto/16 :goto_0

    :cond_c
    iput v6, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    goto/16 :goto_0

    :cond_d
    sput-boolean v5, Lcom/android/settings/applications/ManageApplications;->mHideApp:Z

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->hide_app_list:Ljava/lang/String;

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/applications/ManageApplications;->hide_app_notification_list:[Ljava/lang/String;

    sget-object v3, Lcom/android/settings/applications/ManageApplications;->hide_app_notification_list:[Ljava/lang/String;

    if-nez v3, :cond_3

    const-string/jumbo v3, "ManageApplications"

    const-string/jumbo v4, "Hide app notification list is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v6, Lcom/android/settings/applications/ManageApplications;->mHideApp:Z

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v0, :cond_1

    const v0, 0x7f0b189c

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v0, 0x7f140006

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    return-void

    :cond_1
    const v0, 0x7f0b189b

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040178

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f11044c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v3, 0x7f110475

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v3, 0x102000a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    if-eqz v9, :cond_0

    invoke-virtual {v12, v9}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {v12, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    const/4 v2, 0x1

    invoke-virtual {v12, v2}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    iput-object v12, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    invoke-direct {v2, v3, p0, v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/ManageApplications;I)V

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    const-string/jumbo v3, "hasEntries"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-set2(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Z)Z

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    const-string/jumbo v3, "hasBridge"

    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-set1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Z)Z

    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->semSetGoToTopEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->semSetFastScrollCustomEffectEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v11

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v2, 0x7f0a0466

    invoke-virtual {v13, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x7f0a045c

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    const v3, 0x7f0a001a

    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int v5, v2, v3

    if-eqz v11, :cond_6

    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v1 .. v6}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040262

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v2, 0x7f110605

    invoke-virtual {v10, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFuncDesc:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFuncDesc:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFuncDesc:Landroid/widget/TextView;

    const v3, 0x7f0b1aa4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_1
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v10}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    :cond_4
    move-object/from16 v0, p2

    instance-of v2, v0, Landroid/preference/PreferenceFrameLayout;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->createHeader()V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/ResetAppsHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v2

    :cond_6
    new-instance v1, Landroid/graphics/drawable/InsetDrawable;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFuncDesc:Landroid/widget/TextView;

    const v3, 0x7f0b1ab4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mFuncDesc:Landroid/widget/TextView;

    const v3, 0x7f0b0749

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_9
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->release()V

    :cond_0
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int/2addr p3, v1

    if-gez p3, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v1

    if-le v1, p3, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentUid:I

    invoke-direct {p0, p2}, Lcom/android/settings/applications/ManageApplications;->startApplicationDetailsActivity(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, p3}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->getFilter(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->setFilter(I)V

    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Selecting filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 18

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v17

    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    return v2

    :pswitch_0
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const v3, 0x7f110878

    if-ne v3, v2, :cond_1

    const/16 v16, 0x3e8

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1000d6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x41

    invoke-static {v2, v6, v3, v5}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->semSetFastScrollCustomEffectEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->isFastScrollEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    :cond_0
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    const/4 v2, 0x1

    return v2

    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f1000f2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    if-nez v2, :cond_2

    const/16 v2, 0x3e8

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v6, 0x41

    invoke-static {v3, v6, v5, v2}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    goto :goto_3

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1000f6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const/16 v5, 0x41

    invoke-static {v2, v5, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {v2}, Lcom/android/settings/applications/ResetAppsHelper;->buildResetDialog()V

    const/4 v2, 0x1

    return v2

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    const-class v3, Lcom/android/settings/applications/ProcessStatsSummary;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0b1a49

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    const-class v3, Lcom/samsung/android/settings/applications/ManageDefaultApps;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0b039d

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_5
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.intent.action.ACTION_MANAGE_PERMISSIONS_CHN"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_4
    if-eqz v15, :cond_4

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings/applications/ManageApplications;->startActivity(Landroid/content/Intent;)V

    :cond_4
    const/4 v2, 0x1

    return v2

    :cond_5
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :pswitch_6
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "classname"

    const-string/jumbo v3, "com.android.settings.Settings$OverlaySettingsActivity"

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/SettingsActivity;

    const-class v3, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getOverlayTitle()I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_7
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "classname"

    const-string/jumbo v3, "com.android.settings.Settings$WriteSettingsActivity"

    invoke-virtual {v7, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/settings/SettingsActivity;

    const-class v2, Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/samsung/android/settings/applications/AppCommonUtils;->getWriteSettingsTitle()I

    move-result v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v10, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v2, 0x1

    return v2

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/settings/SettingsActivity;

    const-class v2, Lcom/android/settings/applications/SpecialAccessSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const v11, 0x7f0b1b48

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v13, p0

    invoke-virtual/range {v8 .. v14}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7f110878
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "Applications"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateView()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-wrap1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "Applications"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ResetAppsHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "showSystem"

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const-string/jumbo v0, "hasEntries"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get3(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "hasBridge"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplications:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->-get2(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/settings/applications/ResetAppsHelper;->stop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const/4 v1, 0x0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecInstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v2, 0x7f110275

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mVolumeName:Ljava/lang/String;

    const/4 v4, -0x1

    move-object v3, v1

    invoke-static/range {v0 .. v5}, Lcom/android/settings/AppHeader;->createAppHeader(Landroid/app/Activity;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/String;ILandroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v1, 0x7f110476

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v2, 0x2710

    const-string/jumbo v0, "ApplicationsChangeSystemSettings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f110880

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "ApplicationsAppsThatCanAppearOnTop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f11087f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "ApplicationsSystemapps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "AdvancedNotificationsMoreOptionsShowSystemApps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f11087d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "ApplicationsOrderbySize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f110879

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_5
    const-string/jumbo v0, "DefaultApplications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f11087b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "ApplicationInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto :goto_0

    :cond_7
    const-string/jumbo v0, "AppPermissions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f11087c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v0, "FilteredAdvancedNotificationsAllApps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "FilteredAdvancedNotificationsAppsWithBlockedNoti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "FilteredAdvancedNotificationsAppsWithPrioritizedNoti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "FilteredAdvancedNotificationsAppsWithNotiHiddenOnLockScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "FilteredAdvancedNotificationsAppsWithContentHiddenOnLockScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_a
    const v0, 0x7f0b1a1e

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "FilteredAdvancedNotificationsAppsWithPrioritizedNoti"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const v0, 0x7f0b1a20

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_b
    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->getCount()I

    move-result v0

    if-ge v3, v0, :cond_f

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->getItem(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/applications/ManageApplications;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    return-void

    :cond_c
    const-string/jumbo v0, "FilteredAdvancedNotificationsAppsWithNotiHiddenOnLockScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x7f0b1a22

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_d
    const-string/jumbo v0, "FilteredAdvancedNotificationsAppsWithContentHiddenOnLockScreen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f0b1a21

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_f
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/app/executor/ExecutorMediator$ResponseResults;)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v0, "AdvancedNotificationsMoreOptionsResetAppPreferences"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    const v1, 0x7f110882

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto/16 :goto_0

    :cond_11
    const-string/jumbo v0, "AppNotifications"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    invoke-virtual {v0, v5, v1, v2}, Lcom/samsung/android/settings/applications/EmHandler;->setAction(ILjava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method public setHasDisabled(Z)V
    .locals 2

    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    return-void
.end method

.method public stopAction()V
    .locals 2

    sget-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/applications/EmHandler;->sendResult(Lcom/samsung/android/settings/bixby/EmSettingsManager;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/applications/ManageApplications;->mEmHandler:Lcom/samsung/android/settings/applications/EmHandler;

    return-void
.end method

.method updateOptionsMenu()V
    .locals 8

    const/4 v7, 0x3

    const v5, 0x7f11087a

    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportGraceUXHeroView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_6

    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f11087b

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f11087c

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f11087f

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f110880

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f110881

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v1, :cond_7

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f110878

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v1, v7, :cond_9

    :cond_2
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const v5, 0x7f110878

    if-eq v1, v5, :cond_8

    move v1, v2

    :goto_3
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f110879

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-ne v1, v7, :cond_b

    :cond_3
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    const v5, 0x7f110879

    if-eq v1, v5, :cond_a

    move v1, v2

    :goto_4
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f11087d

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    if-nez v1, :cond_d

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eq v1, v6, :cond_c

    move v1, v2

    :goto_5
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f11087e

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowSystem:Z

    if-eqz v1, :cond_f

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eq v1, v6, :cond_e

    move v1, v2

    :goto_6
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f110882

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-eq v4, v6, :cond_10

    :goto_7
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/android/settings/Utils;->getSmartManagerPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v1, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mListType:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f11087b

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v4, 0x7f11087c

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_7
    move v1, v3

    goto/16 :goto_2

    :cond_8
    move v1, v3

    goto/16 :goto_3

    :cond_9
    move v1, v3

    goto/16 :goto_3

    :cond_a
    move v1, v3

    goto/16 :goto_4

    :cond_b
    move v1, v3

    goto/16 :goto_4

    :cond_c
    move v1, v3

    goto :goto_5

    :cond_d
    move v1, v3

    goto/16 :goto_5

    :cond_e
    move v1, v3

    goto :goto_6

    :cond_f
    move v1, v3

    goto :goto_6

    :cond_10
    move v2, v3

    goto :goto_7
.end method

.method public updateView()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method
