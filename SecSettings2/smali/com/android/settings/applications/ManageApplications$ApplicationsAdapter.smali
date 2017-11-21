.class Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$-void_-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1_com_android_settingslib_applications_ApplicationsState$AppFilter_finalFilterObj_java_util_Comparator_comparatorObj_LambdaImpl0;,
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;,
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;
    }
.end annotation


# static fields
.field private static final EMPTY_SECTIONS:[Lcom/android/settings/applications/ManageApplications$SectionInfo;


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mBgHandler:Landroid/os/Handler;

.field private final mContext:Landroid/content/Context;

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

.field private final mFgHandler:Landroid/os/Handler;

.field private mFilter:Landroid/widget/Filter;

.field private mFilterMode:I

.field private mHasReceivedBridgeCallback:Z

.field private mHasReceivedLoadEntries:Z

.field private mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

.field private mLastSortMode:I

.field private final mManageApplications:Lcom/android/settings/applications/ManageApplications;

.field private mOverrideFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mPositionToSectionIndex:[I

.field private mResumed:Z

.field private mSections:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

.field private final mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mWhichSize:I


# direct methods
.method static synthetic -get0(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuildSections()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->updateLoading()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/settings/applications/ManageApplications$SectionInfo;

    sput-object v0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/ManageApplications;I)V
    .locals 5

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    sget-object v1, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    new-instance v1, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFgHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v2}, Lcom/android/settingslib/applications/ApplicationsState;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {p2}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    const-string/jumbo v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iput p3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget v1, v1, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Lcom/android/settings/applications/AppStateNotificationBridge;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-static {p2}, Lcom/android/settings/applications/ManageApplications;->-get10(Lcom/android/settings/applications/ManageApplications;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v4

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/android/settings/applications/AppStateNotificationBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/notification/NotificationBackend;)V

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget v1, v1, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    new-instance v1, Lcom/android/settings/applications/AppStateUsageBridge;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/settings/applications/AppStateUsageBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget v1, v1, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_2

    new-instance v1, Lcom/android/settings/applications/AppStatePowerBridge;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v1, v2, p0}, Lcom/android/settings/applications/AppStatePowerBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget v1, v1, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    new-instance v1, Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/settings/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget v1, v1, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    new-instance v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v1, v2, v3, p0}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0
.end method

