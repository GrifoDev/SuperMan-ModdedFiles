.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$1;,
        Landroid/widget/PopupWindow$2;,
        Landroid/widget/PopupWindow$OnDismissListener;,
        Landroid/widget/PopupWindow$PopupBackgroundView;,
        Landroid/widget/PopupWindow$PopupDecorView;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final ANIMATION_STYLE_DEFAULT:I = -0x1

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorRoot:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mAttachedInDecor:Z

.field private mAttachedInDecorSet:Z

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundView:Landroid/view/View;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

.field private mElevation:F

.field private mEnterTransition:Landroid/transition/Transition;

.field private mEpicenterBounds:Landroid/graphics/Rect;

.field private mExitTransition:Landroid/transition/Transition;

.field private mFirstPositionSet:Z

.field private mFocusable:Z

.field private mGravity:I

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsAnchorRootAttached:Z

.field private mIsAutoCompleteTextPopup:Z

.field private mIsDeviceDefaultLight:Z

.field private mIsDropdown:Z

.field private mIsFirstPositionBelow:Z

.field private mIsShowing:Z

.field private mIsTransitioningToDismiss:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNavigationBarHeight:I

.field private mNotTouchModal:Z

.field private final mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private final mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mOverlapAnchor:Z

.field private mParentRootView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mStatusBarHeight:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTmpAppLocation:[I

.field private final mTmpDrawingLocation:[I

.field private final mTmpScreenLocation:[I

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()[I
    .locals 1

    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/PopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic -get2(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic -set0(Landroid/widget/PopupWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFirstPositionSet:Z

    return p1
.end method

.method static synthetic -set1(Landroid/widget/PopupWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    return p1
.end method

.method static synthetic -set2(Landroid/widget/PopupWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsFirstPositionBelow:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/widget/PopupWindow;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x10100aa

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    const/4 v7, -0x2

    iput v7, p0, Landroid/widget/PopupWindow;->mWidth:I

    const/4 v7, -0x2

    iput v7, p0, Landroid/widget/PopupWindow;->mHeight:I

    const/16 v7, 0x3e8

    iput v7, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mGravity:I

    new-instance v7, Landroid/widget/PopupWindow$1;

    invoke-direct {v7, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v7, Landroid/widget/PopupWindow$2;

    invoke-direct {v7, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v7, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$2;

    invoke-direct {v7, p0}, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$2;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v7, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4;

    invoke-direct {v7, p0}, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4;-><init>(Ljava/lang/Object;)V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsAutoCompleteTextPopup:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mFirstPositionSet:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsFirstPositionBelow:Z

    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    sget-object v7, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {v0, v8, v7}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    iput v7, p0, Landroid/widget/PopupWindow;->mElevation:F

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    const v7, 0x1030301

    if-ne v1, v7, :cond_1

    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    :goto_0
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v4

    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-direct {p0, v7}, Landroid/widget/PopupWindow;->getTransition(I)Landroid/transition/Transition;

    move-result-object v5

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v4}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, v5}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v6, Landroid/util/TypedValue;

    invoke-direct {v6}, Landroid/util/TypedValue;-><init>()V

    iget-object v7, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x1110082

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v6, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v6, Landroid/util/TypedValue;->data:I

    if-eqz v7, :cond_0

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iget-object v7, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x1110083

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v3, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v7, v3, Landroid/util/TypedValue;->data:I

    if-nez v7, :cond_5

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    :cond_0
    iget-object v7, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10502ba

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iget-object v7, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050158

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    return-void

    :cond_1
    iput v1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    :cond_2
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object v5

    goto :goto_1

    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, -0x2

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    iput v2, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    iput v5, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    iput v4, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v4, p0, Landroid/widget/PopupWindow;->mHeight:I

    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    iput v5, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    iput v1, p0, Landroid/widget/PopupWindow;->mGravity:I

    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Landroid/widget/PopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$2;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$3;

    invoke-direct {v0, p0}, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$3;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    new-instance v0, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$1;

    invoke-direct {v0, p0}, Landroid/widget/-$Lambda$ISuHLqeK-K4pmesAfzlFglc3xF4$1;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsAutoCompleteTextPopup:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mFirstPositionSet:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsFirstPositionBelow:Z

    iput v1, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method private alignToAnchor()V
    .locals 10

    const/4 v9, -0x1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasDecorView()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iget v4, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v7, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v8, 0x1

    move-object v3, p0

    move v6, v9

    move v7, v9

    invoke-virtual/range {v3 .. v8}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_1
.end method

.method private computeAnimationResource()I
    .locals 2

    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, 0x10302f3

    :goto_0
    return v0

    :cond_0
    const v0, 0x10302f2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method private computeFlags(I)I
    .locals 3

    const/high16 v2, 0x20000

    const v0, -0x868219

    and-int/2addr p1, v0

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    const v0, 0x8000

    or-int/2addr p1, v0

    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_b

    or-int/lit8 p1, p1, 0x8

    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    or-int/2addr p1, v2

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    or-int/lit8 p1, p1, 0x10

    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v0, :cond_5

    :cond_4
    or-int/lit16 p1, p1, 0x200

    :cond_5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    :cond_6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_7

    or-int/lit16 p1, p1, 0x100

    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_8

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    :cond_8
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_9

    or-int/lit8 p1, p1, 0x20

    :cond_9
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    if-eqz v0, :cond_a

    const/high16 v0, 0x40000000    # 2.0f

    or-int/2addr p1, v0

    :cond_a
    return p1

    :cond_b
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private computeGravity()I
    .locals 2

    iget v1, p0, Landroid/widget/PopupWindow;->mGravity:I

    if-nez v1, :cond_2

    const v0, 0x800033

    :goto_0
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-eqz v1, :cond_1

    :cond_0
    const/high16 v1, 0x10000000

    or-int/2addr v0, v1

    :cond_1
    return v0

    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mGravity:I

    goto :goto_0
.end method

.method private createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;
    .locals 6

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_0

    const/4 v1, -0x2

    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupBackgroundView;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v4}, Landroid/widget/PopupWindow$PopupBackgroundView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v3}, Landroid/widget/PopupWindow$PopupBackgroundView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    const/4 v1, -0x2

    :goto_0
    new-instance v0, Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v3}, Landroid/widget/PopupWindow$PopupDecorView;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v3, v1}, Landroid/widget/PopupWindow$PopupDecorView;->addView(Landroid/view/View;II)V

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow$PopupDecorView;->setClipChildren(Z)V

    invoke-virtual {v0, v5}, Landroid/widget/PopupWindow$PopupDecorView;->setClipToPadding(Z)V

    return-object v0

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iput-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return-void
.end method

.method private getAppRootView(Landroid/view/View;)Landroid/view/View;
    .locals 3

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerGlobal;->getWindowView(Landroid/os/IBinder;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method private getTransition(I)Landroid/transition/Transition;
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    const/high16 v3, 0x10f0000

    if-eq p1, v3, :cond_2

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Landroid/transition/TransitionSet;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Landroid/transition/TransitionSet;

    invoke-virtual {v3}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-nez v1, :cond_2

    return-object v2

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method private getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget-boolean v8, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    if-eqz v8, :cond_2

    instance-of v8, v5, Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_2

    move-object v6, v5

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, 0x200

    if-eqz v8, :cond_6

    const/4 v2, 0x1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    if-eqz v6, :cond_3

    iget-object v8, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v8, :cond_3

    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v9, v6, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v8, v9

    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v8, v8, 0x400

    if-nez v8, :cond_8

    and-int/lit16 v8, v3, 0x404

    if-nez v8, :cond_7

    const/4 v1, 0x1

    :cond_3
    :goto_1
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    if-eqz v2, :cond_9

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v8, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iput v7, v4, Landroid/graphics/Rect;->left:I

    if-eqz v1, :cond_4

    iget v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    :cond_4
    iput v7, v4, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    :cond_5
    :goto_2
    invoke-virtual {p2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_6
    const/4 v2, 0x0

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    :cond_8
    const/4 v1, 0x0

    goto :goto_1

    :cond_9
    invoke-virtual {p1, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-boolean v7, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    if-eqz v7, :cond_5

    if-eqz v1, :cond_5

    iget v7, v4, Landroid/graphics/Rect;->top:I

    if-nez v7, :cond_5

    iget v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput v7, v4, Landroid/graphics/Rect;->top:I

    goto :goto_2
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->setFitsSystemWindows(Z)V

    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow$PopupDecorView;->requestEnterTransition(Landroid/transition/Transition;)V

    :cond_1
    return-void
.end method

.method private positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 6

    const/4 v1, 0x1

    sub-int v3, p4, p3

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v2, v4, p2

    if-le v2, p6, :cond_0

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v5, v2, p6

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_0
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v4, p5, :cond_1

    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v0, p6, p5

    if-eqz p7, :cond_2

    if-le p2, v0, :cond_2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_1
    :goto_0
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v4, v3

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 6

    const/4 v2, 0x1

    iget-boolean v4, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/widget/PopupWindow;->mIsAutoCompleteTextPopup:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/widget/PopupWindow;->mIsFirstPositionBelow:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    sub-int v4, p3, p2

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_0
    sub-int v3, p4, p3

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v4, v3

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v0, v4, p2

    if-le v0, p6, :cond_1

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v5, v0, p6

    sub-int/2addr v4, v5

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_1
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v4, p5, :cond_2

    iput p5, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v1, p6, p5

    if-eqz p7, :cond_3

    if-le p2, v1, :cond_3

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_2
    :goto_0
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v4, v3

    iput v4, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v1}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    :cond_2
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->createBackgroundView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupBackgroundView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_3
    :goto_0
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->createDecorView(Landroid/view/View;)Landroid/widget/PopupWindow$PopupDecorView;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget v2, p0, Landroid/widget/PopupWindow;->mElevation:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setElevation(F)V

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {p1, v1, v0, v0}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    :goto_1
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    return-void

    :cond_4
    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v1, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow$PopupDecorView;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method private tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 12

    sub-int v11, p6, p5

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    add-int v9, v1, v11

    sub-int v10, p8, v9

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    if-eqz v1, :cond_0

    move/from16 v0, p7

    if-lt v9, v0, :cond_1

    if-gt p3, v10, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_0
    if-ltz v9, :cond_1

    if-gt p3, v10, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/widget/PopupWindow;->positionInDisplayHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 15

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsAutoCompleteTextPopup:Z

    if-eqz v1, :cond_0

    const/4 v10, 0x0

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v10}, Landroid/widget/PopupWindow;->tryFitVerticalForAutoCompleteTextPopup(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v1

    return v1

    :cond_0
    sub-int v14, p6, p5

    move-object/from16 v0, p1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v11, v1, v14

    sub-int v13, p8, v11

    if-ltz v11, :cond_1

    move/from16 v0, p3

    if-gt v0, v13, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    sub-int v1, v11, p4

    sub-int v12, v1, p7

    move/from16 v0, p3

    if-gt v0, v12, :cond_3

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v1, :cond_2

    add-int p2, p2, p4

    :cond_2
    sub-int v1, p5, p3

    add-int v1, v1, p2

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, 0x1

    return v1

    :cond_3
    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/widget/PopupWindow;->positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    return v1

    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private tryFitVerticalForAutoCompleteTextPopup(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z
    .locals 14

    sub-int v13, p6, p5

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v10, v1, v13

    sub-int v12, p8, v10

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mFirstPositionSet:Z

    if-eqz v1, :cond_3

    if-lez v12, :cond_3

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_7

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mIsFirstPositionBelow:Z

    if-eqz v1, :cond_1

    move/from16 v0, p3

    if-gt v12, v0, :cond_0

    iput v12, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_0
    :goto_0
    const/4 v1, 0x1

    return v1

    :cond_1
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v1, :cond_2

    add-int p2, p2, p4

    :cond_2
    sub-int v1, p5, p3

    add-int v1, v1, p2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mFirstPositionSet:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsFirstPositionBelow:Z

    if-ltz v10, :cond_4

    move/from16 v0, p3

    if-gt v0, v12, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsFirstPositionBelow:Z

    const/4 v1, 0x1

    return v1

    :cond_4
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v1, :cond_6

    add-int v9, v10, p4

    :goto_1
    sub-int v11, v9, p7

    move/from16 v0, p3

    if-gt v0, v11, :cond_7

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v1, :cond_5

    mul-int/lit8 v1, p4, 0x2

    add-int p2, p2, v1

    :cond_5
    sub-int v1, p5, p3

    add-int v1, v1, p2

    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v1, 0x1

    return v1

    :cond_6
    sub-int v9, v10, p4

    goto :goto_1

    :cond_7
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p3

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v1 .. v8}, Landroid/widget/PopupWindow;->positionInDisplayVertical(Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    return v1

    :cond_8
    const/4 v1, 0x0

    return v1
.end method

.method private update(Landroid/view/View;ZIIII)V
    .locals 26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v11, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    if-eqz p2, :cond_8

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v4, v0, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v4, v0, :cond_8

    :cond_2
    const/16 v19, 0x1

    :goto_0
    if-eqz v20, :cond_3

    invoke-virtual/range {v20 .. v20}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    if-eq v4, v0, :cond_9

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3, v11}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    :cond_4
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v21, v0

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v23, v0

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v22, v0

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v25, v0

    if-gez p5, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mWidth:I

    move/from16 p5, v0

    :cond_5
    if-gez p6, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mHeight:I

    move/from16 p6, v0

    :cond_6
    move-object/from16 v0, p0

    iget v7, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v4 .. v12}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v0, v21

    if-ne v0, v4, :cond_7

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v0, v24

    if-eq v0, v4, :cond_b

    :cond_7
    const/16 v17, 0x1

    :goto_2
    if-gez p5, :cond_d

    move/from16 v15, p5

    :goto_3
    if-gez p6, :cond_e

    move/from16 v16, p6

    :goto_4
    iget v13, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v14, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v12, p0

    invoke-virtual/range {v12 .. v17}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void

    :cond_8
    const/16 v19, 0x0

    goto :goto_0

    :cond_9
    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    :cond_a
    if-eqz v19, :cond_4

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorYoff:I

    goto/16 :goto_1

    :cond_b
    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v0, v25

    if-ne v0, v4, :cond_7

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v0, v23

    if-ne v0, v4, :cond_7

    iget v4, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v0, v22

    if-eq v0, v4, :cond_c

    const/16 v17, 0x1

    goto :goto_2

    :cond_c
    const/16 v17, 0x0

    goto :goto_2

    :cond_d
    iget v15, v6, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_3

    :cond_e
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v16, v0

    goto :goto_4
.end method


# virtual methods
.method synthetic -android_widget_PopupWindow-mthref-0()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method protected attachToAnchor(Landroid/view/View;III)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v2, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    iget-object v2, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    iput-object v2, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return-void
.end method

.method protected final createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_0
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_1

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_1
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_2

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :goto_2
    const v1, 0x18000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    :cond_2
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2
.end method

.method protected detachFromAnchor()V
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnAnchorDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_0
    iget-object v3, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :goto_1
    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnAnchorRootDetachedListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    iput-object v4, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public dismiss()V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isTransitioningToDismiss()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    iget-object v3, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v8, v2, Landroid/view/ViewGroup;

    if-eqz v8, :cond_2

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    :goto_0
    iput-boolean v9, p0, Landroid/widget/PopupWindow;->mFirstPositionSet:Z

    iput-boolean v9, p0, Landroid/widget/PopupWindow;->mIsFirstPositionBelow:Z

    if-nez v4, :cond_3

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->cancelTransitions()V

    iput-boolean v9, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    const/4 v8, 0x1

    iput-boolean v8, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    iget-object v6, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    if-eqz v6, :cond_7

    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->isLaidOut()Z

    move-result v8

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Landroid/widget/PopupWindow;->mIsAnchorRootAttached:Z

    if-nez v8, :cond_4

    iget-object v8, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-nez v8, :cond_7

    :cond_4
    invoke-virtual {v4}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v8, v8, 0x10

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v8, v8, 0x8

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v9, -0x20001

    and-int/2addr v8, v9

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v8, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v8, v4, v7}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_6

    iget-object v8, p0, Landroid/widget/PopupWindow;->mAnchorRoot:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getTransitionEpicenter()Landroid/graphics/Rect;

    move-result-object v5

    new-instance v8, Landroid/widget/PopupWindow$3;

    invoke-direct {v8, p0, v4, v1, v3}, Landroid/widget/PopupWindow$3;-><init>(Landroid/widget/PopupWindow;Landroid/widget/PopupWindow$PopupDecorView;Landroid/view/ViewGroup;Landroid/view/View;)V

    invoke-virtual {v4, v6, v0, v5, v8}, Landroid/widget/PopupWindow$PopupDecorView;->startExitTransition(Landroid/transition/Transition;Landroid/view/View;Landroid/graphics/Rect;Landroid/transition/Transition$TransitionListener;)V

    :goto_2
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    iget-object v8, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v8, :cond_5

    iget-object v8, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v8}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_5
    return-void

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    invoke-direct {p0, v4, v1, v3}, Landroid/widget/PopupWindow;->dismissImmediate(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_2
.end method

.method protected final findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z
    .locals 30

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v3, :cond_0

    sub-int p4, p4, v7

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mTmpAppLocation:[I

    move-object/from16 v20, v0

    invoke-direct/range {p0 .. p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mTmpScreenLocation:[I

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    move-object/from16 v22, v0

    const/4 v3, 0x0

    aget v3, v27, v3

    const/4 v4, 0x0

    aget v4, v20, v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v22, v4

    const/4 v3, 0x1

    aget v3, v27, v3

    const/4 v4, 0x1

    aget v4, v20, v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v22, v4

    const/4 v3, 0x0

    aget v3, v22, v3

    add-int v3, v3, p3

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    new-instance v21, Landroid/graphics/Rect;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v3, -0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_1

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int p5, v3, v4

    :cond_1
    const/4 v3, -0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_2

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v21

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int p6, v3, v4

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mIsAutoCompleteTextPopup:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mFirstPositionSet:Z

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mIsFirstPositionBelow:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    aget v3, v22, v3

    sub-int v3, v3, p6

    add-int v3, v3, p4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-le v3, v4, :cond_3

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_3
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v3

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v0, p5

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v0, p6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    move/from16 v0, p7

    invoke-static {v0, v3}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v25, v3, 0x7

    const/4 v3, 0x5

    move/from16 v0, v25

    if-ne v0, v3, :cond_4

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v4, p5, v18

    sub-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_4
    const/4 v3, 0x1

    aget v8, v22, v3

    const/4 v3, 0x1

    aget v9, v27, v3

    move-object/from16 v0, v21

    iget v10, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v21

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v12, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v3 .. v12}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v24

    const/4 v3, 0x0

    aget v13, v22, v3

    const/4 v3, 0x0

    aget v14, v27, v3

    move-object/from16 v0, v21

    iget v15, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, v18

    invoke-direct/range {v8 .. v17}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    move-result v23

    if-eqz v24, :cond_5

    xor-int/lit8 v3, v23, 0x1

    if-eqz v3, :cond_7

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v28

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v29

    new-instance v26, Landroid/graphics/Rect;

    add-int v3, v28, p5

    add-int v3, v3, p3

    add-int v4, v29, p6

    add-int/2addr v4, v7

    add-int v4, v4, p4

    move-object/from16 v0, v26

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p8, :cond_6

    const/4 v3, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v3, v27, v3

    const/4 v4, 0x0

    aget v4, v20, v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v22, v4

    const/4 v3, 0x1

    aget v3, v27, v3

    const/4 v4, 0x1

    aget v4, v20, v4

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    aput v3, v22, v4

    const/4 v3, 0x0

    aget v3, v22, v3

    add-int v3, v3, p3

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v3, 0x1

    aget v3, v22, v3

    add-int/2addr v3, v7

    add-int v3, v3, p4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v3, 0x5

    move/from16 v0, v25

    if-ne v0, v3, :cond_6

    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int v4, p5, v18

    sub-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_6
    const/4 v3, 0x1

    aget v8, v22, v3

    const/4 v3, 0x1

    aget v9, v27, v3

    move-object/from16 v0, v21

    iget v10, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v21

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p6

    invoke-direct/range {v3 .. v12}, Landroid/widget/PopupWindow;->tryFitVertical(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    const/4 v3, 0x0

    aget v13, v22, v3

    const/4 v3, 0x0

    aget v14, v27, v3

    move-object/from16 v0, v21

    iget v15, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v17, v0

    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p5

    move/from16 v12, v18

    invoke-direct/range {v8 .. v17}, Landroid/widget/PopupWindow;->tryFitHorizontal(Landroid/view/WindowManager$LayoutParams;IIIIIIIZ)Z

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/widget/PopupWindow;->mIsAutoCompleteTextPopup:Z

    if-nez v3, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_8

    move-object/from16 v0, v21

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_8
    move-object/from16 v0, p2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v4, 0x1

    aget v4, v22, v4

    if-ge v3, v4, :cond_a

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_9
    const/4 v3, 0x1

    aget v3, v22, v3

    add-int/2addr v3, v7

    add-int v3, v3, p4

    move-object/from16 v0, p2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    :cond_a
    const/4 v3, 0x0

    goto :goto_1
.end method

.method protected final getAllowScrollingAnchorParent()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return v0
.end method

.method protected getAnchor()Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_0
    return-object v0
.end method

.method public getAnimationStyle()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v0}, Landroid/widget/PopupWindow$PopupDecorView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getElevation()F
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mElevation:F

    return v0
.end method

.method public getEnterTransition()Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getExitTransition()Landroid/transition/Transition;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 16

    const/4 v4, 0x0

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-direct/range {p0 .. p1}, Landroid/widget/PopupWindow;->getAppRootView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    if-eqz p3, :cond_2

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    iget v14, v11, Landroid/graphics/Rect;->top:I

    iput v14, v4, Landroid/graphics/Rect;->top:I

    iget v14, v11, Landroid/graphics/Rect;->right:I

    iput v14, v4, Landroid/graphics/Rect;->right:I

    iget v14, v11, Landroid/graphics/Rect;->left:I

    iput v14, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    if-eqz v14, :cond_0

    sget-boolean v14, Lcom/samsung/android/framework/feature/NavigationBarFeatures;->SUPPORT_NAVIGATION_BAR:Z

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v8, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x2

    if-eq v8, v14, :cond_0

    iget v14, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/PopupWindow;->mNavigationBarHeight:I

    sub-int/2addr v14, v15

    iput v14, v4, Landroid/graphics/Rect;->bottom:I

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/PopupWindow;->mTmpDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    if-eqz v14, :cond_5

    const/4 v14, 0x1

    aget v14, v1, v14

    sub-int v14, v3, v14

    sub-int v5, v14, p2

    :goto_1
    const/4 v14, 0x1

    aget v14, v1, v14

    iget v15, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    add-int v6, v14, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v15

    sub-int/2addr v9, v14

    :cond_1
    return v9

    :cond_2
    move-object v4, v11

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/PopupWindow;->mIsDeviceDefaultLight:Z

    if-eqz v14, :cond_0

    instance-of v14, v12, Landroid/view/WindowManager$LayoutParams;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v14, :cond_0

    move-object v13, v12

    check-cast v13, Landroid/view/WindowManager$LayoutParams;

    iget v14, v13, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v15, v13, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v10, v14, v15

    iget v14, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v14, v14, 0x400

    if-nez v14, :cond_4

    and-int/lit16 v14, v10, 0x404

    if-nez v14, :cond_3

    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_0

    iget v14, v11, Landroid/graphics/Rect;->top:I

    if-nez v14, :cond_0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput v14, v11, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    :cond_5
    const/4 v14, 0x1

    aget v14, v1, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v14, v15

    sub-int v14, v3, v14

    sub-int v5, v14, p2

    goto :goto_1
.end method

.method protected final getOnDismissListener()Landroid/widget/PopupWindow$OnDismissListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-object v0
.end method

.method public getOverlapAnchor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return v0
.end method

.method public getSoftInputMode()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method protected final getTransitionEpicenter()Landroid/graphics/Rect;
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    iget-object v7, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    iget-object v3, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_0

    if-nez v3, :cond_2

    :cond_0
    return-object v8

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    iget-object v7, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-virtual {v7}, Landroid/widget/PopupWindow$PopupDecorView;->getLocationOnScreen()[I

    move-result-object v6

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v8

    invoke-direct {v2, v9, v9, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    aget v7, v1, v9

    aget v8, v6, v9

    sub-int/2addr v7, v8

    aget v8, v1, v10

    aget v9, v6, v10

    sub-int/2addr v8, v9

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Rect;->offset(II)V

    iget-object v7, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    if-eqz v7, :cond_3

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    :cond_3
    return-object v2
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method protected hasContentView()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected hasDecorView()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAboveAnchor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isAttachedInDecor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method protected final isLayoutInsetDecor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_1

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-ne v2, v0, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public isTouchable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method protected final isTransitioningToDismiss()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return v0
.end method

.method synthetic lambda$-android_widget_PopupWindow_9868(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->alignToAnchor()V

    return-void
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return-void
.end method

.method public setAttachedInDecor(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAttachedInDecor:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    return-void
.end method

.method setAutoCompleteTextPopup()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsAutoCompleteTextPopup:Z

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_1

    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v4, Landroid/graphics/drawable/StateListDrawable;

    sget-object v5, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v0

    invoke-virtual {v4}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v2

    const/4 v1, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    if-eq v3, v0, :cond_2

    move v1, v3

    :cond_0
    if-eq v0, v6, :cond_3

    if-eq v1, v6, :cond_3

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    return-void
.end method

.method public setClippingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAttachedInDecorSet:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final setDropDown(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    return-void
.end method

.method public setElevation(F)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mElevation:F

    return-void
.end method

.method public setEnterTransition(Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mEnterTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mEpicenterBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setExitTransition(Landroid/transition/Transition;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mExitTransition:Landroid/transition/Transition;

    return-void
.end method

.method public setFocusable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return-void
.end method

.method public setOverlapAnchor(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOverlapAnchor:Z

    return-void
.end method

.method protected final setShowing(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    return-void
.end method

.method public setTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return-void
.end method

.method protected final setTransitioningToDismiss(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsTransitioningToDismiss:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1

    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 10

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->attachToAnchor(Landroid/view/View;III)V

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    invoke-virtual {p1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v6, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-boolean v8, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v7, p4

    invoke-virtual/range {v0 .. v8}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;IIIIIZ)Z

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    :goto_0
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-static {v1}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->detachFromAnchor()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    iput p2, p0, Landroid/widget/PopupWindow;->mGravity:I

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayoutParams(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mParentRootView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    return-void
.end method

.method public update()V
    .locals 7

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v6, :cond_2

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v4, 0x1

    :cond_2
    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v6}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v6, :cond_3

    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v4, 0x1

    :cond_3
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v2

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v2, v6, :cond_4

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v4, 0x1

    :cond_4
    if-eqz v4, :cond_6

    iget-object v6, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_5

    iget-object v5, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    :cond_5
    invoke-virtual {p0, v5, v3}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :cond_6
    return-void
.end method

.method public update(II)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method

.method public update(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method

.method public update(IIIIZ)V
    .locals 10

    if-ltz p3, :cond_0

    iput p3, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setWidth(I)V

    :cond_0
    if-ltz p4, :cond_1

    iput p4, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->hasContentView()Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getDecorViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    move v8, p5

    iget v9, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v9, :cond_e

    iget v2, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    :goto_0
    const/4 v9, -0x1

    if-eq p3, v9, :cond_4

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v9, v2, :cond_4

    iput v2, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v2, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v8, 0x1

    :cond_4
    iget v9, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v9, :cond_f

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    :goto_1
    const/4 v9, -0x1

    if-eq p4, v9, :cond_5

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v9, v1, :cond_5

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v8, 0x1

    :cond_5
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v9, p1, :cond_6

    iput p1, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v8, 0x1

    :cond_6
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v9, p2, :cond_7

    iput p2, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v8, 0x1

    :cond_7
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v4

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v4, v9, :cond_8

    iput v4, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v8, 0x1

    :cond_8
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v9}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v5

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v5, v9, :cond_9

    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v8, 0x1

    :cond_9
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeGravity()I

    move-result v6

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-eq v6, v9, :cond_a

    iput v6, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v8, 0x1

    :cond_a
    const/4 v0, 0x0

    const/4 v3, -0x1

    iget-object v9, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v9, :cond_b

    iget-object v9, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v3

    :cond_b
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    if-eq v3, v9, :cond_c

    iput v3, v7, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    const/4 v8, 0x1

    :cond_c
    if-eqz v8, :cond_d

    invoke-virtual {p0, v0, v7}, Landroid/widget/PopupWindow;->update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    :cond_d
    return-void

    :cond_e
    iget v2, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    goto :goto_0

    :cond_f
    iget v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    goto :goto_1
.end method

.method public update(Landroid/view/View;II)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 7

    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIII)V

    return-void
.end method

.method protected update(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mDecorView:Landroid/widget/PopupWindow$PopupDecorView;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final updateAboveAnchor(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method
