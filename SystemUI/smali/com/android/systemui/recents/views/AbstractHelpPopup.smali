.class public Lcom/android/systemui/recents/views/AbstractHelpPopup;
.super Ljava/lang/Object;
.source "AbstractHelpPopup.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/systemui/recents/views/HelpViewAdapter;

.field private mBottomView:Landroid/widget/FrameLayout;

.field private mButton:Landroid/widget/Button;

.field mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mCurrentPage:I

.field private mHandler:Landroid/os/Handler;

.field private mHelpDialog:Landroid/app/AlertDialog;

.field private mHelpRootView:Landroid/view/ViewGroup;

.field private mIndicator:Lcom/android/systemui/recents/views/HelpIndicator;

.field mIsRTL:Z

.field private mKey:Ljava/lang/String;

.field mLastDeviceOrientation:I

.field private mResource:Landroid/content/res/Resources;

.field private mViewPager:Lcom/android/systemui/recents/views/HelpViewPager;

.field showRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/views/AbstractHelpPopup;)Lcom/android/systemui/recents/views/HelpViewAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mAdapter:Lcom/android/systemui/recents/views/HelpViewAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/recents/views/AbstractHelpPopup;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/recents/views/AbstractHelpPopup;)Lcom/android/systemui/recents/views/HelpViewPager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mViewPager:Lcom/android/systemui/recents/views/HelpViewPager;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const/4 v6, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHandler:Landroid/os/Handler;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/systemui/recents/views/-$Lambda$9fqIZcmEVoN_6ZRT17dMcUV23C0;

    invoke-direct {v3, p0}, Lcom/android/systemui/recents/views/-$Lambda$9fqIZcmEVoN_6ZRT17dMcUV23C0;-><init>(Ljava/lang/Object;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->showRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mResource:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/recents/misc/Utilities;->getAppConfiguration(Landroid/content/Context;)Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mLastDeviceOrientation:I

    new-instance v3, Lcom/android/systemui/recents/views/HelpViewAdapter;

    iget-object v4, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mLastDeviceOrientation:I

    invoke-direct {v3, v4, p0, v5}, Lcom/android/systemui/recents/views/HelpViewAdapter;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/views/AbstractHelpPopup;I)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mAdapter:Lcom/android/systemui/recents/views/HelpViewAdapter;

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d0173

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a0210

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpRootView:Landroid/view/ViewGroup;

    const v3, 0x7f0a0205

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mBottomView:Landroid/widget/FrameLayout;

    const v3, 0x7f0a020f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/HelpIndicator;

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mIndicator:Lcom/android/systemui/recents/views/HelpIndicator;

    const v3, 0x7f0a0213

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/HelpViewPager;

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mViewPager:Lcom/android/systemui/recents/views/HelpViewPager;

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mViewPager:Lcom/android/systemui/recents/views/HelpViewPager;

    iget-object v4, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mAdapter:Lcom/android/systemui/recents/views/HelpViewAdapter;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/HelpViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mViewPager:Lcom/android/systemui/recents/views/HelpViewPager;

    iget-object v4, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mIndicator:Lcom/android/systemui/recents/views/HelpIndicator;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/views/HelpViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mViewPager:Lcom/android/systemui/recents/views/HelpViewPager;

    invoke-virtual {v3, p0}, Lcom/android/systemui/recents/views/HelpViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    const v3, 0x7f0a0206

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    new-instance v4, Lcom/android/systemui/recents/views/AbstractHelpPopup$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/views/AbstractHelpPopup$1;-><init>(Lcom/android/systemui/recents/views/AbstractHelpPopup;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    const v5, 0x7f130103

    invoke-direct {v3, v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->create()V

    iget-object v3, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6, v6}, Landroid/view/Window;->setLayout(II)V

    const v3, 0x7f130108

    invoke-virtual {v0, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    const/16 v3, 0x500

    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method public static checkShowingCondition(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    const-string/jumbo v1, "RecentsFullscreenHelpPopup"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "PREF_KEY_SHOW"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0

    :cond_1
    const-string/jumbo v1, "RecentsTaskLockHelpPopup"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "PREF_KEY_SHOW"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_2
    return v0
.end method

.method private updateLayoutConfiguration(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mBottomView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mResource:Landroid/content/res/Resources;

    const v2, 0x7f07056b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mBottomView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addContent(IIII)Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;
    .locals 6

    const/4 v4, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIIII)Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    move-result-object v0

    return-object v0
.end method

.method public addContent(IIIII)Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;
    .locals 6

    new-instance v0, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;-><init>(IIIII)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->showRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 8

    const v3, 0x7f120965

    const v2, 0x7f08057b

    const v5, 0x7f120966

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mLastDeviceOrientation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->updateLayoutConfiguration(I)V

    iput-object p1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mKey:Ljava/lang/String;

    const-string/jumbo v0, "RecentsFullscreenHelpPopup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v0, :cond_3

    const v0, 0x7f12096f

    const v1, 0x7f080584

    invoke-virtual {p0, v0, v1, v3, v5}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIII)Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    move-result-object v0

    new-array v1, v6, [I

    aput v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->setHelpTextIconList([I)V

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableSnapView:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120986

    const v1, 0x7f080582

    const v2, 0x7f120969

    const v3, 0x7f12096a

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIII)Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    move-result-object v0

    new-array v1, v6, [I

    const v2, 0x7f08057a

    aput v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->setHelpTextIconList([I)V

    :cond_0
    const v1, 0x7f120970

    const v2, 0x7f08057f

    const v3, 0x7f120968

    const v4, 0x7f12096e

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIIII)Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v0, v0, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    if-ne v0, v6, :cond_5

    move v0, v6

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->updateDimMode(Z)V

    return-void

    :cond_2
    const-string/jumbo v0, "RecentsTaskLockHelpPopup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasNavigationBar:Z

    if-eqz v0, :cond_4

    const v0, 0x7f08057d

    :goto_2
    const v1, 0x7f120978

    const v2, 0x7f12096b

    const v3, 0x7f12096c

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIII)Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    move-result-object v0

    const v1, 0x7f08076f

    const v2, 0x7f080772

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->setHelpTextIconList([I)V

    goto :goto_0

    :cond_3
    const v0, 0x7f12096f

    const v1, 0x7f080583

    invoke-virtual {p0, v0, v1, v3, v5}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIII)Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    move-result-object v0

    new-array v1, v6, [I

    aput v2, v1, v7

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;->setHelpTextIconList([I)V

    const v1, 0x7f120970

    const v2, 0x7f08057e

    const v3, 0x7f120967

    const v4, 0x7f12096e

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->addContent(IIIII)Lcom/android/systemui/recents/views/AbstractHelpPopup$HelpContent;

    goto :goto_0

    :cond_4
    const v0, 0x7f08057c

    goto :goto_2

    :cond_5
    move v0, v7

    goto :goto_1
.end method

.method public isPageEnd(I)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mIsRTL:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_0

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_recents_views_AbstractHelpPopup_14742()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->showInternal()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->dismiss()V

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mLastDeviceOrientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mAdapter:Lcom/android/systemui/recents/views/HelpViewAdapter;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/HelpViewAdapter;->onConfigurationChanged(I)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v1}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->updateLayoutConfiguration(I)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mLastDeviceOrientation:I

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v0, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mIsRTL:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageChanged(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->isPageEnd(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    const v1, 0x7f120826

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    const v1, 0x7f12096d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    if-nez p3, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mCurrentPage:I

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mCurrentPage:I

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recents/views/AbstractHelpPopup;->onPageChanged(II)V

    iput p1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mCurrentPage:I

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.method protected setPersistentState(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mKey:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "PREF_KEY_SHOW"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public show()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->showRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->showRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public showInternal()V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mAdapter:Lcom/android/systemui/recents/views/HelpViewAdapter;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/HelpViewAdapter;->setContents(Ljava/util/ArrayList;)V

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mIsRTL:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mViewPager:Lcom/android/systemui/recents/views/HelpViewPager;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/HelpViewPager;->setCurrentItem(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mIndicator:Lcom/android/systemui/recents/views/HelpIndicator;

    iget-object v2, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/HelpIndicator;->setContentSize(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_3

    const v1, 0x800015

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    const v2, 0x7f12096d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getConfiguration()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->currentState:Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;

    iget v1, v1, Lcom/android/systemui/recents/RecentsConfiguration$RecentsActivityCurrentState;->mode:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mViewPager:Lcom/android/systemui/recents/views/HelpViewPager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/HelpViewPager;->setCurrentItem(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mButton:Landroid/widget/Button;

    const v2, 0x7f120826

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method public updateDimMode(Z)V
    .locals 3

    const/4 v2, 0x2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpRootView:Landroid/view/ViewGroup;

    const/high16 v1, -0x56000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method public updateSideMargin(I)V
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mBottomView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/AbstractHelpPopup;->mBottomView:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
