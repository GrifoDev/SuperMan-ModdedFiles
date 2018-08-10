.class public Lcom/android/systemui/stackdivider/DividerPanel;
.super Lcom/android/systemui/SystemUI;
.source "DividerPanel.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/bixby/PluginDividerPanel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerPanel$DockedStackListener;,
        Lcom/android/systemui/stackdivider/DividerPanel$H;,
        Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowEventListener;,
        Lcom/android/systemui/stackdivider/DividerPanel$UserSwitchObserver;
    }
.end annotation


# static fields
.field static mIsPairAppSupportLauncher:Z


# instance fields
.field private final CTSPKGNAME:Ljava/lang/String;

.field private final addCloseButtonRunnable:Ljava/lang/Runnable;

.field private mCloseView:Landroid/view/View;

.field private mCloseWindowManager:Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;

.field private mConfiguration:Landroid/content/res/Configuration;

.field private mCurrentUserId:I

.field private mDividerMinimized:Z

.field private mDividerVisible:Z

.field private final mH:Landroid/os/Handler;

.field private mHasPopupShown:I

.field private mHomeStackResizable:Z

.field private mIsSupportSnapWindow:Z

.field private mPopupIsShowing:Z

.field private mPopupView:Lcom/android/systemui/stackdivider/AppPairPopupView;

.field private mPopupWindowManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

.field private mShowCountForUser:I

.field private mShowTransientIfNeeded:Z

.field private mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

.field private mSnapViewMode:Z

.field private mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

.field private mTmpConfiguration:Landroid/content/res/Configuration;

.field private mTmpResources:Landroid/content/res/Resources;

.field private mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

.field private mVisible:Z

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

.field private final removeCloseButtonRunnable:Ljava/lang/Runnable;


