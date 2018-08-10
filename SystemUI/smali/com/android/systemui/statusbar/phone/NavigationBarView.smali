.class public Lcom/android/systemui/statusbar/phone/NavigationBarView;
.super Landroid/widget/FrameLayout;
.source "NavigationBarView.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarView$1;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$H;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;,
        Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/FrameLayout;",
        "Lcom/android/systemui/plugins/PluginListener",
        "<",
        "Lcom/android/systemui/plugins/statusbar/phone/NavGesture;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccessibilityIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field protected mBackAltCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field protected mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field protected mBackAltLandCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field protected mBackAltLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field protected mBackCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field protected mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field protected mBackLandCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field protected mBackLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field protected final mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

.field protected final mButtonDispatchers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field protected mConfiguration:Landroid/content/res/Configuration;

.field protected mCurrentRotation:I

.field protected mCurrentView:Landroid/view/View;

.field private mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

.field protected mDisabledFlags:I

.field final mDisplay:Landroid/view/Display;

.field private mDivider:Lcom/android/systemui/stackdivider/Divider;

.field protected mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mDockedStackExists:Z

.field private mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

.field private mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

.field protected mHomeCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field protected mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field protected mImeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private final mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

.field private mInCarMode:Z

.field private mLayoutTransitionsEnabled:Z

.field mLongClickableAccessibilityButton:Z

.field protected mMenuIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field protected mNavigationIconHints:I

.field protected mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

.field private mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

.field protected mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

.field private mRecentsComponent:Lcom/android/systemui/RecentsComponent;

