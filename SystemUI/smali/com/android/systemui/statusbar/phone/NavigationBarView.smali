.class public Lcom/android/systemui/statusbar/phone/NavigationBarView;
.super Landroid/widget/LinearLayout;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$1;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$2;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$3;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$H;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;
    }
.end annotation


# instance fields
.field private isKnoxDesktopEnabled:Z

.field private mBackAltCarModeIcon:Landroid/graphics/drawable/Drawable;

.field private mBackAltIcon:Landroid/graphics/drawable/Drawable;

.field private mBackAltLandCarModeIcon:Landroid/graphics/drawable/Drawable;

.field private mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

.field private mBackCarModeIcon:Landroid/graphics/drawable/Drawable;

.field private mBackIcon:Landroid/graphics/drawable/Drawable;

.field private mBackLandCarModeIcon:Landroid/graphics/drawable/Drawable;

.field private mBackLandIcon:Landroid/graphics/drawable/Drawable;

.field private final mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

.field private final mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

.field private final mButtonDisatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCarMode:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field mCurrentRemoteView:Landroid/view/View;

.field mCurrentView:Landroid/view/View;

.field private mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

.field mDisabledFlags:I

.field final mDisplay:Landroid/view/Display;

.field private mDockedIcon:Landroid/graphics/drawable/Drawable;

.field private mDockedStackExists:Z

.field private mGestureHelper:Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

.field private mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

.field private mHomeCarModeIcon:Landroid/graphics/drawable/Drawable;

.field private mHomeDefaultIcon:Landroid/graphics/drawable/Drawable;

.field private mImageIcon:Z

.field private mImeIcon:Landroid/graphics/drawable/Drawable;

.field private final mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

.field private mLayoutTransitionsEnabled:Z

.field private mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

