.class public Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;
.super Ljava/lang/Object;
.source "SecSummaryLayoutCHN.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$1;,
        Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;,
        Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;,
        Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$4;,
        Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$BytesEditorCHNFragment;
    }
.end annotation


# static fields
.field private static mInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

.field public static misSupportDataCompression:Z

.field private static sCurrentTabSubId:I

.field private static sInstance:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;


# instance fields
.field private mContext:Landroid/content/Context;

.field public mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

.field private mDataStatus:I

.field private mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

.field private mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

.field private mDataUsedNoLimit:Landroid/widget/TextView;

.field private mDataUsedNoLimit_land:Landroid/widget/TextView;

.field private final mDataUsgaeObserver:Landroid/database/ContentObserver;

.field private mDividerView:Landroid/view/View;

.field private mDividerView_land:Landroid/view/View;

.field private mDonut:Lcom/samsung/android/visualeffect/circle/CircleContainer;

.field private mDonut_land:Lcom/samsung/android/visualeffect/circle/CircleContainer;

.field private mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

.field private mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mGraphFreeColor:I

.field private mGraphLineColor:I

.field private mGraphOccupiedColor:I

.field private mIndexNum:I

.field private mMobileTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPieChartInfoLayout:Landroid/view/View;

.field private mPieChartInfoLayout_land:Landroid/view/View;

.field private mRamFree:Landroid/widget/TextView;

.field private mRamFreePercent:Landroid/widget/TextView;

.field private mRamFreePercent_land:Landroid/widget/TextView;

.field private mRamFree_land:Landroid/widget/TextView;

.field private mRelativeLayoutRaminfo:Landroid/view/View;

.field private mRelativeLayoutRaminfo_land:Landroid/view/View;

.field private mResInstance:Landroid/content/res/Resources;

.field private mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

.field private mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

.field private mSavedTV:Landroid/widget/TextView;

.field private mSavedTV_land:Landroid/widget/TextView;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mTabsContainer:Landroid/view/ViewGroup;

.field private mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

.field private mUseDataTotalPercent:Landroid/widget/TextView;

.field private mUseDataTotalPercent_land:Landroid/widget/TextView;

.field private mUsedText:Landroid/widget/TextView;

.field private mUsedText_land:Landroid/widget/TextView;

.field private mViewDetailButton:Landroid/widget/Button;

.field private mViewDetailButton_land:Landroid/widget/Button;

.field private mViewDetailListener:Landroid/view/View$OnClickListener;

.field private mtvTotalRam:Landroid/widget/TextView;

.field private mtvTotalRam_land:Landroid/widget/TextView;

.field public savedString:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Lcom/android/settingslib/net/DataUsageController;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    return-object v0
.end method

