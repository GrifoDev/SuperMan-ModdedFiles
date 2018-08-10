.class public final Lcom/android/internal/widget/FloatingToolbar;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/FloatingToolbar$1;,
        Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    }
.end annotation


# static fields
.field public static final FLOATING_TOOLBAR_TAG:Ljava/lang/String; = "floating_toolbar"

.field private static final NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private static sIsDiscardTouch:Z

.field private static sIsMovingStarted:Z

.field private static sIsScrolling:Z

.field private static sIsSemType:Z


# instance fields
.field private final mContentRect:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mMenu:Landroid/view/Menu;

.field private mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mOrientation:I

.field private final mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

.field private final mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

.field private final mPreviousContentRect:Landroid/graphics/Rect;

.field private mShowingMenuItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestedWidth:I

.field private mWidthChanged:Z

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/FloatingToolbar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/FloatingToolbar;)I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientation:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/FloatingToolbar;)Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    return-object v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/widget/FloatingToolbar;->sIsDiscardTouch:Z

    return v0
.end method

.method static synthetic -get4()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/widget/FloatingToolbar;->sIsScrolling:Z

    return v0
.end method

.method static synthetic -get5()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/widget/FloatingToolbar;->sIsSemType:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/internal/widget/FloatingToolbar;I)I
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientation:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/internal/widget/FloatingToolbar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    return p1
.end method

