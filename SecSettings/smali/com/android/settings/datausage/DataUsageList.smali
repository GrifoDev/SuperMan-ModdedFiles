.class public Lcom/android/settings/datausage/DataUsageList;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "DataUsageList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataUsageList$10;,
        Lcom/android/settings/datausage/DataUsageList$1;,
        Lcom/android/settings/datausage/DataUsageList$2;,
        Lcom/android/settings/datausage/DataUsageList$3;,
        Lcom/android/settings/datausage/DataUsageList$4;,
        Lcom/android/settings/datausage/DataUsageList$5;,
        Lcom/android/settings/datausage/DataUsageList$6;,
        Lcom/android/settings/datausage/DataUsageList$7;,
        Lcom/android/settings/datausage/DataUsageList$8;,
        Lcom/android/settings/datausage/DataUsageList$9;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final MAXIMUM_POOL_SIZE:I

.field private static sCycle:I

.field private static final sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

.field private mAlertTotalSentListener:Landroid/view/View$OnClickListener;

.field private mApps:Landroid/support/v7/preference/PreferenceGroup;

.field private mBound:Z

.field private mCHNChart:Lcom/android/settings/widget/ChartDataUsageView;

.field private mCHNChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

.field private mChartData:Lcom/android/settingslib/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCycleSpinner:Landroid/widget/Spinner;

.field private mCycleSpinnerPosition:I

.field private final mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

.field private mDateEnd:Landroid/widget/TextView;

.field private mDateMid:Landroid/widget/TextView;

.field private mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

.field private mDateStart:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/view/View;

.field private mLifetime:Lcom/samsung/android/settings/datausage/MTRPreference;

.field private mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mSubId:I

.field private final mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/net/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTotalReceive:Lcom/samsung/android/settings/datausage/MTRPreference;

.field private mTotalSent:Lcom/samsung/android/settings/datausage/MTRPreference;

.field private mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

.field private mUsageAmount:Landroid/support/v7/preference/Preference;

.field private mUsageSummary:Landroid/widget/TextView;

.field private mlifetimeMessenger:Landroid/os/Messenger;