.method static synthetic -get2()Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubInfo(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(I)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setCurrentTabSubId(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->showErrorWarningDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sCurrentTabSubId:I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->misSupportDataCompression:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sInstance:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/DataUsageSummary;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->savedString:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$1;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsgaeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$2;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$3;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN$4;-><init>(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubInfoList:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubInfoList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initMobileTabTag(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mMobileTagMap:Ljava/util/Map;

    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    new-instance v0, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    return-void
.end method

.method private addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V
    .locals 8

    const/4 v7, 0x0

    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mMobileTagMap:Ljava/util/Map;

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {p1, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->hasReadyMobileRadio(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    const-string/jumbo v4, "SummaryPreferenceCHN"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "subInfo.getSimSlotIndex()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->toString()Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getSimName(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIndexNum:I

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x1020006

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {p1, v1}, Lcom/android/settings/Utils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v0, v4, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x41000000    # 8.0f

    mul-float/2addr v4, v0

    float-to-int v3, v4

    invoke-virtual {v2, v7, v7, v3, v7}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIndexNum:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIndexNum:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mMobileTagMap:Ljava/util/Map;

    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v7, 0x7f0b17c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v4, "SummaryPreferenceCHN"

    const-string/jumbo v5, "addMobileTab: subInfoList is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method public static colorToString(I)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "#%06X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0xffffff

    and-int/2addr v2, p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getActiveSubscriptionInfoCount(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    const-string/jumbo v2, "SummaryPreferenceCHN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "the ActiveSubscriptionInfoCount is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static getCurrentTabSubId()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sCurrentTabSubId:I

    return v0
.end method

.method private getCurrentTabSubInfo(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubInfoList:Ljava/util/List;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {p1, v5}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->hasReadyMobileRadio(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v2, v1, 0x1

    if-ne v1, v0, :cond_2

    return-object v3

    :cond_1
    return-object v6

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v0

    :cond_0
    invoke-static {p0, v0}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sInstance:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    return-object v0
.end method

.method public static getSAssistantBalanceResources(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 14

    const/4 v2, 0x0

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string/jumbo v12, "com.samsung.android.app.sreminder"

    const/16 v13, 0x80

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v11, "lifeservice.category.OP"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v11, "SummaryPreferenceCHN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "result:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v2, :cond_4

    const/4 v9, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string/jumbo v11, ","

    invoke-virtual {v2, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v9, v7

    :cond_0
    if-nez p1, :cond_1

    return-object v7

    :catch_0
    move-exception v4

    const-string/jumbo v11, "SummaryPreferenceCHN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to load meta-data, NullPointer: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    const-string/jumbo v11, "SummaryPreferenceCHN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to load meta-data, NameNotFound: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string/jumbo v12, "com.samsung.android.app.sreminder"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v10

    :goto_1
    new-array v8, v9, [Ljava/lang/String;

    if-eqz v10, :cond_3

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v9, :cond_3

    aget-object v11, v7, v5

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "string"

    const-string/jumbo v13, "com.samsung.android.app.sreminder"

    invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v10, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_2
    move-exception v3

    const-string/jumbo v11, "SummaryPreferenceCHN"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "com.samsung.android.app.sreminder name exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    return-object v8

    :cond_4
    const/4 v11, 0x0

    return-object v11
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;
    .locals 1

    invoke-static {p0, p1}, Lcom/android/settings/datausage/DataUsageSummary;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v0

    return-object v0
.end method

.method public static hasReadyMobileRadio(Landroid/content/Context;I)Z
    .locals 9

    const/4 v8, 0x0

    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v1

    :goto_1
    const-string/jumbo v5, "SummaryPreferenceCHN"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hasReadyMobileRadio: subId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " conn.isNetworkSupported(TYPE_MOBILE)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " isReady="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private initDonutLandLayout(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v6, "SummaryPreferenceCHN/LPF"

    const-string/jumbo v7, "initDonutLandLayout() orientation:"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v6, 0x7f11026d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout_land:Landroid/view/View;

    const v6, 0x7f11003b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRelativeLayoutRaminfo_land:Landroid/view/View;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v6

    if-eqz v6, :cond_3

    const v6, 0x7f110047

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    const v6, 0x7f110046

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    const v6, 0x7f110048

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit_land:Landroid/widget/TextView;

    :goto_0
    const v6, 0x7f110271

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFree_land:Landroid/widget/TextView;

    const v6, 0x7f110272

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mtvTotalRam_land:Landroid/widget/TextView;

    const v6, 0x7f11026f

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    const v6, 0x7f110273

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailButton_land:Landroid/widget/Button;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailButton_land:Landroid/widget/Button;

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v6

    if-eqz v6, :cond_4

    const v6, 0x7f110044

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_land:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRelativeLayoutRaminfo_land:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFree_land:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout_land:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v7, 0x7f0a02ff

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v5, v6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v7, 0x7f0a0578

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v7, 0x7f0a0577

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_land:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v6, v4, v3}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircle(II)V

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a060a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v6, v0, v0}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setLayoutDimension(II)V

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    const/4 v2, 0x1

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v6, v2}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDirectionRTL(Z)V

    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v6

    if-eqz v6, :cond_2

    const v6, 0x7f110270

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV_land:Landroid/widget/TextView;

    const v6, 0x7f11026e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/datasaving/SavedDataCircleView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageController:Lcom/android/settingslib/net/DataUsageController;

    iget-object v7, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setInfoData(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    sget-object v6, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    invoke-virtual {p0, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    return-void

    :cond_3
    const v6, 0x7f110039

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDividerView_land:Landroid/view/View;

    const v6, 0x7f11003a

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    const v6, 0x7f110038

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    goto/16 :goto_0

    :cond_4
    const v6, 0x7f110036

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iput-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    goto/16 :goto_1

    :cond_5
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v6, v8, v8, v5}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDonut(III)V

    goto/16 :goto_2

    :cond_6
    const/4 v2, 0x0

    goto :goto_3
.end method

.method private initDonutLayout(Landroid/view/View;)V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v5, "SummaryPreferenceCHN/LPF"

    const-string/jumbo v6, "initDonutLayout() orientation:"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f110266

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout:Landroid/view/View;

    const v5, 0x7f110034

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRelativeLayoutRaminfo:Landroid/view/View;

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f110041

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    const v5, 0x7f110040

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    const v5, 0x7f110042

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit:Landroid/widget/TextView;

    :goto_0
    const v5, 0x7f11026a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFree:Landroid/widget/TextView;

    const v5, 0x7f11026b

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mtvTotalRam:Landroid/widget/TextView;

    const v5, 0x7f110268

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    const v5, 0x7f11026c

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailButton:Landroid/widget/Button;

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mViewDetailListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f110269

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV:Landroid/widget/TextView;

    const v5, 0x7f110267

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/datasaving/SavedDataCircleView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    :cond_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f11003e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/circle/CircleContainer;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRelativeLayoutRaminfo:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFree:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v6, 0x7f0a02ff

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v6, 0x7f0a0578

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v6, 0x7f0a0577

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    invoke-virtual {v5, v3, v2}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setCircle(II)V

    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a060a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v5, v0, v0}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setLayoutDimension(II)V

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    const/4 v1, 0x1

    :goto_3
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v5, v1}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDirectionRTL(Z)V

    :cond_2
    return-void

    :cond_3
    const v5, 0x7f110032

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDividerView:Landroid/view/View;

    const v5, 0x7f110033

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    const v5, 0x7f110031

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    goto/16 :goto_0

    :cond_4
    const v5, 0x7f11002f

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iput-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    goto/16 :goto_1

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v5, v7, v7, v4}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDonut(III)V

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private initMobileTabTag(Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mobile"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private initTabView(Landroid/view/View;)V
    .locals 4

    const v1, 0x1020012

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    const v1, 0x7f110276

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabsContainer:Landroid/view/ViewGroup;

    const v1, 0x1020013

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabWidget;

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabWidget:Landroid/widget/TabWidget;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->setup()V

    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateTabs()V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubInfo(Landroid/content/Context;)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "SummaryPreferenceCHN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "the init current tab sub id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setCurrentTabSubId(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->setSubId(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    :cond_1
    return-void
.end method

.method private setColorOnStatus(F)V
    .locals 3

    const/4 v2, 0x0

    cmpg-float v1, p1, v2

    if-gtz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0d01aa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataStatus:I

    :goto_1
    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphOccupiedColor:I

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0d01d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphFreeColor:I

    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphLineColor:I

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iput v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphLineColor:I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0d01dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getWarningValue()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getWarningValue()F

    move-result v1

    sub-float v1, p1, v1

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0d01ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_2
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataStatus:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0d01e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0d01ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    :goto_3
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataStatus:I

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0d01d8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_3
.end method

.method private static setCurrentTabSubId(I)V
    .locals 0

    sput p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sCurrentTabSubId:I

    return-void
.end method

.method private setDonut(F)V
    .locals 12

    const-wide/16 v10, 0x1f4

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    const-string/jumbo v3, "SummaryPreferenceCHN/LPF"

    const-string/jumbo v4, "setDonut()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x2

    new-array v2, v3, [I

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v5, 0x7f0a054a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v0, v3

    new-instance v3, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    sub-float v4, v6, p1

    iget v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphOccupiedColor:I

    invoke-static {v5}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->colorToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;-><init>(FLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_0

    new-instance v3, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    iget v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphFreeColor:I

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->colorToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;-><init>(FLjava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iget v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphLineColor:I

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->colorToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setPie(Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v3, v7, v10, v11}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->detail(ZJ)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    iget v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mGraphLineColor:I

    invoke-static {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->colorToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setPie(Ljava/util/ArrayList;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_old_land:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    invoke-virtual {v3, v7, v10, v11}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->detail(ZJ)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    sub-float v4, v6, p1

    float-to-int v4, v4

    iget v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataStatus:I

    invoke-virtual {v3, v4, v5, v8}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDonut_land:Lcom/samsung/android/visualeffect/circle/CircleContainer;

    sub-float v4, v6, p1

    float-to-int v4, v4

    iget v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataStatus:I

    invoke-virtual {v3, v4, v5, v8}, Lcom/samsung/android/visualeffect/circle/CircleContainer;->setScore(IIZ)V

    return-void
.end method

.method private setTrafficText(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const v5, 0x7f0b0f01

    const/16 v3, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mtvTotalRam:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mtvTotalRam:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0b17ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getUsedTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mtvTotalRam_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mtvTotalRam_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0b17ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getUsedTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getUsedTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getUsedTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit_land:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getIsExceed()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v3, 0x7f0b0f02

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v3, 0x7f0b0f02

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFree:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTodayused()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    const v3, 0x7f0b0f00

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFree_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v3}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTodayused()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string/jumbo v3, ""

    aput-object v3, v2, v6

    const v3, 0x7f0b0f00

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDividerView_land:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsedNoLimit_land:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mRamFreePercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalTraffic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUseDataTotalPercent_land:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDividerView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDividerView_land:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getIsExceed()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->isPackagedSetted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0b0f03

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v2, 0x7f0b0f03

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mUsedText_land:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getRemainTraffic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private showErrorWarningDialog(Landroid/os/Bundle;)V
    .locals 4

    if-nez p1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;

    invoke-direct {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "titleResId"

    const v3, 0x7f0b0433

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "positiveResId"

    const v3, 0x7f0b042c

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "negativeResId"

    const v3, 0x7f0b0423

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "bodyResId"

    const v3, 0x7f0b0f0f

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string/jumbo v3, "wlan"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/ShowWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateSavedTvState()V
    .locals 9

    const v8, 0x7f0b0f12

    const/16 v1, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isDataCompressionEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "SummaryPreferenceCHN"

    const-string/jumbo v1, "updateSavedTvState "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getStartTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getEndTime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/datausage/DataSavingChnPreference;->getSavedBytesForAllUid(JJ)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/datausage/DataSavingChnPreference;->getUsageText(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->savedString:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->savedString:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV_land:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV_land:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV_land:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v7, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->savedString:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedTV_land:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTabs()V
    .locals 11

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v6}, Landroid/widget/TabHost;->clearAllTabs()V

    iput v8, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mIndexNum:I

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getActiveSubscriptionInfoCount(Landroid/content/Context;)I

    move-result v2

    const-string/jumbo v6, "SummaryPreferenceCHN"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "simCount"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->toString()Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    iget-object v9, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    if-le v2, v7, :cond_0

    move v6, v7

    :goto_1
    invoke-direct {p0, v9, v3, v6}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->addMobileTab(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Z)V

    goto :goto_0

    :cond_0
    move v6, v8

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v6}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v6

    if-nez v6, :cond_2

    const/4 v1, 0x1

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v6}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v6

    if-le v6, v7, :cond_3

    const/4 v0, 0x1

    :goto_3
    iget-object v6, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabWidget:Landroid/widget/TabWidget;

    if-eqz v0, :cond_4

    :goto_4
    invoke-virtual {v6, v8}, Landroid/widget/TabWidget;->setVisibility(I)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const/16 v8, 0x8

    goto :goto_4
.end method


# virtual methods
.method public changeLayoutOrientation(I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout_land:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout_land:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mPieChartInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public getIMSIBySoltId()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sCurrentTabSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v7

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "network_template"

    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v0, "sub_id"

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/datausage/DataUsageList;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v6, 0x7f0b1afa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v6, v4

    invoke-static/range {v0 .. v6}, Lcom/android/settings/Utils;->onBuildStartFragmentIntent(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ILjava/lang/CharSequence;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getSavedBytesByUid(I)J
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getStartTime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getEndTime()J

    move-result-wide v4

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/datausage/DataSavingChnPreference;->getSavedBytesByUid(IJJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    return-wide v0

    :catch_0
    move-exception v6

    const-string/jumbo v0, "SummaryPreferenceCHN"

    const-string/jumbo v1, "getSavedBytesByUid failed with exception "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    const-string/jumbo v0, "SummaryPreferenceCHN"

    const-string/jumbo v1, "mDataSavingService is nulll ,getSavedBytesByUid failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public initAutoCalibrationStatus()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_auto_calibration_result"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "SummaryPreferenceCHN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initAutoCalibrationStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v5, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_0
    const-string/jumbo v1, "SummaryPreferenceCHN"

    const-string/jumbo v2, "register the receiver again"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_auto_calibration_result"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_auto_calibration_result"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsgaeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "key_auto_calibration_result"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_1
.end method

.method public initDataSavingLayout()V
    .locals 5

    const-string/jumbo v3, "SummaryPreferenceCHN"

    const-string/jumbo v4, "initDataSavingLayout "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    iget-object v3, v3, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getIMSIBySoltId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    iget-object v3, v3, Lcom/android/settings/datausage/DataSavingChnPreference;->mDataSavingService:Lcom/samsung/android/datasaving/IDataSavingService;

    invoke-interface {v3, v0}, Lcom/samsung/android/datasaving/IDataSavingService;->setCurrentIMSI(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateSavedTvState()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updateSavedDataCircleView()V

    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string/jumbo v3, "SummaryPreferenceCHN"

    const-string/jumbo v4, "exception happen when Called mDataSavingService interface"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "SummaryPreferenceCHN"

    const-string/jumbo v4, "mDataSavingChnPreference is null "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public initView(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initTabView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initDonutLayout(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initDonutLandLayout(Landroid/view/View;)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabHost:Landroid/widget/TabHost;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportCHNSmartManager()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/settings/Utils;->isSupportAutoVerfiyTraffic()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v3}, Lcom/android/settings/Utils;->setAutoVerfiyTrafficEnable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "donnotshow_checked_flag"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/settings/Utils;->setAutoVerfiyTrafficEnable(Z)V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->startAutoCalibrationService(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initAutoCalibrationStatus()V

    :cond_1
    return-void
.end method

.method public isDataCompressionEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "opera_max_china_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public setDataSavingChnPreference(Lcom/android/settings/datausage/DataSavingChnPreference;)V
    .locals 2

    const-string/jumbo v0, "SummaryPreferenceCHN"

    const-string/jumbo v1, "setDataSavingChnPreference "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    return-void
.end method

.method public setInfoData(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .locals 0

    sput-object p1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mInfo:Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    return-void
.end method

.method public setInstance(Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;)V
    .locals 0

    sput-object p1, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->sInstance:Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;

    return-void
.end method

.method public showWarningDialog(Landroid/os/Bundle;Z)V
    .locals 6

    const-string/jumbo v3, "wlan"

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v1, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {v1, v4}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;-><init>(Lcom/android/settings/datausage/DataUsageSummary;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "titleResId"

    const v5, 0x7f0b0f09

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "positiveResId"

    const v5, 0x7f0b0431

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "negativeResId"

    const v5, 0x7f0b0432

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "bodyResId"

    const v5, 0x7f0b0f08

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "isneedsendsms"

    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->setArguments(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsageSummary:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-virtual {v4}, Lcom/android/settings/datausage/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/samsung/android/settings/datausage/trafficmanager/DoNotShowAgainDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_0
    return-void
.end method

.method public startAutoCalibrationService(I)V
    .locals 6

    const/4 v5, 0x2

    const-string/jumbo v2, "SummaryPreferenceCHN"

    const-string/jumbo v3, "startAutoCalibrationService()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.sm_cn"

    const-string/jumbo v4, "com.samsung.android.sm.enhancedatausage.AutoCalibrationService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string/jumbo v2, "sub_id"

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v2, "service_action"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    if-ne p1, v5, :cond_1

    :cond_0
    const-string/jumbo v2, "SummaryPreferenceCHN"

    const-string/jumbo v3, "register the observer"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "key_auto_calibration_result"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "key_auto_calibration_result"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataUsgaeObserver:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopAutoCalibrationService()V
    .locals 5

    const-string/jumbo v2, "SummaryPreferenceCHN"

    const-string/jumbo v3, "stopAutoCalibrationService()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.samsung.android.sm_cn"

    const-string/jumbo v4, "com.samsung.android.sm.enhancedatausage.AutoCalibrationService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updatePolicy()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->updatePolicy(IZ)V

    return-void
.end method

.method public updatePolicy(IZ)V
    .locals 14

    const/4 v9, 0x0

    :try_start_0
    iget-object v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "set_data_limit"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    :goto_0
    const-string/jumbo v10, "off"

    :try_start_1
    iget-object v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "data_warning_set"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    :goto_1
    const/4 v6, 0x0

    iget-object v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "restrict_data_check_box"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_2

    const/4 v6, 0x0

    :goto_2
    const/4 v7, 0x1

    iget-object v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "set_package_start_date_value"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const/4 v3, 0x0

    iget-object v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "switch_traffic_settings"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_3

    const/4 v3, 0x0

    :goto_3
    new-instance v4, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    iget-object v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-direct {v4, v11}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->setSubId(I)V

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    iget-object v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabTemplate(Landroid/content/Context;)Landroid/net/NetworkTemplate;

    move-result-object v8

    if-nez p2, :cond_0

    iget-object v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v11, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v8

    :cond_0
    iget-object v11, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v11}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v5

    new-instance v2, Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-direct {v2, v5}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    invoke-virtual {v2}, Lcom/android/settingslib/NetworkPolicyEditor;->read()V

    if-eqz v3, :cond_7

    const-string/jumbo v11, "max"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    :cond_1
    const-wide/16 v12, -0x1

    invoke-virtual {v2, v8, v12, v13}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    const-wide/16 v12, -0x1

    invoke-virtual {v2, v8, v12, v13}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    :goto_4
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    iget-object v0, v11, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {v2, v8, v7, v0}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v9, "max"

    goto/16 :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v10, "off"

    goto/16 :goto_1

    :cond_2
    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_3
    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const-string/jumbo v11, "off"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getWarningByte()J

    move-result-wide v12

    invoke-virtual {v2, v8, v12, v13}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    :goto_5
    if-eqz v6, :cond_6

    invoke-virtual {v4}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getlimiValue()J

    move-result-wide v12

    invoke-virtual {v2, v8, v12, v13}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_4

    :cond_5
    const-wide/16 v12, -0x1

    invoke-virtual {v2, v8, v12, v13}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_5

    :cond_6
    const-wide/16 v12, -0x1

    invoke-virtual {v2, v8, v12, v13}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_4

    :cond_7
    const-wide/16 v12, -0x1

    invoke-virtual {v2, v8, v12, v13}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    const-wide/16 v12, -0x1

    invoke-virtual {v2, v8, v12, v13}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_4
.end method

.method public updateSavedDataCircleView()V
    .locals 9

    const v8, 0x7f0a0300

    const/16 v5, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v1, "SummaryPreferenceCHN"

    const-string/jumbo v4, "updateSavedDataCircleView "

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isDataCompressionEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v4, "SummaryPreferenceCHN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mDataSavingChnPreference: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "mTrafficDataSummary: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v5, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mDataSavingChnPreference:Lcom/android/settings/datausage/DataSavingChnPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getStartTime()J

    move-result-wide v4

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getEndTime()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/android/settings/datausage/DataSavingChnPreference;->getSavedBytesForAllUid(JJ)J

    move-result-wide v4

    long-to-float v1, v4

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v2}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getTotalData()J

    move-result-wide v4

    long-to-float v2, v4

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v1, v2

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v3}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v4, 0x7f0a0301

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v5, 0x7f0a0302

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setCircleCenter(FF)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v4, 0x7f0a0560

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v4, 0x7f0d0124

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setPaintColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setRadius(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setPercent(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v1}, Lcom/samsung/android/datasaving/SavedDataCircleView;->invalidate()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v3}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v3, 0x7f0a0301

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v4, 0x7f0a0302

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setCircleCenter(FF)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v3, 0x7f0a0560

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    const v3, 0x7f0d0124

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setPaintColor(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    iget-object v2, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mResInstance:Landroid/content/res/Resources;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setRadius(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setPercent(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v1}, Lcom/samsung/android/datasaving/SavedDataCircleView;->invalidate()V

    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v3

    goto/16 :goto_0

    :cond_3
    move v2, v3

    goto/16 :goto_1

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mSavedDataCircleView_land:Lcom/samsung/android/datasaving/SavedDataCircleView;

    invoke-virtual {v1, v5}, Lcom/samsung/android/datasaving/SavedDataCircleView;->setVisibility(I)V

    goto :goto_2
.end method

.method public updateUI(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-static {}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->getCurrentTabSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->setSubId(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->updateDataInfomation()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setColorOnStatus(F)V

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->mTrafficDataSummary:Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/datausage/trafficmanager/TrafficDataSummary;->getFreePercent()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setDonut(F)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->setTrafficText(Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;)V

    invoke-static {}, Lcom/android/settings/Utils;->isSupportDataCompression()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/datausage/trafficmanager/SecSummaryLayoutCHN;->initDataSavingLayout()V

    :cond_1
    return-void
.end method