.method private static packageNameEquals(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageItemInfo;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_3

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private rebuildSections()V
    .locals 14

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v10}, Lcom/android/settings/applications/ManageApplications;->-wrap2(Lcom/android/settings/applications/ManageApplications;)V

    :goto_0
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v10}, Lcom/android/settings/applications/ManageApplications;->-get8(Lcom/android/settings/applications/ManageApplications;)Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ListView;->isFastScrollEnabled()Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    if-nez v10, :cond_3

    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v10

    if-nez v10, :cond_0

    new-instance v5, Landroid/os/LocaleList;

    new-array v10, v13, [Ljava/util/Locale;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v11, v10, v12

    invoke-direct {v5, v10}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    :cond_0
    new-instance v1, Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {v5, v12}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v10

    invoke-direct {v1, v10}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    invoke-virtual {v5}, Landroid/os/LocaleList;->size()I

    move-result v4

    const/4 v0, 0x1

    :goto_1
    if-ge v0, v4, :cond_2

    new-array v10, v13, [Ljava/util/Locale;

    invoke-virtual {v5, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v1, v10}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v10}, Lcom/android/settings/applications/ManageApplications;->-wrap1(Lcom/android/settings/applications/ManageApplications;)V

    goto :goto_0

    :cond_2
    new-array v10, v13, [Ljava/util/Locale;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v11, v10, v12

    invoke-virtual {v1, v10}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {v1}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, -0x1

    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v10, v9, [I

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v9, :cond_6

    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v10, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string/jumbo v10, ""

    :goto_3
    invoke-virtual {v11, v10}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucketIndex(Ljava/lang/CharSequence;)I

    move-result v7

    const-string/jumbo v10, "ManageApplications"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "]sId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", sLabel = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v12, v7}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v12

    invoke-virtual {v12}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", app = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v7, v3, :cond_4

    move v3, v7

    new-instance v10, Lcom/android/settings/applications/ManageApplications$SectionInfo;

    iget-object v11, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mIndex:Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    invoke-virtual {v11, v7}, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;->getBucket(I)Landroid/icu/text/AlphabeticIndex$Bucket;

    move-result-object v11

    invoke-virtual {v11}, Landroid/icu/text/AlphabeticIndex$Bucket;->getLabel()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v6}, Lcom/android/settings/applications/ManageApplications$SectionInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    aput v11, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_5
    move-object v10, v2

    goto :goto_3

    :cond_6
    sget-object v10, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/android/settings/applications/ManageApplications$SectionInfo;

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    const/4 v0, 0x0

    :goto_4
    iget-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    array-length v10, v10

    if-ge v0, v10, :cond_8

    const-string/jumbo v10, "ManageApplications"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")pos = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    aget-object v12, v12, v0

    iget v12, v12, Lcom/android/settings/applications/ManageApplications$SectionInfo;->position:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", sLabel = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    aget-object v12, v12, v0

    iget-object v12, v12, Lcom/android/settings/applications/ManageApplications$SectionInfo;->label:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    sget-object v10, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    iput-object v10, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    iput-object v11, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    :cond_8
    return-void
.end method

.method private removeDuplicateIgnoringUser(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v3, v6}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->packageNameEquals(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageItemInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->trimToSize()V

    return-object v4
.end method

.method private updateLoading()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->-get9(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->-get7(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateSummary(Lcom/android/settings/applications/AppViewHolder;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget v4, v4, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, v2, v3}, Lcom/android/settings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v2, :cond_1

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010434

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    if-lez v2, :cond_0

    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v3, p1, Lcom/android/settings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/settings/notification/NotificationBackend$AppRow;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/android/settings/applications/InstalledAppDetails;->getNotificationSummary(Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v6, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mPm:Landroid/content/pm/PackageManager;

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/settingslib/applications/AppUtils;->getLaunchByDefaultSummary(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/hardware/usb/IUsbManager;Landroid/appwidget/AppWidgetManager;Landroid/content/pm/PackageManager;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/android/settings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    new-instance v4, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v4, v2}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    invoke-virtual {v4}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0b19dc

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const v2, 0x7f0b19dd

    goto :goto_1

    :cond_3
    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->summary:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v4, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/android/settings/applications/AppViewHolder;->optSwitch:Landroid/widget/Switch;

    iget-object v5, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-eq v5, v6, :cond_5

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :cond_4
    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->optSwitch:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, v2, v3}, Lcom/android/settings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    :cond_5
    move v2, v3

    goto :goto_2

    :pswitch_5
    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/android/settings/applications/AppViewHolder;->optSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v4, v2}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    invoke-virtual {v4}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->isPermissible()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_3
    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->optSwitch:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, v2, v3}, Lcom/android/settings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->optSwitch:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_3

    :pswitch_6
    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/android/settings/applications/AppViewHolder;->optSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v4, v2}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    invoke-virtual {v4}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->isPermissible()Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_4
    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->optSwitch:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget-object v2, v2, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, v2, v3}, Lcom/android/settings/applications/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p1, Lcom/android/settings/applications/AppViewHolder;->optSwitch:Landroid/widget/Switch;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method synthetic -com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V
    .locals 11

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, p2, v8}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_8

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_Setting_ConfigAppListForHidingAppMgr"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settings/applications/ManageApplications;->-set0(Z)Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v7

    const-string/jumbo v8, "CscFeature_Setting_ConfigAppListForHidingAppMgr"

    invoke-virtual {v7, v8}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    array-length v9, v1

    move v8, v7

    :goto_1
    if-ge v8, v9, :cond_1

    aget-object v0, v1, v8

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/settings/applications/ManageApplications;->-set0(Z)Z

    :cond_0
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/settings/applications/ManageApplications;->-get12()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    const/16 v8, 0x64

    if-lt v7, v8, :cond_4

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    if-eq v6, v7, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_4
    const/16 v7, 0x64

    if-lt v6, v7, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/settings/applications/ManageApplications;->-set0(Z)Z

    invoke-static {}, Lcom/android/settings/applications/ManageApplications;->-get5()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget v7, v7, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    invoke-static {}, Lcom/android/settings/applications/ManageApplications;->-get0()[Ljava/lang/String;

    move-result-object v9

    const/4 v7, 0x0

    array-length v10, v9

    move v8, v7

    :goto_3
    if-ge v8, v10, :cond_6

    aget-object v5, v9, v8

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v7, v7, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x1

    invoke-static {v7}, Lcom/android/settings/applications/ManageApplications;->-set0(Z)Z

    :cond_6
    invoke-static {}, Lcom/android/settings/applications/ManageApplications;->-get12()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_3

    :cond_8
    if-eqz v2, :cond_9

    iget-object v7, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFgHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$-void_-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1_com_android_settingslib_applications_ApplicationsState$AppFilter_finalFilterObj_java_util_Comparator_comparatorObj_LambdaImpl0;

    invoke-direct {v8, p0, v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$-void_-com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$1_com_android_settingslib_applications_ApplicationsState$AppFilter_finalFilterObj_java_util_Comparator_comparatorObj_LambdaImpl0;-><init>(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    return-void
.end method

.method synthetic -com_android_settings_applications_ManageApplications$ApplicationsAdapter_lambda$2(Ljava/util/ArrayList;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->onRebuildComplete(Ljava/util/ArrayList;)V

    return-void
.end method

.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    return-object p2

    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settingslib/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v2
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public getBaseEntries()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    aget-object v0, v0, p1

    iget v0, v0, Lcom/android/settings/applications/ManageApplications$SectionInfo;->position:I

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_0

    const-string/jumbo v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "section length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplications;->-get6(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/android/settings/applications/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/applications/AppViewHolder;

    move-result-object v1

    iget-object p2, v1, Lcom/android/settings/applications/AppViewHolder;->rootView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    monitor-enter v0

    :try_start_0
    iput-object v0, v1, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/settings/applications/AppViewHolder;)V

    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v3, 0x7f0b1538

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->isItemEnabled(I)Z

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setEnabled(Z)V

    return-object p2

    :cond_2
    :try_start_1
    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const v3, 0x7f0b1537

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0

    throw v2

    :cond_3
    :try_start_2
    iget-object v2, v1, Lcom/android/settings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isItemEnabled(I)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget v4, v4, Lcom/android/settings/applications/ManageApplications;->mListType:I

    packed-switch v4, :pswitch_data_0

    return v2

    :pswitch_0
    if-eqz v1, :cond_2

    iget-object v4, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/settings/applications/ManageApplications;->-wrap0(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->getInstance()Lcom/android/settings/fuelgauge/PowerWhitelistBackend;

    move-result-object v4

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/settings/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    :cond_1
    return v2

    :pswitch_1
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v4, :cond_2

    :try_start_0
    new-instance v4, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    check-cast v2, Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v5, v6}, Lcom/android/settings/applications/AppStateOverlayBridge;->getOverlayInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    iget-boolean v2, v4, Lcom/android/settings/applications/AppStateOverlayBridge$OverlayState;->permissionDeclared:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "ManageApplications"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Disabled app : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :pswitch_2
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v4, :cond_2

    :try_start_1
    new-instance v4, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    check-cast v2, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v5, v6}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->getWriteSettingsInfo(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    iget-boolean v2, v4, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;->permissionDeclared:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    move-exception v0

    const-string/jumbo v2, "ManageApplications"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Disabled app : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onAllSizesComputed()V
    .locals 2

    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v1, 0x7f110879

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    :cond_0
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->-get11(Lcom/android/settings/applications/ManageApplications;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    :cond_0
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppViewHolder;

    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/settings/applications/AppViewHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v2, v0, Lcom/android/settings/applications/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/applications/ManageApplications;->-get1(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v3, 0x7f110879

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    const/16 v5, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    if-ne v2, v4, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->removeDuplicateIgnoringUser(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-lt v2, v5, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-eq v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    if-lt v1, v5, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuildSections()V

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v2}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplications;->-get7(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/applications/ManageApplications;->-get9(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/applications/ManageApplications;->-get7(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v3

    invoke-static {v2, v3, v4, v4}, Lcom/android/settings/Utils;->handleLoadingContainer(Landroid/view/View;Landroid/view/View;ZZ)V

    :cond_5
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget v2, v2, Lcom/android/settings/applications/ManageApplications;->mListType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    return-void

    :cond_6
    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->EMPTY_SECTIONS:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSections:[Lcom/android/settings/applications/ManageApplications$SectionInfo;

    iput-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mPositionToSectionIndex:[I

    goto :goto_2

    :cond_7
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v3}, Lcom/android/settingslib/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ManageApplications;->setHasDisabled(Z)V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    return-void
.end method

.method public pause()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->pause()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateBaseBridge;->pause()V

    :cond_0
    return-void
.end method

.method public rebuild(I)V
    .locals 1

    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public rebuild(Z)V
    .locals 7

    iget-boolean v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    if-eqz v5, :cond_4

    :cond_0
    sget-boolean v5, Lcom/android/settings/applications/ManageApplications;->DEBUG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "ManageApplications"

    const-string/jumbo v6, "Rebuilding app list..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    :goto_0
    sget-object v5, Lcom/android/settings/applications/ManageApplications;->FILTERS:[Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    iget v6, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    aget-object v2, v5, v6

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    :cond_2
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/ManageApplications;

    invoke-static {v5}, Lcom/android/settings/applications/ManageApplications;->-get11(Lcom/android/settings/applications/ManageApplications;)Z

    move-result v5

    if-nez v5, :cond_3

    new-instance v3, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v5, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v3, v2, v5}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    move-object v2, v3

    :cond_3
    iget v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v5, :pswitch_data_0

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    :goto_1
    move-object v4, v2

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBgHandler:Landroid/os/Handler;

    new-instance v6, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;

    invoke-direct {v6, p0, v4, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$-void_rebuild_boolean_eraseold_LambdaImpl0;-><init>(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    return-void

    :cond_5
    const/4 v5, 0x1

    iput v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    :pswitch_0
    iget v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    packed-switch v5, :pswitch_data_1

    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1

    :pswitch_2
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7f110879
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->release()V

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateBaseBridge;->release()V

    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 3

    sget-boolean v0, Lcom/android/settings/applications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Resume!  mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->resume()V

    iput p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateBaseBridge;->resume()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0
.end method

.method public setFilter(I)V
    .locals 1

    iput p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilterMode:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public setOverrideFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mOverrideFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method