.field private rilHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/settings/datausage/DataUsageList;)Landroid/support/v7/preference/PreferenceGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/widget/ChartDataUsageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCHNChart:Lcom/android/settings/widget/ChartDataUsageView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/ChartDataUsagePreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settingslib/net/ChartData;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/settings/datausage/DataUsageList;)Lcom/android/settings/datausage/CycleAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/settings/datausage/DataUsageList;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/settings/datausage/DataUsageList;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinnerPosition:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/settings/datausage/DataUsageList;)Landroid/net/INetworkStatsSession;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/settings/datausage/DataUsageList;)Landroid/support/v7/preference/Preference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic -get9()I
    .locals 1

    sget v0, Lcom/android/settings/datausage/DataUsageList;->sCycle:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/datausage/DataUsageList;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/settings/datausage/DataUsageList;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinnerPosition:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/settings/datausage/DataUsageList;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageList;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic -set4(I)I
    .locals 0

    sput p0, Lcom/android/settings/datausage/DataUsageList;->sCycle:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/settings/datausage/DataUsageList;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageList;->getTimeData(II)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/datausage/DataUsageList;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->resetTimeData(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/settings/datausage/DataUsageList;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->setSummaryfortimedata([B)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/settings/datausage/DataUsageList;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->showDialog(I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/settings/datausage/DataUsageList;Lcom/android/settingslib/AppItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataUsageList;->startAppDataUsage(Lcom/android/settingslib/AppItem;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateBody()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateDetailData()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/settings/datausage/DataUsageList;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updatePolicy()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/android/settings/datausage/DataUsageList;->CPU_COUNT:I

    sget v0, Lcom/android/settings/datausage/DataUsageList;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/android/settings/datausage/DataUsageList;->CORE_POOL_SIZE:I

    sget v0, Lcom/android/settings/datausage/DataUsageList;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/settings/datausage/DataUsageList;->MAXIMUM_POOL_SIZE:I

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/android/settings/datausage/DataUsageList;->sWorkQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/android/settings/datausage/DataUsageList;->CORE_POOL_SIZE:I

    sget v3, Lcom/android/settings/datausage/DataUsageList;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/android/settings/datausage/DataUsageList;->sWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/android/settings/datausage/DataUsageList;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$1;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iput v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinnerPosition:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mServiceMessenger:Landroid/os/Messenger;

    iput-boolean v1, p0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$2;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCHNChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$3;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$4;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$4;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$5;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$5;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$6;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$6;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$7;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$7;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$8;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$8;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->rilHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mlifetimeMessenger:Landroid/os/Messenger;

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$9;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$9;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$10;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$10;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalSentListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private static accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settingslib/AppItem;",
            ">;",
            "Landroid/net/NetworkStats$Entry;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settingslib/AppItem;",
            ">;J)J"
        }
    .end annotation

    iget v1, p2, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/AppItem;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/AppItem;

    invoke-direct {v0, p0}, Lcom/android/settingslib/AppItem;-><init>(I)V

    iput p3, v0, Lcom/android/settingslib/AppItem;->category:I

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/AppItem;->addUid(I)V

    iget-wide v2, v0, Lcom/android/settingslib/AppItem;->total:J

    iget-wide v4, p2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, p2, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/settingslib/AppItem;->total:J

    iget-wide v2, v0, Lcom/android/settingslib/AppItem;->total:J

    invoke-static {p5, p6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method private applyNoCapsAttributeForTitle(Landroid/app/Activity;)V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "right_pane_toolbar"

    const-string/jumbo v5, "id"

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setAllCaps(Z)V

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    new-instance v2, Lcom/android/settings/datausage/DataUsageList$14;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/DataUsageList$14;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "action_bar"

    const-string/jumbo v5, "id"

    const-string/jumbo v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method

.method private connectToRilService_lifetime()V
    .locals 4

    const-string/jumbo v1, "DataUsage"

    const-string/jumbo v2, "connect To Secphone service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sec.phone"

    const-string/jumbo v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private getTimeData(II)V
    .locals 6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " getOemData with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/datausage/DataUsageList;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getOemData(int, int).. exception occured during operation"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;)Z
    .locals 10

    const/4 v8, 0x0

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_0

    return v8

    :cond_0
    const/4 v1, 0x1

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v7

    const/4 v9, 0x5

    if-ne v7, v9, :cond_1

    const/4 v7, 0x1

    :goto_1
    and-int/2addr v1, v7

    goto :goto_0

    :cond_1
    move v7, v8

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    if-eqz v7, :cond_3

    move v2, v1

    :goto_2
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 4

    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "request"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {p2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mlifetimeMessenger:Landroid/os/Messenger;

    iput-object v2, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v2, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "DataUsage"

    const-string/jumbo v3, "mServiceMessenger is null. Do nothing."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private resetTimeData(I)V
    .locals 7

    const/16 v6, 0xb

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x51

    :try_start_0
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0xb

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    if-nez p1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v3, "DataUsage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " resetTimeData with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/settings/datausage/DataUsageList;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    return-void

    :cond_0
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    return-void
.end method

.method private setSummaryfortimedata([B)V
    .locals 14

    const-wide/16 v12, 0x0

    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v9}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v0

    invoke-virtual {p0, p1, v9, v10}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v6

    invoke-virtual {p0, p1, v10, v11}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v2

    const/16 v8, 0x18

    invoke-virtual {p0, p1, v11, v8}, Lcom/android/settings/datausage/DataUsageList;->byteToLong([BII)J

    move-result-wide v4

    const-string/jumbo v8, "DataUsage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setSummaryfortimedata :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalReceive:Lcom/samsung/android/settings/datausage/MTRPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v0, v1}, Lcom/android/settings/datausage/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/datausage/MTRPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalSent:Lcom/samsung/android/settings/datausage/MTRPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9, v6, v7}, Lcom/android/settings/datausage/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/datausage/MTRPreference;->setSummary(Ljava/lang/CharSequence;)V

    cmp-long v8, v2, v12

    if-lez v8, :cond_0

    cmp-long v8, v4, v12

    if-lez v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/datausage/DataUsageList;->mLifetime:Lcom/samsung/android/settings/datausage/MTRPreference;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v9

    add-long v10, v2, v4

    invoke-static {v9, v10, v11}, Lcom/android/settings/datausage/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/settings/datausage/MTRPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private startAppDataUsage(Lcom/android/settingslib/AppItem;)V
    .locals 8

    const-string/jumbo v0, "DataUsage"

    const-string/jumbo v1, "startAppDataUsage()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v7, v6}, Lcom/android/settings/Utils;->sendSmartManagerEventLog(Landroid/content/Context;II)V

    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "app_item"

    invoke-virtual {v5, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v0, "network_template"

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1201bc

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method private updateBody()V
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->isAdded()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v5, v6}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/datausage/DataUsageList;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v7, 0x2

    invoke-virtual {v4, v7, v5, v6}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->invalidateOptionsMenu()V

    const v4, 0x7f060215

    invoke-virtual {v0, v4}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget v4, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v4, v4, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v5, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v2

    :cond_1
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    const/16 v7, 0x7f

    invoke-static {v7, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v4, v2, v1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setColors(II)V

    return-void
.end method

.method private updateDetailData()V
    .locals 30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKLookChart()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mCHNChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings/widget/ChartDataUsageView;->getInspectStart()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mCHNChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings/widget/ChartDataUsageView;->getInspectEnd()J

    move-result-wide v6

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v3, v3, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v11

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {v10, v4, v5, v6, v7}, Lcom/android/settingslib/net/SummaryForAllUidLoader;->buildArgs(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageList;->mSummaryCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    move-object/from16 v19, v0

    const/16 v26, 0x3

    move/from16 v0, v26

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v10, v1}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    if-eqz v11, :cond_2

    iget-wide v0, v11, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-wide/from16 v26, v0

    iget-wide v0, v11, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v28, v0

    add-long v16, v26, v28

    :goto_1
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v10, "data_usage_display_unit"

    const/16 v19, 0x2

    move/from16 v0, v19

    invoke-static {v3, v10, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const-string/jumbo v3, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v14, :cond_3

    const/4 v12, 0x1

    :goto_2
    if-eqz v12, :cond_4

    move-wide/from16 v0, v16

    invoke-static {v2, v14, v0, v1}, Lcom/android/settings/Utils;->getDataUsageFormatFileSize(Landroid/content/Context;IJ)Ljava/lang/String;

    move-result-object v18

    :goto_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKLookChart()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2, v4, v5, v6, v7}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v13

    const v15, 0x7f12074b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mUsageSummary:Landroid/widget/TextView;

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v18, v10, v19

    const/16 v19, 0x1

    aput-object v13, v10, v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v10}, Lcom/android/settings/datausage/DataUsageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mCHNChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings/widget/ChartDataUsageView;->getTotalInspectStart()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mCHNChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v3}, Lcom/android/settings/widget/ChartDataUsageView;->getTotalInspectEnd()J

    move-result-wide v20

    add-long v26, v24, v20

    const-wide/16 v28, 0x2

    div-long v22, v26, v28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mDateStart:Landroid/widget/TextView;

    const v10, 0x10010

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1, v10}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mDateMid:Landroid/widget/TextView;

    const v10, 0x10010

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1, v10}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mDateEnd:Landroid/widget/TextView;

    const v10, 0x10010

    move-wide/from16 v0, v20

    invoke-static {v2, v0, v1, v10}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getInspectStart()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v3}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getInspectEnd()J

    move-result-wide v6

    goto/16 :goto_0

    :cond_2
    const-wide/16 v16, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_4
    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcom/android/settings/datausage/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/16 v19, 0x0

    aput-object v18, v10, v19

    const v19, 0x7f120757

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Lcom/android/settings/datausage/DataUsageList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4
.end method

.method private updatePolicy()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v3, v3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v4, 0x7f0a0334

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/datausage/DataUsageList;->isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0, v3}, Lcom/android/settings/datausage/DataUsageList;->isMobileDataAvailable(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKLookChart()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mCHNChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v3, v2}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mChartData:Lcom/android/settingslib/net/ChartData;

    invoke-virtual {v3, v2, v4}, Lcom/android/settings/datausage/CycleAdapter;->updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settingslib/net/ChartData;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x1020004

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f13033d

    invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    const v3, 0x7f121319

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/DataUsageList;->setEmptyView(Landroid/view/View;)V

    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateDetailData()V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKLookChart()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mCHNChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/ChartDataUsageView;->bindNetworkPolicy(Landroid/net/NetworkPolicy;)V

    :goto_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    invoke-virtual {v3, v5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setNetworkPolicy(Landroid/net/NetworkPolicy;)V

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;[I)V
    .locals 34

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v8, 0x0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v29

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v28

    const/16 v26, -0x1

    :try_start_0
    const-string/jumbo v6, "com.att.iqi"

    const/4 v12, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6, v12}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    :goto_0
    const/4 v5, 0x0

    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v31

    :goto_1
    const/16 v24, 0x0

    :goto_2
    move/from16 v0, v24

    move/from16 v1, v31

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    iget v6, v5, Landroid/net/NetworkStats$Entry;->uid:I

    move/from16 v0, v26

    if-ne v6, v0, :cond_2

    :cond_0
    :goto_3
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    :cond_1
    const/16 v31, 0x0

    goto :goto_1

    :cond_2
    iget v15, v5, Landroid/net/NetworkStats$Entry;->uid:I

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v32

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {v15}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-eqz v6, :cond_6

    new-instance v6, Landroid/os/UserHandle;

    move/from16 v0, v32

    invoke-direct {v6, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v29

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move/from16 v0, v32

    if-eq v0, v2, :cond_3

    invoke-static/range {v32 .. v32}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v3

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v8

    :cond_3
    invoke-static/range {v32 .. v32}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_0

    move v11, v15

    const/4 v14, 0x2

    :goto_4
    move-object v12, v4

    move-object v13, v5

    move-object v15, v7

    move-wide/from16 v16, v8

    invoke-static/range {v11 .. v17}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v8

    goto :goto_3

    :cond_4
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v25

    if-nez v25, :cond_5

    const/4 v11, -0x4

    const/4 v14, 0x2

    goto :goto_4

    :cond_5
    invoke-static/range {v32 .. v32}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v11

    const/4 v14, 0x0

    goto :goto_4

    :cond_6
    const/4 v6, -0x4

    if-eq v15, v6, :cond_7

    const/4 v6, -0x5

    if-ne v15, v6, :cond_8

    :cond_7
    move v11, v15

    const/4 v14, 0x2

    goto :goto_4

    :cond_8
    const/16 v6, -0x64

    if-eq v15, v6, :cond_7

    const/16 v6, 0x1391

    if-eq v15, v6, :cond_7

    const/16 v11, 0x3e8

    const/4 v14, 0x2

    goto :goto_4

    :cond_9
    invoke-static {v15}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move/from16 v0, v32

    if-ne v0, v6, :cond_a

    const/4 v6, -0x4

    if-eq v15, v6, :cond_0

    const/4 v6, -0x5

    if-eq v15, v6, :cond_0

    const/16 v6, 0x3e8

    if-eq v15, v6, :cond_0

    move v11, v15

    const/4 v14, 0x2

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move/from16 v18, v14

    move-object/from16 v19, v7

    move-wide/from16 v20, v8

    invoke-static/range {v15 .. v21}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v8

    goto/16 :goto_3

    :cond_a
    const/4 v6, -0x4

    if-eq v15, v6, :cond_0

    const/4 v6, -0x5

    if-eq v15, v6, :cond_0

    const/16 v6, 0x3e8

    if-eq v15, v6, :cond_0

    invoke-static/range {v32 .. v32}, Lcom/android/settingslib/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v17

    const/16 v20, 0x0

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v21, v7

    move-wide/from16 v22, v8

    invoke-static/range {v17 .. v23}, Lcom/android/settings/datausage/DataUsageList;->accumulate(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;ILjava/util/ArrayList;J)J

    move-result-wide v8

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v30, v0

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v6

    if-nez v6, :cond_11

    const/16 v24, 0x0

    :goto_5
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_11

    aget v15, p2, v24

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v32

    new-instance v6, Landroid/os/UserHandle;

    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-direct {v6, v12}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v29

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    :goto_6
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    :cond_d
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-nez v6, :cond_c

    :cond_e
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-static/range {v32 .. v32}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_c

    :cond_f
    invoke-virtual {v4, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/settingslib/AppItem;

    if-nez v27, :cond_10

    new-instance v27, Lcom/android/settingslib/AppItem;

    move-object/from16 v0, v27

    invoke-direct {v0, v15}, Lcom/android/settingslib/AppItem;-><init>(I)V

    const-wide/16 v12, -0x1

    move-object/from16 v0, v27

    iput-wide v12, v0, Lcom/android/settingslib/AppItem;->total:J

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v27

    iget v6, v0, Lcom/android/settingslib/AppItem;->key:I

    move-object/from16 v0, v27

    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_10
    const/4 v6, 0x1

    move-object/from16 v0, v27

    iput-boolean v6, v0, Lcom/android/settingslib/AppItem;->restricted:Z

    goto :goto_6

    :cond_11
    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    const/16 v24, 0x0

    :goto_7
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v24

    if-ge v0, v6, :cond_14

    const-wide/16 v12, 0x0

    cmp-long v6, v8, v12

    if-eqz v6, :cond_13

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/AppItem;

    iget-wide v12, v6, Lcom/android/settingslib/AppItem;->total:J

    const-wide/16 v20, 0x64

    mul-long v12, v12, v20

    div-long/2addr v12, v8

    long-to-int v0, v12

    move/from16 v19, v0

    :goto_8
    new-instance v16, Lcom/android/settings/datausage/AppDataUsagePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v17

    move/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/settingslib/AppItem;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    move-object/from16 v20, v0

    sget-object v21, Lcom/android/settings/datausage/DataUsageList;->sExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct/range {v16 .. v21}, Lcom/android/settings/datausage/AppDataUsagePreference;-><init>(Landroid/content/Context;Lcom/android/settingslib/AppItem;ILcom/android/settingslib/net/UidDetailProvider;Ljava/util/concurrent/ThreadPoolExecutor;)V

    new-instance v6, Lcom/android/settings/datausage/DataUsageList$13;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/settings/datausage/DataUsageList$13;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/settings/datausage/AppDataUsagePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v6

    if-eqz v6, :cond_12

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings/datausage/DataUsageList;->setGoToTopEnabled(Z)V

    :cond_12
    add-int/lit8 v24, v24, 0x1

    goto :goto_7

    :cond_13
    const/16 v19, 0x0

    goto :goto_8

    :cond_14
    return-void

    :catch_0
    move-exception v10

    goto/16 :goto_0
.end method

.method byteToLong([BII)J
    .locals 8

    const-wide/16 v2, 0x0

    array-length v1, p1

    if-ge v1, p3, :cond_0

    return-wide v2

    :cond_0
    add-int/lit8 v0, p3, -0x1

    :goto_0
    if-lt v0, p2, :cond_1

    const/16 v1, 0x8

    shl-long v4, v2, v1

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    add-long v2, v4, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-wide v2
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1bc8

    return v0
.end method

.method synthetic lambda$-com_android_settings_datausage_DataUsageList_11755(Landroid/view/View;)V
    .locals 6

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "network_template"

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-class v0, Lcom/android/settings/datausage/BillingCycleSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120376

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataUsageList;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->isBandwidthControlEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "DataUsage"

    const-string/jumbo v5, "No bandwidth control; leaving"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v4, v4, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v4}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v4, Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v4, v1}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    const v4, 0x7f150046

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageList;->addPreferencesFromResource(I)V

    const-string/jumbo v4, "usage_amount"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageAmount:Landroid/support/v7/preference/Preference;

    const-string/jumbo v4, "chart_data"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/datausage/ChartDataUsagePreference;

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mChart:Lcom/android/settings/datausage/ChartDataUsagePreference;

    const-string/jumbo v4, "apps_group"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mApps:Landroid/support/v7/preference/PreferenceGroup;

    const-string/jumbo v4, "DCM"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v4, "Wi-Fi"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/settings/datausage/DataUsageList;->applyNoCapsAttributeForTitle(Landroid/app/Activity;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v4, "sub_id"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    const-string/jumbo v4, "network_template"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkTemplate;

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-static {}, Lcom/android/settings/Utils;->isMetroPCS()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->connectToRilService_lifetime()V

    const-string/jumbo v4, "total_received_data"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/MTRPreference;

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalReceive:Lcom/samsung/android/settings/datausage/MTRPreference;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalReceive:Lcom/samsung/android/settings/datausage/MTRPreference;

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalReceivedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/datausage/MTRPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v4, "total_sent_data"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/MTRPreference;

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalSent:Lcom/samsung/android/settings/datausage/MTRPreference;

    iget-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mTotalSent:Lcom/samsung/android/settings/datausage/MTRPreference;

    iget-object v5, p0, Lcom/android/settings/datausage/DataUsageList;->mAlertTotalSentListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/datausage/MTRPreference;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string/jumbo v4, "lifetime_data"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageList;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/datausage/MTRPreference;

    iput-object v4, p0, Lcom/android/settings/datausage/DataUsageList;->mLifetime:Lcom/samsung/android/settings/datausage/MTRPreference;

    :goto_0
    return-void

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    :cond_2
    const-string/jumbo v4, "total_received_data"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageList;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "total_sent_data"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageList;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v4, "lifetime_data"

    invoke-virtual {p0, v4}, Lcom/android/settings/datausage/DataUsageList;->removePreference(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    const/4 v6, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageList;->mDateSetListener:Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog$OnDateSetListener;IIII)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DatePickerAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    invoke-virtual {v0}, Lcom/android/settingslib/net/UidDetailProvider;->clearCache()V

    iput-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mUidDetailProvider:Lcom/android/settingslib/net/UidDetailProvider;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    iget-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSecPhoneServiceConnectionTMB:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataUsageList;->mBound:Z

    const-string/jumbo v0, "DataUsage"

    const-string/jumbo v1, "onDestroy: unbindService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/DataUsageList;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageList;->updateBody()V

    new-instance v0, Lcom/android/settings/datausage/DataUsageList$12;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageList$12;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/datausage/DataUsageList$12;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0145

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->sendSmartManagerFlowLog(Landroid/content/Context;I)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x157

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    if-ne v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x155

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertFlowLog(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportKKLookChart()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d00b7

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageList;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v1, 0x7f0a0923

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mUsageSummary:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v1, 0x7f0a0171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartDataUsageView;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCHNChart:Lcom/android/settings/widget/ChartDataUsageView;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCHNChart:Lcom/android/settings/widget/ChartDataUsageView;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/ChartDataUsageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCHNChart:Lcom/android/settings/widget/ChartDataUsageView;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCHNChartListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->setListener(Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;)V

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v1, 0x7f0a0820

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDateStart:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v1, 0x7f0a0532

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDateMid:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v1, 0x7f0a02d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mDateEnd:Landroid/widget/TextView;

    const-string/jumbo v0, "usage_amount"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageList;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "data_operator_warning"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageList;->removePreference(Ljava/lang/String;)V

    const-string/jumbo v0, "chart_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageList;->removePreference(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v1, 0x7f0a0335

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageList;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f060247

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iput v4, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinnerPosition:I

    new-instance v0, Lcom/android/settings/datausage/CycleAdapter;

    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datausage/DataUsageList$11;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/DataUsageList$11;-><init>(Lcom/android/settings/datausage/DataUsageList;)V

    iget-object v3, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/datausage/DataUsageList;->setLoading(ZZ)V

    return-void

    :cond_0
    const v0, 0x7f0d0043

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/DataUsageList;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageList;->mHeader:Landroid/view/View;

    const v1, 0x7f0a0334

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/datausage/-$Lambda$UswT9sBSAAULwB2p2q15SYED200;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/-$Lambda$UswT9sBSAAULwB2p2q15SYED200;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