.method static synthetic -set2(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/internal/widget/FloatingToolbar;->sIsDiscardTouch:Z

    return p0
.end method

.method static synthetic -set3(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/internal/widget/FloatingToolbar;->sIsMovingStarted:Z

    return p0
.end method

.method static synthetic -set4(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/internal/widget/FloatingToolbar;->sIsScrolling:Z

    return p0
.end method

.method static synthetic -wrap0(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 1

    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/FloatingToolbar;->createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 1

    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->createDivider(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Landroid/content/Context;Landroid/view/MenuItem;I)Landroid/view/View;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/FloatingToolbar;->createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;
    .locals 1

    invoke-static {p0}, Lcom/android/internal/widget/FloatingToolbar;->createPopupWindow(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6(Landroid/view/View;Landroid/view/MenuItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/internal/widget/FloatingToolbar;->updateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s;

    invoke-direct {v0}, Lcom/android/internal/widget/-$Lambda$nZD8NeHZxo4kFQHu5zIWiAfZj2s;-><init>()V

    sput-object v0, Lcom/android/internal/widget/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    sput-boolean v1, Lcom/android/internal/widget/FloatingToolbar;->sIsSemType:Z

    sput-boolean v1, Lcom/android/internal/widget/FloatingToolbar;->sIsMovingStarted:Z

    sput-boolean v1, Lcom/android/internal/widget/FloatingToolbar;->sIsDiscardTouch:Z

    sput-boolean v1, Lcom/android/internal/widget/FloatingToolbar;->sIsScrolling:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/content/Context;Landroid/view/Window;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    sget-object v0, Lcom/android/internal/widget/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/FloatingToolbar$1;-><init>(Lcom/android/internal/widget/FloatingToolbar;)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/android/internal/widget/FloatingToolbar;->applyDefaultTheme(Landroid/content/Context;Z)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mContext:Landroid/content/Context;

    sput-boolean p3, Lcom/android/internal/widget/FloatingToolbar;->sIsSemType:Z

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mWindow:Landroid/view/Window;

    new-instance v0, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    return-void
.end method

.method private static applyDefaultTheme(Landroid/content/Context;Z)Landroid/content/Context;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v3, v6, [I

    const v4, 0x1110053

    aput v4, v3, v5

    invoke-virtual {p0, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const v2, 0x1030237

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p1, :cond_0

    const v2, 0x103012b

    :cond_0
    new-instance v3, Landroid/view/ContextThemeWrapper;

    invoke-direct {v3, p0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v3

    :cond_1
    const v2, 0x1030224

    goto :goto_0
.end method

.method private static createContentContainer(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x2

    sget-boolean v3, Lcom/android/internal/widget/FloatingToolbar;->sIsSemType:Z

    if-eqz v3, :cond_0

    const v2, 0x1090141

    :goto_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string/jumbo v3, "floating_toolbar"

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    sget-boolean v3, Lcom/android/internal/widget/FloatingToolbar;->sIsSemType:Z

    if-nez v3, :cond_1

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    :goto_1
    return-object v1

    :cond_0
    const v2, 0x1090061

    goto :goto_0

    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {v3, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setClipToOutline(Z)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private static createDivider(Landroid/content/Context;)Landroid/view/View;
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v6, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v0, v4

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    mul-int/lit8 v4, v0, 0xa

    mul-int/lit8 v5, v0, 0xa

    invoke-virtual {v3, v7, v4, v7, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginsRelative(IIII)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    iget v4, v4, Landroid/util/TypedValue;->data:I

    new-array v5, v6, [I

    const v6, 0x1110035

    aput v6, v5, v7

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1, v7, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setFocusable(Z)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-object v2
.end method

.method private static createEnterAnimation(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v5, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v6

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x42

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0
.end method

.method private static createExitAnimation(Landroid/view/View;ILandroid/animation/Animator$AnimatorListener;)Landroid/animation/AnimatorSet;
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v5, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v6

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    invoke-virtual {v0, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private static createMenuItemButton(Landroid/content/Context;Landroid/view/MenuItem;I)Landroid/view/View;
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090062

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-static {v0, p1, p2}, Lcom/android/internal/widget/FloatingToolbar;->updateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;I)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->semSetHoverPopupType(I)V

    return-object v0
.end method

.method private static createPopupWindow(Landroid/view/ViewGroup;)Landroid/widget/PopupWindow;
    .locals 5

    const/4 v4, -0x2

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1
.end method

.method private doShow()V
    .locals 4

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenu:Landroid/view/Menu;

    invoke-direct {p0, v1}, Lcom/android/internal/widget/FloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/FloatingToolbar;->tidy(Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/android/internal/widget/FloatingToolbar;->isCurrentlyShowing(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->dismiss()V

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    iget v3, p0, Lcom/android/internal/widget/FloatingToolbar;->mSuggestedWidth:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->layoutMenuItems(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;I)V

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v1}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->show(Landroid/graphics/Rect;)V

    :cond_2
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPreviousContentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    iget-object v2, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->updateCoordinates(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lcom/android/internal/widget/FloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method private isCurrentlyShowing(Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)Z"
        }
    .end annotation

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_1

    :cond_0
    return v6

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_4

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/internal/widget/FloatingToolbar;->mShowingMenuItems:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    if-ne v4, v5, :cond_2

    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-interface {v2}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_2

    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v4

    invoke-interface {v2}, Landroid/view/MenuItem;->getGroupId()I

    move-result v5

    if-eq v4, v5, :cond_3

    :cond_2
    return v6

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    return v4
.end method

.method public static isDiscardTouch()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/widget/FloatingToolbar;->sIsDiscardTouch:Z

    return v0
.end method

.method public static isMovingStarted()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/widget/FloatingToolbar;->sIsMovingStarted:Z

    return v0
.end method

.method static synthetic lambda$-com_android_internal_widget_FloatingToolbar_4103(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private registerOrientationHandler()V
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar;->unregisterOrientationHandler()V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public static setMovingStarted(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/internal/widget/FloatingToolbar;->sIsMovingStarted:Z

    return-void
.end method

.method private tidy(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MenuItem;",
            ">;)V"
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/MenuItem;

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    const v7, 0x1020041

    if-ne v6, v7, :cond_0

    move v1, v3

    invoke-interface {v4}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    sget-boolean v6, Lcom/android/internal/widget/FloatingToolbar;->sIsSemType:Z

    if-nez v6, :cond_1

    invoke-interface {v4}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, -0x1

    if-le v1, v6, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MenuItem;

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    const/4 v6, 0x0

    invoke-interface {p1, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private unregisterOrientationHandler()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private static updateMenuItemButton(Landroid/view/View;Landroid/view/MenuItem;I)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    const v3, 0x10202c3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    const v3, 0x10202c1

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2, v4, v4, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar;->unregisterOrientationHandler()V

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->dismiss()V

    return-void
.end method

.method public hide()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->hide()V

    return-void
.end method

.method public isHidden()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isHidden()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    return v0
.end method

.method public setContentRect(Landroid/graphics/Rect;)Lcom/android/internal/widget/FloatingToolbar;
    .locals 2

    iget-object v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object p0
.end method

.method public setMenu(Landroid/view/Menu;)Lcom/android/internal/widget/FloatingToolbar;
    .locals 1

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenu:Landroid/view/Menu;

    return-object p0
.end method

.method public setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/android/internal/widget/FloatingToolbar;
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    :goto_0
    return-object p0

    :cond_0
    sget-object v0, Lcom/android/internal/widget/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    goto :goto_0
.end method

.method public setSuggestedWidth(I)Lcom/android/internal/widget/FloatingToolbar;
    .locals 8

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mSuggestedWidth:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v2, v0

    iget v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mSuggestedWidth:I

    int-to-double v4, v1

    const-wide v6, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, v6

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/FloatingToolbar;->mWidthChanged:Z

    iput p1, p0, Lcom/android/internal/widget/FloatingToolbar;->mSuggestedWidth:I

    return-object p0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public show()Lcom/android/internal/widget/FloatingToolbar;
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar;->registerOrientationHandler()V

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar;->doShow()V

    return-object p0
.end method

.method public updateLayout()Lcom/android/internal/widget/FloatingToolbar;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar;->mPopup:Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar;->doShow()V

    :cond_0
    return-object p0
.end method