.field protected mRotatedViews:[Landroid/view/View;

.field mScreenOn:Z

.field mShowAccessibilityButton:Z

.field mShowMenu:Z

.field private final mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

.field private mUseCarModeUi:Z

.field mVertical:Z

.field private mWakeAndUnlocking:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NavigationBarView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const v5, 0x7f0a0216

    const v4, 0x7f0a0062

    const v3, 0x7f0a000c

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$H;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongClickableAccessibilityButton:Z

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

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v1, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v1, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a040e

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    const v2, 0x7f0a040e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a032d

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    const v2, 0x7f0a032d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    const v2, 0x7f0a0229

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    const v2, 0x7f0a0229

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v1, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

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

.method private getBackIcon(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0
.end method

.method private getBackIconWithAlt(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0
.end method

.method private getDrawable(Landroid/content/Context;Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, p4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;->create(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    return-object v0
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

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    const v3, 0x7f13000b

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    xor-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateCarMode(Landroid/content/res/Configuration;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget v3, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v3, 0xf

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    if-eq v0, v3, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mInCarMode:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCarMode(Z)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateRecentsIcon()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->reapplyDarkIntensity()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    goto :goto_0
.end method

.method private updateTaskSwitchHelper()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-interface {v1, v2, v0}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->setBarState(ZZ)V

    return-void

    :cond_1
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

.method public checkNaviKeyDisabled(Z)V
    .locals 0

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

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

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

    const-string/jumbo v3, "a11y"

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

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

.method public getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a0062

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/BarTransitions;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    return-object v0
.end method

.method public getButtonDispatchers()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/statusbar/phone/ButtonDispatcher;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method protected getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;
    .locals 1

    invoke-direct {p0, p1, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v0

    return-object v0
.end method

.method public getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a0216

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a0229

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    return-object v0
.end method

.method public getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a032d

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    const v1, 0x7f0a040e

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method protected inLockTask()Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

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

.method synthetic lambda$-com_android_systemui_statusbar_phone_NavigationBarView_23775(Ljava/lang/Boolean;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHandler:Lcom/android/systemui/statusbar/phone/NavigationBarView$H;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$Lambda$gG2VyGAj3XJhzfp82AsxsZthRjc$1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$gG2VyGAj3XJhzfp82AsxsZthRjc$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_phone_NavigationBarView_23799(Ljava/lang/Boolean;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedStackExists:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    return-void
.end method

.method public needsReorient(I)Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyScreenOn(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mScreenOn:Z

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;)V

    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    const-class v1, Lcom/android/systemui/plugins/statusbar/phone/NavGesture;

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCarMode(Landroid/content/res/Configuration;)Z

    move-result v0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_2

    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const-class v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->destroy()V

    :cond_0
    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    const v0, 0x7f0a037e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRotatedViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setButtonDispatchers(Landroid/util/SparseArray;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeSwitcherClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$gG2VyGAj3XJhzfp82AsxsZthRjc;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$Lambda$gG2VyGAj3XJhzfp82AsxsZthRjc;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/android/systemui/DockedStackExistsListener;->register(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onFinishedGoingToSleep()V
    .locals 0

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyguardOccludedChanged(Z)V
    .locals 0

    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/statusbar/phone/NavGesture;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onPluginConnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;Landroid/content/Context;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture;->getGestureHelper()Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/statusbar/phone/NavGesture;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/statusbar/phone/NavGesture;)V
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->destroy()V

    :cond_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

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

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public reorient()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f0a014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/DeadZone;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->setDeadZone(Lcom/android/systemui/statusbar/policy/DeadZone;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDeadZone:Lcom/android/systemui/statusbar/policy/DeadZone;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DeadZone;->setDisplayRotation(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->init()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateTaskSwitchHelper()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVertical(Z)V

    return-void
.end method

.method public sendGsimLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    return-void
.end method

.method public setAccessibilityButtonState(ZZ)V
    .locals 3

    const/4 v1, 0x4

    const/4 v0, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongClickableAccessibilityButton:Z

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setLongClickable(Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentsComponent:Lcom/android/systemui/RecentsComponent;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDivider:Lcom/android/systemui/stackdivider/Divider;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mGestureHelper:Lcom/android/systemui/plugins/statusbar/phone/NavGesture$GestureHelper;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarGestureHelper;->setComponents(Lcom/android/systemui/RecentsComponent;Lcom/android/systemui/stackdivider/Divider;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    :cond_0
    return-void
.end method

.method public setDisabledFlags(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    return-void
.end method

.method public setDisabledFlags(IZ)V
    .locals 9

    const/4 v7, 0x4

    const/4 v6, 0x0

    if-nez p2, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    if-ne v5, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    const/high16 v5, 0x200000

    and-int/2addr v5, p1

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    if-nez v5, :cond_4

    const/high16 v5, 0x1000000

    and-int/2addr v5, p1

    if-eqz v5, :cond_5

    const/4 v2, 0x1

    :goto_1
    const/high16 v5, 0x400000

    and-int/2addr v5, p1

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentView()Landroid/view/View;

    move-result-object v5

    const v8, 0x7f0a037b

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/LayoutTransition;->getTransitionListeners()Ljava/util/List;

    move-result-object v5

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v3, v5}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->inLockTask()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    xor-int/lit8 v5, v1, 0x1

    if-eqz v5, :cond_2

    const/4 v2, 0x0

    :cond_2
    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    move v5, v0

    :goto_3
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->checkNaviKeyDisabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v8

    if-eqz v0, :cond_9

    move v5, v7

    :goto_4
    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v8

    if-eqz v1, :cond_a

    move v5, v7

    :goto_5
    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    if-eqz v2, :cond_b

    :goto_6
    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

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
    move v5, v6

    goto :goto_3

    :cond_9
    move v5, v6

    goto :goto_4

    :cond_a
    move v5, v6

    goto :goto_5

    :cond_b
    move v7, v6

    goto :goto_6
.end method

.method public setLayoutDirection(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    return-void
.end method

.method public setLayoutTransitionsEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLayoutTransitionsEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

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

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    xor-int/lit8 v2, v2, 0x1

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
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-ne p1, v4, :cond_0

    return-void

    :cond_0
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    xor-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mTransitionListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->onBackAltCleared()V

    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    if-eqz v0, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackIconWithAlt(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRecentsIcon()V

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeCarModeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    if-nez v4, :cond_5

    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    if-eqz v2, :cond_6

    :goto_4
    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowMenu:Z

    invoke-virtual {p0, v3, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMenuIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowAccessibilityButton:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mLongClickableAccessibilityButton:Z

    invoke-virtual {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setAccessibilityButtonState(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getAccessibilityButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mAccessibilityIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisabledFlags:I

    invoke-virtual {p0, v3, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(IZ)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->reapplyDarkIntensity()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mUseCarModeUi:Z

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackIcon(ZZ)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;)V

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    const/4 v3, 0x4

    goto :goto_4
.end method

.method public setOnVerticalChangedListener(Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mOnVerticalChangedListener:Lcom/android/systemui/statusbar/phone/NavigationBarView$OnVerticalChangedListener;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mVertical:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->notifyVerticalChangedListener(Z)V

    return-void
.end method

.method public setPinButtonVisibility(Z)V
    .locals 0

    return-void
.end method

.method public setWakeAndUnlocking(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setUseFadingAnimations(Z)V

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mWakeAndUnlocking:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    return-void
.end method

.method public updateAlternativeOrderForTablet()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected updateCurrentView()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v4, v4, v0

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    aget-object v4, v4, v1

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateAlternativeOrderForTablet()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;

    if-ne v1, v2, :cond_2

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarInflaterView;->setAlternativeOrder(Z)V

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCurrentView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateLayoutTransitionsEnabled()V

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mCurrentRotation:I

    return-void
.end method

.method protected updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 7

    const v6, 0x7f0801f4

    iget v4, p2, Landroid/content/res/Configuration;->orientation:I

    iget v5, p3, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_0

    iget v4, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v4, v5, :cond_1

    :cond_0
    const v4, 0x7f0802fd

    const v5, 0x7f0802fe

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mDockedIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :cond_1
    iget v4, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v5, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v4, v5, :cond_2

    const v4, 0x7f0802f2

    const v5, 0x7f0802f4

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const v4, 0x7f0802f6

    const v5, 0x7f0802f8

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mBackAltLandIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const v4, 0x7f080301

    const v5, 0x7f080317

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const v4, 0x7f080324

    const v5, 0x7f080325

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRecentIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const v4, 0x7f08031e

    const v5, 0x7f08031f

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mMenuIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const v4, 0x7f0802f0

    const v5, 0x7f0802f1

    invoke-virtual {p0, p1, v4, v5}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mAccessibilityIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    const v4, 0x7f040094

    invoke-static {p1, v4}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v1

    const v4, 0x7f04014f

    invoke-static {p1, v4}, Lcom/android/settingslib/Utils;->getThemeAttr(Landroid/content/Context;I)I

    move-result v2

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, v3, v6, v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getDrawable(Landroid/content/Context;Landroid/content/Context;II)Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mImeIcon:Lcom/android/systemui/statusbar/policy/KeyButtonDrawable;

    :cond_2
    return-void
.end method

.method protected updateLayoutTransitionsEnabled()V
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

    const v4, 0x7f0a037b

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

.method public updatePinButtonVisibility()V
    .locals 0

    return-void
.end method

.method protected updateRotatedViews()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const v1, 0x7f0a043a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const v1, 0x7f0a043b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mRotatedViews:[Landroid/view/View;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateRotatedViewsForTablet()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    return-void
.end method

.method public updateRotatedViewsForTablet()V
    .locals 0

    return-void
.end method
