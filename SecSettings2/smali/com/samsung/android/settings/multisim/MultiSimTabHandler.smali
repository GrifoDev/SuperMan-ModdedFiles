.class public Lcom/samsung/android/settings/multisim/MultiSimTabHandler;
.super Ljava/lang/Object;
.source "MultiSimTabHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/multisim/MultiSimTabHandler$1;,
        Lcom/samsung/android/settings/multisim/MultiSimTabHandler$2;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mListView:Landroid/widget/ListView;

.field public mSimSlot:I

.field public mSubId:J

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private main_content2:Landroid/widget/FrameLayout;

.field private numSims:I

.field private tabInterface:Lcom/samsung/android/settings/multisim/MultiSimTabInterface;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/multisim/MultiSimTabHandler;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/multisim/MultiSimTabHandler;)Lcom/samsung/android/settings/multisim/MultiSimTabInterface;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->tabInterface:Lcom/samsung/android/settings/multisim/MultiSimTabInterface;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ApnSettings"

    sput-object v0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mSimSlot:I

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mSubId:J

    new-instance v0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler$1;-><init>(Lcom/samsung/android/settings/multisim/MultiSimTabHandler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    new-instance v0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler$2;-><init>(Lcom/samsung/android/settings/multisim/MultiSimTabHandler;)V

    iput-object v0, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    iput-object p1, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getEnabledSimCnt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->numSims:I

    sget-object v0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "numSims: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->numSims:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private getSimName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "select_name_1"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "select_name_2"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initSimInfo()V
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "simSlot"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "simSlot"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mSimSlot:I

    sget-object v1, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mSimSlot is set by intent"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget v1, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mSimSlot:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    aget v1, v1, v4

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mSubId:J

    sget-object v1, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSimSlot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mSimSlot:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mSubId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mSubId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in initSimInfo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    iget v2, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mSimSlot:I

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->setCurrentTab(I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getEnabledSimCnt()I

    move-result v1

    if-ne v1, v3, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v2, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "phone2_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    iput v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mSimSlot:I

    sget-object v1, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mSimSlot is set by slot2"

    invoke-static {v1, v2}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initTab()V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    const v4, 0x7f040186

    invoke-virtual {v3, v4}, Landroid/app/Activity;->setContentView(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    const v4, 0x1020012

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabHost;

    iput-object v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    const v4, 0x1020013

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TabWidget;

    iput-object v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mTabWidget:Landroid/widget/TabWidget;

    iget-object v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    const v4, 0x102000a

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    const v4, 0x7f1104a1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->main_content2:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    if-nez v3, :cond_0

    sget-object v3, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "tab host is null"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->setup()V

    iget-object v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    iget-object v4, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    iget-object v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->clearAllTabs()V

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->numSims:I

    if-ge v0, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/Utils;->isLocaleRTL()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    iget-object v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x1020006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    invoke-static {v3, v0}, Lcom/android/settings/Utils;->getSimIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public checkMultiSim()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget v2, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->numSims:I

    if-le v2, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->initTab()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->initSimInfo()V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v1, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnabledSimCnt()I
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "phone1_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "phone2_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_2

    const/4 v1, 0x1

    :goto_1
    const-string/jumbo v5, "ril.ICC_TYPE"

    const-string/jumbo v6, "0"

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "ril.ICC_TYPE"

    const-string/jumbo v6, "0"

    invoke-static {v5, v8, v6}, Lcom/android/settings/Utils;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    :goto_2
    sget-object v5, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "numSims: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->numSims:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settings/LogMsg;->out(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v4, 0x2

    goto :goto_2
.end method

.method public getSimSlot()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mSimSlot:I

    return v0
.end method

.method public getSubId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mSubId:J

    return-wide v0
.end method

.method public resume()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->main_content2:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->main_content2:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->main_content2:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setTabInteface(Lcom/samsung/android/settings/multisim/MultiSimTabInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/multisim/MultiSimTabHandler;->tabInterface:Lcom/samsung/android/settings/multisim/MultiSimTabInterface;

    return-void
.end method