# direct methods
.method static synthetic -set0(Lcom/android/systemui/stackdivider/DividerPanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mCurrentUserId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/stackdivider/DividerPanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mHasPopupShown:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/stackdivider/DividerPanel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mHomeStackResizable:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/stackdivider/DividerPanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mShowCountForUser:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/stackdivider/DividerPanel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mShowTransientIfNeeded:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/DividerPanel;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerPanel;->getSystemSetting(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/DividerPanel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerPanel;->postDividerVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/stackdivider/DividerPanel;ZJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/stackdivider/DividerPanel;->postDockedStackMinimizedChanged(ZJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/stackdivider/DividerPanel;->mIsPairAppSupportLauncher:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    const-string/jumbo v0, "android.wm.cts"

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->CTSPKGNAME:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mHomeStackResizable:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mShowTransientIfNeeded:Z

    new-instance v0, Lcom/android/systemui/stackdivider/-$Lambda$p7rw6iHBKIiesKqpWp-cIp4vsgk$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/-$Lambda$p7rw6iHBKIiesKqpWp-cIp4vsgk$4;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->addCloseButtonRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/-$Lambda$p7rw6iHBKIiesKqpWp-cIp4vsgk$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/-$Lambda$p7rw6iHBKIiesKqpWp-cIp4vsgk$5;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->removeCloseButtonRunnable:Ljava/lang/Runnable;

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupIsShowing:Z

    iput v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mHasPopupShown:I

    new-instance v0, Lcom/android/systemui/stackdivider/DividerPanel$H;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/DividerPanel$H;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    return-void
.end method

.method private addButtons(Landroid/content/res/Configuration;)V
    .locals 10

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v8, 0x7f0d00e8

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v6}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->getWindowShortLengthPixel()I

    move-result v5

    :goto_1
    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->getWindowLongLengthPixel()I

    move-result v0

    :goto_2
    invoke-virtual {v4, v7, v7, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v6, v7}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    const/4 v6, 0x1

    :goto_3
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewMode:Z

    invoke-virtual {v6, v7}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->notifySnapMode(Z)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v6, v7, v5, v0}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->add(Landroid/view/View;II)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    invoke-virtual {v6, v7}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->setWindowManager(Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;)V

    sget-boolean v6, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    iput-boolean v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mIsSupportSnapWindow:Z

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->getWindowLongLengthPixel()I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->getWindowShortLengthPixel()I

    move-result v0

    goto :goto_2

    :cond_3
    move v6, v7

    goto :goto_3
.end method

.method private addCloseButton()V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d00e7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mCloseView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mCloseView:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/stackdivider/-$Lambda$p7rw6iHBKIiesKqpWp-cIp4vsgk$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/stackdivider/-$Lambda$p7rw6iHBKIiesKqpWp-cIp4vsgk$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mCloseView:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/stackdivider/-$Lambda$p7rw6iHBKIiesKqpWp-cIp4vsgk$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/stackdivider/-$Lambda$p7rw6iHBKIiesKqpWp-cIp4vsgk$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mCloseView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->semSetHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mCloseWindowManager:Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mCloseView:Landroid/view/View;

    invoke-virtual {v1, v2, v0, v0}, Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;->add(Landroid/view/View;II)V

    return-void
.end method

.method private addPopupView(Z)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupWindowManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

    invoke-virtual {v1, p1}, Lcom/android/systemui/stackdivider/AppPairPopupManager;->addAndGetPopupView(Z)Lcom/android/systemui/stackdivider/AppPairPopupView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupView:Lcom/android/systemui/stackdivider/AppPairPopupView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DividerPanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Making mPopupView failed. :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addSnapView(ZILandroid/graphics/Rect;ILjava/lang/String;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->add(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerSnapView;->setWindowManager(Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-virtual {v0, p4}, Lcom/android/systemui/stackdivider/DividerSnapView;->initGuideViewSize(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-virtual {v0, p1, p2, p3, p5}, Lcom/android/systemui/stackdivider/DividerSnapView;->makeVisible(ZILandroid/graphics/Rect;Ljava/lang/String;)V

    return-void
.end method

.method private addSnapView(ZILandroid/graphics/Rect;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DividerPanel;->addSnapView(ZILandroid/graphics/Rect;ILjava/lang/String;)V

    return-void
.end method

.method private checkHideCondition()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->DUAL_DISPLAY_FULLVIEW_MODE:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private endSnapMode()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const-string/jumbo v2, "finish"

    const/4 v3, 0x0

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v4, v2}, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method private getSystemSetting(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mCurrentUserId:I

    const/4 v2, 0x0

    invoke-static {v0, p1, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getWindowLongLengthPixel()I
    .locals 11

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpConfiguration:Landroid/content/res/Configuration;

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    const/4 v5, 0x1

    :goto_0
    if-nez v5, :cond_2

    sget-boolean v4, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    :goto_1
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    sget-boolean v3, Lcom/android/systemui/stackdivider/DividerPanel;->mIsPairAppSupportLauncher:Z

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    const v10, 0x7f0703f1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v1, v9

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    const v10, 0x7f0703f7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v0, v9

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    const v10, 0x7f0703fa

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    int-to-float v7, v9

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v9, v1

    add-float v10, v9, v0

    if-eqz v4, :cond_3

    add-float v9, v1, v0

    :goto_2
    add-float/2addr v10, v9

    if-eqz v2, :cond_4

    add-float v9, v1, v0

    :goto_3
    add-float/2addr v9, v10

    if-eqz v3, :cond_0

    add-float v8, v1, v0

    :cond_0
    add-float/2addr v8, v9

    add-float v6, v8, v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v8, v6

    float-to-int v8, v8

    return v8

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    move v9, v8

    goto :goto_2

    :cond_4
    move v9, v8

    goto :goto_3
.end method

.method private getWindowShortLengthPixel()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    const v1, 0x7f0703fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private initSnapViewWindow()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0044

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    :cond_0
    return-void
.end method

.method static synthetic lambda$-com_android_systemui_stackdivider_DividerPanel_18983()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method static synthetic lambda$-com_android_systemui_stackdivider_DividerPanel_19654()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->send(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method private postDividerVisibilityChanged(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->checkHideCondition()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    new-instance v1, Lcom/android/systemui/stackdivider/-$Lambda$p7rw6iHBKIiesKqpWp-cIp4vsgk;

    invoke-direct {v1}, Lcom/android/systemui/stackdivider/-$Lambda$p7rw6iHBKIiesKqpWp-cIp4vsgk;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private postDockedStackMinimizedChanged(ZJ)V
    .locals 6

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->checkHideCondition()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const-string/jumbo v2, "finish"

    const/4 v3, 0x0

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/stackdivider/-$Lambda$p7rw6iHBKIiesKqpWp-cIp4vsgk$1;

    invoke-direct {v1}, Lcom/android/systemui/stackdivider/-$Lambda$p7rw6iHBKIiesKqpWp-cIp4vsgk$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mHomeStackResizable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->addCloseButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->addCloseButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->removeCloseButtonRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private putSystemSetting(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mCurrentUserId:I

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private registerUserSwitchObserver()V
    .locals 4

    new-instance v1, Lcom/android/systemui/stackdivider/DividerPanel$UserSwitchObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/stackdivider/DividerPanel$UserSwitchObserver;-><init>(Lcom/android/systemui/stackdivider/DividerPanel;Lcom/android/systemui/stackdivider/DividerPanel$UserSwitchObserver;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const-string/jumbo v3, "DividerPanel"

    invoke-interface {v2, v1, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "DividerPanel"

    const-string/jumbo v3, "Error register UserSwitchObserver for AppPairPopupManager"

    invoke-static {v2, v3, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private removeButtons()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->remove()V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mVisible:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupWindowManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupWindowManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/AppPairPopupManager;->remove()V

    iput-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupIsShowing:Z

    :cond_0
    return-void
.end method

.method private removeCloseButton()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mCloseWindowManager:Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;->remove()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mCloseView:Landroid/view/View;

    return-void
.end method

.method private removeSnapView()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->remove()V

    :cond_0
    return-void
.end method

.method private updateIfNeeded()V
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/systemui/stackdivider/DividerPanel;->mIsPairAppSupportLauncher:Z

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->isPairAppSupportLauncher()Z

    move-result v2

    if-eq v1, v2, :cond_0

    sget-boolean v1, Lcom/android/systemui/stackdivider/DividerPanel;->mIsPairAppSupportLauncher:Z

    xor-int/lit8 v1, v1, 0x1

    sput-boolean v1, Lcom/android/systemui/stackdivider/DividerPanel;->mIsPairAppSupportLauncher:Z

    const/4 v0, 0x1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mIsSupportSnapWindow:Z

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eq v1, v2, :cond_1

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mIsSupportSnapWindow:Z

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->removeButtons()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/stackdivider/DividerPanel;->addButtons(Landroid/content/res/Configuration;)V

    :cond_2
    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_stackdivider_DividerPanel-mthref-0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->addCloseButton()V

    return-void
.end method

.method synthetic -com_android_systemui_stackdivider_DividerPanel-mthref-1()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->removeCloseButton()V

    return-void
.end method

.method public canStartSnapView()Z
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningSnapTargetTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    if-nez v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isScreenPinningActive()Z

    move-result v0

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_3

    :cond_0
    const-string/jumbo v5, "SnapWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "canStartSnapView()  minimized = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", unResizeableTask = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ",  isScreenPinning = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v1, :cond_2

    const-string/jumbo v4, " no running task "

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " tid "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Lcom/android/systemui/SystemUI;->finalize()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public isSnapViewActivated()Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SnapWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "snapView exist mSnapView.getVisibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerSnapView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isSnapWindowRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewMode:Z

    return v0
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_DividerPanel_10259(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->showToast(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_DividerPanel_13381()V
    .locals 1

    const-class v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerPanel;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/Divider;->animateDividerHandle()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_stackdivider_DividerPanel_9823(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->dismissDockedStack()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "DOOF"

    const-string/jumbo v2, "MinimizedCloseButton"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/activity/AppTransitionFinishedEvent;)V
    .locals 6

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->checkHideCondition()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mShowCountForUser:I

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mShowTransientIfNeeded:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsActivityVisible()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mShowTransientIfNeeded:Z

    const-string/jumbo v2, "db_divider_option_buttons_counter"

    iget v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mShowCountForUser:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mShowCountForUser:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/stackdivider/DividerPanel;->putSystemSetting(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;)V
    .locals 8

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->isVisible()Z

    move-result v1

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mVisible:Z

    if-eq v4, v1, :cond_4

    if-eqz v1, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->checkHideCondition()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v2, "DividerPanel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requested visibility but cancelled by hide condition. divider visible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", minimized: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->updateIfNeeded()V

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->isTransient()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    invoke-virtual {v4, v3}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->setTouchable(Z)V

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->cancelAnimate()V

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->isAnimate()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v4, v3}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->animate(Z)V

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v4, v2}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->setVisibility(I)V

    iput-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mVisible:Z

    :cond_2
    iget v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mHasPopupShown:I

    if-nez v4, :cond_4

    sget-boolean v4, Lcom/android/systemui/stackdivider/DividerPanel;->mIsPairAppSupportLauncher:Z

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getPackageNameOfDockedStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v4, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v4, :cond_6

    :cond_3
    const-string/jumbo v2, "AppPairToolTip"

    const-string/jumbo v3, "DockedStackInfo or topActivity is null. or dockedStack\'s Top Activity is CTS activity"

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->setAlpha(F)V

    goto :goto_0

    :cond_6
    iget-object v4, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android.wm.cts"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    if-nez v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v6, :cond_7

    move v2, v3

    :cond_7
    invoke-direct {p0, v2}, Lcom/android/systemui/stackdivider/DividerPanel;->addPopupView(Z)V

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v2, v3}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->setNeedShowToolTip(Z)V

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    invoke-virtual {v3, v2}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->setTouchable(Z)V

    iget-boolean v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupIsShowing:Z

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/stackdivider/events/DividerPopupVisibleEvent;

    invoke-direct {v4, v2}, Lcom/android/systemui/stackdivider/events/DividerPopupVisibleEvent;-><init>(I)V

    invoke-virtual {v3, v4}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_a
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v3}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->cancelAnimate()V

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->isAnimate()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v3, v2}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->animate(Z)V

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    new-instance v4, Lcom/android/systemui/stackdivider/-$Lambda$p7rw6iHBKIiesKqpWp-cIp4vsgk$6;

    invoke-direct {v4, p0}, Lcom/android/systemui/stackdivider/-$Lambda$p7rw6iHBKIiesKqpWp-cIp4vsgk$6;-><init>(Ljava/lang/Object;)V

    const-wide/16 v6, 0xa7

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mVisible:Z

    goto :goto_1

    :cond_b
    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->setVisibility(I)V

    goto :goto_2
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerPopupVisibleEvent;)V
    .locals 10

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/events/DividerPopupVisibleEvent;->isVisible()Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/events/DividerPopupVisibleEvent;->isRemove()Z

    move-result v4

    const-string/jumbo v5, "AppPairToolTip"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mVisible = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mVisible:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", isVisible = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", needRemove = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mPopupIsShowing = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupIsShowing:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mHasPopupShown = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mHasPopupShown:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mVisible:Z

    if-eqz v5, :cond_0

    if-eqz v4, :cond_2

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mHasPopupShown:I

    if-eqz v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupWindowManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

    if-eqz v5, :cond_1

    const-string/jumbo v5, "AppPairToolTip"

    const-string/jumbo v6, "needRemove --> mPopupWindowManager.remove()"

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupIsShowing:Z

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupWindowManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/AppPairPopupManager;->remove()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v3, :cond_3

    sget-boolean v5, Lcom/android/systemui/stackdivider/DividerPanel;->mIsPairAppSupportLauncher:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupIsShowing:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x2

    new-array v0, v5, [I

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->getAppPairCoorAndRect([ILandroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupWindowManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/stackdivider/AppPairPopupManager;->calBubblePosition([ILandroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupWindowManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/AppPairPopupManager;->reSetBubbleSize()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupWindowManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/AppPairPopupManager;->reSetBubblePositionAndImage()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupWindowManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

    invoke-virtual {v5}, Lcom/android/systemui/stackdivider/AppPairPopupManager;->reSetCirclePosition()V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupWindowManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/stackdivider/AppPairPopupManager;->show(I)V

    const-string/jumbo v5, "db_apppair_tooltip_shown"

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/stackdivider/DividerPanel;->putSystemSetting(Ljava/lang/String;I)V

    const/4 v5, 0x1

    iput v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mHasPopupShown:I

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupIsShowing:Z

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v5, "AppPairToolTip"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onBusEvent(DividerPopupVisibleEvent) failed. :: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupView:Lcom/android/systemui/stackdivider/AppPairPopupView;

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupIsShowing:Z

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupIsShowing:Z

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupWindowManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/systemui/stackdivider/AppPairPopupManager;->show(I)V

    iget-object v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0xbb8

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;)V
    .locals 6

    const/4 v1, 0x1

    iget-boolean v0, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mVisible:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->initSnapViewWindow()V

    iget v0, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mInitSize:I

    if-eqz v0, :cond_0

    iget v2, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mSnapTarget:I

    iget-object v3, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mDockedRect:Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mInitSize:I

    iget-object v5, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mSnapCaller:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DividerPanel;->addSnapView(ZILandroid/graphics/Rect;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mSnapTarget:I

    iget-object v2, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mDockedRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mSnapCaller:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/systemui/stackdivider/DividerPanel;->addSnapView(ZILandroid/graphics/Rect;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->removeSnapView()V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mStart:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewMode:Z

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput v0, v1, Lcom/android/systemui/stackdivider/DividerSnapView;->mUnSnapReason:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    iget-boolean v1, p1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mStart:Z

    iget-boolean v2, p1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mSendToSerivce:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerSnapView;->startSnapMode(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewMode:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->notifySnapMode(Z)V

    :cond_0
    return-void

    :cond_1
    iget v0, p1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mReason:I

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->removeButtons()V

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerPanel;->addButtons(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    invoke-direct {v2, v4}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerSnapView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120a7e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->endSnapMode()V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->removeSnapView()V

    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    :cond_2
    return-void
.end method

.method public showSnapWindowGuideView(ILjava/lang/String;)V
    .locals 17

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120a77

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewMode:Z

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120a76

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120a7e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerSnapView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const-string/jumbo v3, "finish"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-direct {v2, v5, v6, v0, v3}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningSnapTargetTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v11

    if-eqz v11, :cond_4

    iget v1, v11, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    iget v1, v11, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsStack(I)Z

    move-result v9

    :goto_0
    if-eqz v11, :cond_7

    iget-boolean v1, v11, Landroid/app/ActivityManager$RunningTaskInfo;->supportsSplitScreenMultiWindow:Z

    xor-int/lit8 v15, v1, 0x1

    :goto_1
    invoke-virtual {v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isScreenPinningActive()Z

    move-result v10

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    if-nez v1, :cond_5

    if-nez v9, :cond_5

    if-nez v15, :cond_5

    if-nez v10, :cond_5

    if-nez v11, :cond_a

    :cond_5
    const-string/jumbo v2, "SnapWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " minimized "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v11, :cond_8

    const-string/jumbo v1, " no running task "

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v9, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120a78

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    :goto_3
    invoke-virtual {v14}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    return-void

    :cond_6
    const/4 v9, 0x1

    goto :goto_0

    :cond_7
    const/4 v15, 0x0

    goto :goto_1

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " tid "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v11, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120801

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerVisible:Z

    if-eqz v1, :cond_d

    iget v8, v11, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    const/4 v1, 0x3

    if-eq v8, v1, :cond_b

    const/4 v1, 0x1

    if-ne v8, v1, :cond_d

    :cond_b
    const/4 v1, 0x3

    if-ne v8, v1, :cond_c

    const/4 v12, 0x1

    :goto_4
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const-class v1, Lcom/android/systemui/stackdivider/Divider;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerPanel;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v1

    invoke-virtual {v1, v8, v4}, Lcom/android/systemui/stackdivider/DividerView;->getFocusedStackRect(ILandroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-direct {v2, v3, v12, v4, v0}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void

    :cond_c
    const/4 v12, 0x2

    goto :goto_4

    :cond_d
    invoke-virtual {v13}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v16

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const/4 v2, 0x1

    const/4 v3, 0x3

    move/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;ILjava/lang/String;I)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_e
    return-void
.end method

.method public start()V
    .locals 6

    const/4 v5, 0x0

    new-instance v3, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    new-instance v3, Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mCloseWindowManager:Lcom/android/systemui/stackdivider/DividerCloseButtonWindowManager;

    new-instance v3, Lcom/android/systemui/stackdivider/AppPairPopupManager;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/stackdivider/AppPairPopupManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mPopupWindowManager:Lcom/android/systemui/stackdivider/AppPairPopupManager;

    const-class v3, Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-virtual {p0, v3, p0}, Lcom/android/systemui/stackdivider/DividerPanel;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/stackdivider/DividerPanel$DockedStackListener;

    invoke-direct {v0, p0, v5}, Lcom/android/systemui/stackdivider/DividerPanel$DockedStackListener;-><init>(Lcom/android/systemui/stackdivider/DividerPanel;Lcom/android/systemui/stackdivider/DividerPanel$DockedStackListener;)V

    new-instance v1, Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowEventListener;

    invoke-direct {v1, p0, v5}, Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowEventListener;-><init>(Lcom/android/systemui/stackdivider/DividerPanel;Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowEventListener;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    invoke-static {}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/systemui/stackdivider/multiwindow/MultiWindowManagerProxy;->registerMultiWindowEventListener(Lcom/samsung/android/multiwindow/IMultiWindowEventListener;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->registerUserSwitchObserver()V

    new-instance v3, Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mCurrentUserId:I

    const-string/jumbo v3, "db_apppair_tooltip_shown"

    invoke-direct {p0, v3}, Lcom/android/systemui/stackdivider/DividerPanel;->getSystemSetting(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mHasPopupShown:I

    const-string/jumbo v3, "db_divider_option_buttons_counter"

    invoke-direct {p0, v3}, Lcom/android/systemui/stackdivider/DividerPanel;->getSystemSetting(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mShowCountForUser:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v3}, Lcom/android/systemui/stackdivider/DividerPanel;->addButtons(Landroid/content/res/Configuration;)V

    return-void
.end method