.field private mMarqueeList:[[I

.field private mMarqueePos:I

.field private mMenuIcon:Landroid/graphics/drawable/Drawable;

.field mNaviBarRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;

.field mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

.field private mNavigationBarColorCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

.field private mNavigationBarIconcolor:I

.field private mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

.field mNavigationIconHints:I

.field private mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

.field private mRandom:Ljava/util/Random;

.field private mRecentIcon:Landroid/graphics/drawable/Drawable;

.field private mRightRemoteViewContainer:Landroid/widget/LinearLayout;

.field mRotatedViews:[Landroid/view/View;

.field mScreenOn:Z

.field mShowMenu:Z

.field private final mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

.field mVertical:Z

.field private mWakeAndUnlocking:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavigationBarController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Lcom/android/systemui/statusbar/phone/NavigationBarView$H;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/NavigationBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    new-array v0, v5, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCarMode:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    const/16 v0, 0x11

    new-array v0, v0, [[I

    filled-new-array {v4, v4, v4, v4}, [I

    move-result-object v1

    aput-object v1, v0, v4

    filled-new-array {v4, v4, v6, v5}, [I

    move-result-object v1

    aput-object v1, v0, v3

    filled-new-array {v4, v4, v3, v7}, [I

    move-result-object v1

    aput-object v1, v0, v6

    filled-new-array {v6, v4, v4, v5}, [I

    move-result-object v1

    aput-object v1, v0, v7

    filled-new-array {v3, v4, v4, v7}, [I

    move-result-object v1

    aput-object v1, v0, v5

    filled-new-array {v5, v4, v4, v6}, [I

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    filled-new-array {v7, v4, v4, v3}, [I

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    filled-new-array {v5, v6, v4, v4}, [I

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    filled-new-array {v7, v3, v4, v4}, [I

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    filled-new-array {v6, v5, v4, v4}, [I

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    filled-new-array {v3, v7, v4, v4}, [I

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    filled-new-array {v4, v5, v6, v4}, [I

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    filled-new-array {v4, v7, v3, v4}, [I

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    filled-new-array {v4, v6, v5, v4}, [I

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    filled-new-array {v4, v3, v7, v4}, [I

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    filled-new-array {v4, v4, v5, v6}, [I

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    filled-new-array {v4, v4, v7, v3}, [I

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeList:[[I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRandom:Ljava/util/Random;

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueePos:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImageIcon:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarColorCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$H;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNaviBarRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;

    iput v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarIconcolor:I

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImageIcon:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f1300c2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    const v2, 0x7f1300c2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f130018

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    const v2, 0x7f130018

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f130311

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    const v2, 0x7f130311

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f130261

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    const v2, 0x7f130261

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f130262

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    const v2, 0x7f130262

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarColorCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-array v2, v3, [Landroid/net/Uri;

    const-string/jumbo v3, "navigationbar_color"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Boolean;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isKnoxDesktopEnabled:Z

    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    return-void
.end method

.method private static dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "      "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string/jumbo v0, "null"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBackIcon(ZZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandCarModeIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackCarModeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getBackIconWithAlt(ZZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandCarModeIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltCarModeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private getResourceName(I)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "(unknown)"

    return-object v2

    :cond_0
    const-string/jumbo v2, "(null)"

    return-object v2
.end method

.method private getSettingIconColor()I
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v6, 0x0

    const v5, -0x777778

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_CUSTOM_NAVIBAR_BGCOLOR:Z

    if-nez v3, :cond_0

    return v5

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v3

    if-nez v3, :cond_1

    return v5

    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarColor()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b015e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    if-ne v1, v3, :cond_5

    :cond_3
    return v5

    :cond_4
    return v5

    :cond_5
    const/4 v3, 0x3

    new-array v2, v3, [F

    invoke-static {v1, v2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const-string/jumbo v3, "PhoneStatusBar/NavigationBarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSettingIconColor current Color H : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", S : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", V : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x777778

    aget v3, v2, v9

    float-to-double v4, v3

    const-wide v6, 0x3fc999999999999aL    # 0.2

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_6

    aget v3, v2, v8

    float-to-double v4, v3

    const-wide v6, 0x3fee666666666666L    # 0.95

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b016a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    return v0

    :cond_6
    aget v3, v2, v9

    float-to-double v4, v3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v4, v6

    if-gtz v3, :cond_7

    aget v3, v2, v8

    float-to-double v4, v3

    const-wide v6, 0x3fe999999999999aL    # 0.8

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b016b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_7
    aget v3, v2, v8

    float-to-double v4, v3

    const-wide v6, 0x3fa999999999999aL    # 0.05

    cmpl-double v3, v4, v6

    if-ltz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b016c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0169

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private inLockTask()Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->isInLockTaskMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private notifyVerticalChangedListener(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;->onVerticalChanged(Z)V

    :cond_0
    return-void
.end method

.method private postCheckForInvalidLayout(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    const/16 v1, 0x21ee

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setUseFadingAnimations(Z)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    const v3, 0x7f100207

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    return-void

    :cond_5
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1
.end method

.method private updateCarMode(Landroid/content/res/Configuration;)Z
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v2, 0xf

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCarMode:Z

    if-eqz v2, :cond_1

    if-eq v1, v3, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCarMode:Z

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ne v1, v3, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCarMode:Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateCarModeIcons(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f020204

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackCarModeIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackCarModeIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandCarModeIcon:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020206

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltCarModeIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltCarModeIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandCarModeIcon:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020209

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeCarModeIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 3

    const v2, 0x7f020203

    iget v0, p2, Landroid/content/res/Configuration;->orientation:I

    iget v1, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, v1, :cond_1

    :cond_0
    const v0, 0x7f020207

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isKnoxDesktopEnabled:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f02071b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f02071d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCarModeIcons(Landroid/content/Context;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020205

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020208

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f02020e

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f02020d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMenuIcon:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f020179

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateLayoutTransitionsEnabled()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    if-nez v3, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v3

    const v4, 0x7f1300d6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v1, v7}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {v1, v8}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {v1, v5}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    invoke-virtual {v1, v6}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v7}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    invoke-virtual {v1, v8}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    invoke-virtual {v1, v5}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    invoke-virtual {v1, v6}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_1
.end method

.method private updateRecentsIcon()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateTaskSwitchHelper()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->setBarState(ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static visibilityToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, "VISIBLE"

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "INVISIBLE"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "GONE"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public abortCurrentGesture()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->abortCurrentGesture()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string/jumbo v3, "NavigationBarView {"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "      this: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getVisibility()I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Point;->x:I

    if-gt v3, v4, :cond_0

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "      window: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getWindowVisibility()I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_2

    const-string/jumbo v3, " OFFSCREEN!"

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "      mCurrentView: id=%s (%dx%d) %s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getResourceName(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->visibilityToString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "      disabled=0x%08x vertical=%s menu=%s"

    new-array v5, v9, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "true"

    :goto_2
    aput-object v3, v5, v7

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "true"

    :goto_3
    aput-object v3, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v3, "back"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    const-string/jumbo v3, "home"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    const-string/jumbo v3, "rcnt"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    const-string/jumbo v3, "menu"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dumpButton(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/systemui/statusbar/phone/ButtonDispatcher;)V

    const-string/jumbo v3, "    }"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v3, ""

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v3, "false"

    goto :goto_2

    :cond_4
    const-string/jumbo v3, "false"

    goto :goto_3
.end method

.method public getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    const v1, 0x7f1300c2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getBarController()Lcom/android/systemui/statusbar/phone/NavigationBarController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    return-object v0
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    const v1, 0x7f130018

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    const v1, 0x7f130262

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    const v1, 0x7f130261

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    const v1, 0x7f130311

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public marqueeNavigationBar()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v8, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1, v7, v7, v7, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1, v7, v7, v7, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1, v7, v7, v7, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    if-nez v0, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueePos:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x11

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueePos:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeList:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueePos:I

    aget-object v2, v2, v3

    aget v2, v2, v7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeList:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueePos:I

    aget-object v3, v3, v4

    aget v3, v3, v9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeList:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueePos:I

    aget-object v4, v4, v5

    aget v4, v4, v8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeList:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueePos:I

    aget-object v5, v5, v6

    aget v5, v5, v10

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeList:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueePos:I

    aget-object v2, v2, v3

    aget v2, v2, v7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeList:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueePos:I

    aget-object v3, v3, v4

    aget v3, v3, v9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeList:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueePos:I

    aget-object v4, v4, v5

    aget v4, v4, v8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeList:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueePos:I

    aget-object v5, v5, v6

    aget v5, v5, v10

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeList:[[I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueePos:I

    aget-object v2, v2, v3

    aget v2, v2, v7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeList:[[I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueePos:I

    aget-object v3, v3, v4

    aget v3, v3, v9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeList:[[I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueePos:I

    aget-object v4, v4, v5

    aget v4, v4, v8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueeList:[[I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueePos:I

    aget-object v5, v5, v6

    aget v5, v5, v10

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->invalidate()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public notifyScreenOn(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenOn:Z

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCarMode(Landroid/content/res/Configuration;)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_1

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void
.end method

.method public onFinishInflate()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const v4, 0x7f13027e

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v6, 0x2

    aput-object v4, v5, v6

    aput-object v4, v3, v7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const v4, 0x7f13027f

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v4, v4, v8

    const/4 v5, 0x3

    aput-object v4, v3, v5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v3, v3, v7

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCurrentView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isKnoxDesktopEnabled:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :sswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v4, 0x7f1300c2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    goto :goto_2

    :sswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v4, 0x7f130018

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    goto :goto_2

    :sswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v4, 0x7f130311

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    goto :goto_2

    :sswitch_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v4, 0x7f130261

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    goto :goto_2

    :sswitch_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v4, 0x7f130262

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_1
    const v3, 0x7f130284

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_REMOTEVIEW:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v4, 0x7f130287

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    const v4, 0x7f130289

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    const v4, 0x7f13028a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNaviBarRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->setRemoteViewCallback(Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIGATIONBAR:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRandom:Ljava/util/Random;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMarqueePos:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->marqueeNavigationBar()V

    :cond_3
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$4;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    invoke-interface {v3, v4}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v3, "PhoneStatusBar/NavigationBarView"

    const-string/jumbo v4, "Failed registering docked stack exists listener"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f130018 -> :sswitch_1
        0x7f1300c2 -> :sswitch_0
        0x7f130261 -> :sswitch_3
        0x7f130262 -> :sswitch_4
        0x7f130311 -> :sswitch_2
    .end sparse-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onOpenThemeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImageIcon:Z

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    if-lez p1, :cond_1

    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    :cond_0
    const-string/jumbo v1, "sizeChanged"

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->postCheckForInvalidLayout(Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/DeadZone;->poke(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public reorient()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isKnoxDesktopEnabled:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCurrentView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_REMOTEVIEW:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v3, 0x7f130287

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    const v3, 0x7f130289

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    const v3, 0x7f13028a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRemoteView()V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v3, 0x7f130288

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/DeadZone;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->init()V

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v2, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    return-void
.end method

.method public setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    return-void
.end method

.method public setDisabledFlags(IZ)V
    .locals 10

    const/4 v8, 0x4

    const/4 v6, 0x0

    if-nez p2, :cond_0

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v7, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v7, 0x200000

    and-int/2addr v7, p1

    if-eqz v7, :cond_3

    const/4 v1, 0x1

    :goto_0
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCarMode:Z

    if-nez v7, :cond_4

    const/high16 v7, 0x1000000

    and-int/2addr v7, p1

    if-eqz v7, :cond_5

    const/4 v2, 0x1

    :goto_1
    const/high16 v7, 0x400000

    and-int/2addr v7, p1

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_6

    const/4 v0, 0x1

    :goto_2
    const/high16 v7, 0x2000000

    and-int/2addr v7, p1

    if-eqz v7, :cond_8

    const/4 v3, 0x1

    :goto_3
    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    if-eqz v0, :cond_9

    :goto_4
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setSlippery(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v7

    const v9, 0x7f1300d6

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->getTransitionListeners()Ljava/util/List;

    move-result-object v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-interface {v7, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v4, v7}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->inLockTask()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_a

    :cond_2
    :goto_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v9

    if-eqz v0, :cond_b

    move v7, v8

    :goto_6
    invoke-virtual {v9, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v9

    if-eqz v1, :cond_c

    move v7, v8

    :goto_7
    invoke-virtual {v9, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v7

    if-eqz v2, :cond_d

    :goto_8
    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    return-void

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    goto :goto_3

    :cond_9
    move v3, v6

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    :cond_b
    move v7, v6

    goto :goto_6

    :cond_c
    move v7, v6

    goto :goto_7

    :cond_d
    move v8, v6

    goto :goto_8
.end method

.method public setIconColor(I)V
    .locals 3

    const/4 v2, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarIconcolor:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarIconcolor:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->isDarkNavigation()Z

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setIconsLight(ZZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImageIcon:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->applyIconTint(IZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->applyIconRipple(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setIconsLight(ZZ)V
    .locals 4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isKnoxDesktopEnabled:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationBarIconcolor:I

    if-eqz v2, :cond_1

    return-void

    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const/4 p1, 0x0

    :cond_2
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz v2, :cond_4

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0160

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImageIcon:Z

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->applyIconTint(IZ)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->applyIconRipple(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getSettingIconColor()I

    move-result v1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    return-void
.end method

.method public setLayoutTransitionsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 3

    const/4 v1, 0x0

    if-nez p2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-ne v2, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_1
.end method

.method public setNavigationIconHints(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    return-void
.end method

.method public setNavigationIconHints(IZ)V
    .locals 9

    const/4 v6, 0x4

    const/4 v8, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v4, :cond_0

    return-void

    :cond_0
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_6

    const/4 v0, 0x1

    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_7

    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-eqz v0, :cond_8

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCarMode:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v4, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackIconWithAlt(ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->isDarkNavigation()Z

    move-result v4

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setIconsLight(ZZ)V

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCarMode:Z

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeCarModeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_3
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_a

    const/4 v2, 0x1

    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v7

    if-eqz v2, :cond_b

    move v4, v5

    :goto_5
    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v4, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMenuIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-eqz v4, :cond_5

    sget-boolean v4, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_REMOTEVIEW:Z

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v4

    if-nez v4, :cond_c

    const/4 v3, 0x1

    :goto_6
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-nez v2, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    move v5, v6

    :cond_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v4, v8}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    return-void

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->onBackAltCleared()V

    goto/16 :goto_1

    :cond_8
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCarMode:Z

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v4, v7}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackIcon(ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    :cond_b
    move v4, v6

    goto :goto_5

    :cond_c
    const/4 v3, 0x0

    goto :goto_6
.end method

.method public setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    return-void
.end method

.method public setSlippery(Z)V
    .locals 5

    const/high16 v4, 0x20000000

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isAttachedToWindow()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-nez v1, :cond_3

    if-eqz p1, :cond_3

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2, p0, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :cond_3
    if-eqz v1, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    return-void

    :cond_5
    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, -0x20000001

    and-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public setWakeAndUnlocking(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUseFadingAnimations(Z)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method public updateRemoteView()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getRightRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v2

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_1
    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method
