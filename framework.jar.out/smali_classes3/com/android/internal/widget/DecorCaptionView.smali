.class public Lcom/android/internal/widget/DecorCaptionView;
.super Landroid/view/ViewGroup;
.source "DecorCaptionView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/DecorCaptionView$1;,
        Lcom/android/internal/widget/DecorCaptionView$2;,
        Lcom/android/internal/widget/DecorCaptionView$3;,
        Lcom/android/internal/widget/DecorCaptionView$4;,
        Lcom/android/internal/widget/DecorCaptionView$CaptionState;,
        Lcom/android/internal/widget/DecorCaptionView$DexDoubleTapListener;
    }
.end annotation


# static fields
.field private static final CHANGE_BORDER_COLOR_TIME:I = 0x64

.field private static final CLICK_TARGET_INSET_IN_DIP:I = 0x3

.field private static final DEBUG:Z = false

.field private static final DRAG_SLOP_IN_DIP:I = 0x8

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "DecorCaptionView"


# instance fields
.field private final adjustRect:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBack:Landroid/view/View;

.field private final mBackRect:Landroid/graphics/Rect;

.field private final mButtonHoverListener:Landroid/view/View$OnHoverListener;

.field private mCaption:Landroid/view/View;

.field private mCaptionBackground:Landroid/graphics/drawable/Drawable;

.field private mCaptionContainer:Landroid/view/View;

.field private mCaptionEndContainer:Landroid/view/View;

.field private final mChangeStrokeColorRunnable:Ljava/lang/Runnable;

.field private mCheckForDragging:Z

.field private mClickTarget:Landroid/view/View;

.field private mClickTargetInset:I

.field private mClickTargetRect:Landroid/graphics/Rect;

.field private mClose:Landroid/view/View;

.field private final mCloseRect:Landroid/graphics/Rect;

.field private mContent:Landroid/view/View;

.field private mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

.field private mDragSlop:I

.field private mDragging:Z

.field private mForceLayoutRequested:Z

.field private mFrameThickness:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGhost:Landroid/view/View;

.field private final mGhostRect:Landroid/graphics/Rect;

.field private mHandler:Landroid/os/Handler;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsBackButtonFlipped:Z

.field private mIsDecorCaptionWindow:Z

.field private mIsFixedOrientation:Z

.field private mIsLongPressed:Z

.field private mLastLongPressTime:J

.field private mLastMeasuredWithCaptionHeight:Z

.field private mMaximize:Landroid/view/View;

.field private final mMaximizeRect:Landroid/graphics/Rect;

.field private mMaximizeRequested:Z

.field private mMaximizeVisibilityOnDeX:Z

.field private mMinimize:Landroid/view/View;

.field private final mMinimizeRect:Landroid/graphics/Rect;

.field private mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private final mOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private final mOutlineRect:Landroid/graphics/Rect;

.field private mOverlayWithAppContent:Z

.field private mOwner:Lcom/android/internal/policy/PhoneWindow;

.field private mReduce:Landroid/view/View;

.field private final mReduceRect:Landroid/graphics/Rect;

.field private mRotate:Landroid/view/View;

.field private final mRotateRect:Landroid/graphics/Rect;

.field private mShow:Z

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpSize:Landroid/graphics/Point;

.field private mTouchDispatchList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchDownX:I

.field private mTouchDownY:I

.field private final setHoverListenerAndToolTip:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/DecorCaptionView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/DecorCaptionView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/widget/DecorCaptionView;)Lcom/android/internal/policy/MultiWindowDecorSupport;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/widget/DecorCaptionView;)F
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mFrameThickness:F

    return v0
.end method

.method static synthetic -get4(Lcom/android/internal/widget/DecorCaptionView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeVisibilityOnDeX:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/internal/widget/DecorCaptionView;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOutlineRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/DecorCaptionView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isDesktopMode()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/DecorCaptionView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->changeBorderColorWhenHeaderClicked(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/widget/DecorCaptionView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->clearRippleEffect(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/widget/DecorCaptionView;Landroid/view/View;Landroid/view/MotionEvent;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/DecorCaptionView;->drawRippleEffect(Landroid/view/View;Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/internal/widget/DecorCaptionView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->maximizeWindow()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/DecorCaptionView;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mGhostRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTmpSize:Landroid/graphics/Point;

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeVisibilityOnDeX:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFixedOrientation:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsBackButtonFlipped:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mForceLayoutRequested:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mLastMeasuredWithCaptionHeight:Z

    new-instance v0, Lcom/android/internal/widget/DecorCaptionView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DecorCaptionView$1;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mChangeStrokeColorRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/widget/DecorCaptionView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DecorCaptionView$2;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/widget/DecorCaptionView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DecorCaptionView$3;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOutlineRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/internal/widget/DecorCaptionView$4;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DecorCaptionView$4;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    new-instance v0, Lcom/android/internal/widget/-$Lambda$6pnMKa8Hy9lN0E2-pkG_9OrYjqw$4;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/-$Lambda$6pnMKa8Hy9lN0E2-pkG_9OrYjqw$4;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->setHoverListenerAndToolTip:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/internal/widget/-$Lambda$6pnMKa8Hy9lN0E2-pkG_9OrYjqw$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/-$Lambda$6pnMKa8Hy9lN0E2-pkG_9OrYjqw$1;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->adjustRect:Ljava/util/function/BiConsumer;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mGhostRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTmpSize:Landroid/graphics/Point;

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeVisibilityOnDeX:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFixedOrientation:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsBackButtonFlipped:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mForceLayoutRequested:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mLastMeasuredWithCaptionHeight:Z

    new-instance v0, Lcom/android/internal/widget/DecorCaptionView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DecorCaptionView$1;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mChangeStrokeColorRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/widget/DecorCaptionView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DecorCaptionView$2;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/widget/DecorCaptionView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DecorCaptionView$3;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOutlineRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/internal/widget/DecorCaptionView$4;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DecorCaptionView$4;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    new-instance v0, Lcom/android/internal/widget/-$Lambda$6pnMKa8Hy9lN0E2-pkG_9OrYjqw$5;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/-$Lambda$6pnMKa8Hy9lN0E2-pkG_9OrYjqw$5;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->setHoverListenerAndToolTip:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/internal/widget/-$Lambda$6pnMKa8Hy9lN0E2-pkG_9OrYjqw$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/-$Lambda$6pnMKa8Hy9lN0E2-pkG_9OrYjqw$2;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->adjustRect:Ljava/util/function/BiConsumer;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mGhostRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    iput-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetRect:Landroid/graphics/Rect;

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTmpSize:Landroid/graphics/Point;

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeVisibilityOnDeX:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFixedOrientation:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsBackButtonFlipped:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mForceLayoutRequested:Z

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mLastMeasuredWithCaptionHeight:Z

    new-instance v0, Lcom/android/internal/widget/DecorCaptionView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DecorCaptionView$1;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mChangeStrokeColorRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/internal/widget/DecorCaptionView$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DecorCaptionView$2;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/widget/DecorCaptionView$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DecorCaptionView$3;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOutlineRect:Landroid/graphics/Rect;

    new-instance v0, Lcom/android/internal/widget/DecorCaptionView$4;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/DecorCaptionView$4;-><init>(Lcom/android/internal/widget/DecorCaptionView;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    new-instance v0, Lcom/android/internal/widget/-$Lambda$6pnMKa8Hy9lN0E2-pkG_9OrYjqw$6;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/-$Lambda$6pnMKa8Hy9lN0E2-pkG_9OrYjqw$6;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->setHoverListenerAndToolTip:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/internal/widget/-$Lambda$6pnMKa8Hy9lN0E2-pkG_9OrYjqw$3;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/-$Lambda$6pnMKa8Hy9lN0E2-pkG_9OrYjqw$3;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->adjustRect:Ljava/util/function/BiConsumer;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private adjustButtonRect(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mGhostRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Rect;->inset(II)V

    return-void
.end method

.method private changeBorderColorWhenHeaderClicked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/MultiWindowDecorSupport;->changeBorderColorWhenHeaderClicked(Z)V

    return-void
.end method

.method private clearRippleEffect(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionEndContainer:Landroid/view/View;

    if-eqz p1, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->setHovered(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method

.method private static dipToPx(FLandroid/content/res/Resources;)F
    .locals 2

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private drawRippleEffect(Landroid/view/View;Landroid/view/MotionEvent;Z)V
    .locals 11

    const/4 v10, 0x1

    if-nez p1, :cond_0

    invoke-direct {p0, p3}, Lcom/android/internal/widget/DecorCaptionView;->clearRippleEffect(Z)V

    return-void

    :cond_0
    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10501b0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionEndContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    sub-int v8, v6, v8

    div-int/lit8 v8, v8, 0x2

    sub-int v2, v7, v8

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    if-eq p1, v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionEndContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v2, v7

    :cond_1
    add-int v3, v2, v6

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int v8, v6, v8

    div-int/lit8 v8, v8, 0x2

    sub-int v4, v7, v8

    add-int v1, v4, v6

    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/graphics/drawable/RippleDrawable;->setBounds(IIII)V

    invoke-virtual {v5, v2, v4, v3, v1}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    add-float/2addr v8, v9

    invoke-virtual {v0, v7, v8}, Landroid/view/View;->drawableHotspotChanged(FF)V

    if-eqz p3, :cond_2

    invoke-virtual {v0, v10}, Landroid/view/View;->setHovered(Z)V

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0, v10}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0
.end method

.method private flipBackButtonIfNeeded()V
    .locals 0

    return-void
.end method

.method private hideAllButton()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mGhost:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private hideSoftInputIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/internal/widget/DecorCaptionView;->SAFE_DEBUG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "DecorCaptionView"

    const-string/jumbo v1, "hideSoftInputIfNeeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_2
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private isDesktopMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isFillingScreen()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isRotateButtonVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isPreserveOrientationMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isFloating()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->isTranslucent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsFixedOrientation:Z

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic lambda$-com_android_internal_widget_DecorCaptionView_52453()V
    .locals 4

    :try_start_0
    new-instance v2, Landroid/app/Instrumentation;

    invoke-direct {v2}, Landroid/app/Instrumentation;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/app/Instrumentation;->sendKeyDownUpSync(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private maximizeWindow()V
    .locals 4

    iget-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "DecorCaptionView"

    const-string/jumbo v3, "maximizeWindow: failed, maximize was already requested"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->getWindowControllerCallback()Landroid/view/Window$WindowControllerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string/jumbo v2, "DecorCaptionView"

    const-string/jumbo v3, "maximizeWindow: success, call exitFreeformMode"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    invoke-interface {v0}, Landroid/view/Window$WindowControllerCallback;->exitFreeformMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "DecorCaptionView"

    const-string/jumbo v3, "Cannot change task workspace."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "DecorCaptionView"

    const-string/jumbo v3, "maximizeWindow: failed, callback is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private minimizeWindow()V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-virtual {v1, v0, v2, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->moveActivityTaskToBack(Landroid/os/IBinder;ZZ)Z

    :cond_0
    return-void
.end method

.method private notifyBackButtonPressed()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/widget/-$Lambda$6pnMKa8Hy9lN0E2-pkG_9OrYjqw;

    invoke-direct {v1}, Lcom/android/internal/widget/-$Lambda$6pnMKa8Hy9lN0E2-pkG_9OrYjqw;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private operateButtonIfNeeded(Landroid/view/MotionEvent;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/internal/widget/DecorCaptionView;->SAFE_DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "DecorCaptionView"

    const-string/jumbo v4, "mClickTarget is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "DecorCaptionView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mClickTarget="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mIsLongPressed, Skip button-interaction"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v2, 0x0

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const-string/jumbo v3, "DecorCaptionView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mClickTarget="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", position is out of target bounds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    if-ne v3, v4, :cond_6

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->maximizeWindow()V

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->isFullScreenFreeform()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v3, "DMBY"

    aput-object v3, v1, v6

    const-string/jumbo v3, "DMPA"

    aput-object v3, v1, v7

    new-array v0, v8, [Ljava/lang/String;

    const-string/jumbo v3, "MaximizedByButton"

    aput-object v3, v0, v6

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v7

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mContext:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowLogger;->logGSIMForMaximizedAppInDeX(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->playSoundEffect(I)V

    return-void

    :cond_6
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v3, v7, v6}, Lcom/android/internal/policy/PhoneWindow;->dispatchOnWindowDismissed(ZZ)V

    goto :goto_0

    :cond_7
    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    if-ne v3, v4, :cond_8

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->hideSoftInputIfNeeded()V

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->minimizeWindow()V

    goto :goto_0

    :cond_8
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    if-ne v3, v4, :cond_9

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->notifyBackButtonPressed()V

    goto :goto_0

    :cond_9
    iget-boolean v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    if-ne v3, v4, :cond_5

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->rotateWindow()V

    goto :goto_0
.end method

.method private passedSlop(II)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownX:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    mul-int/lit8 v3, v3, 0x3

    if-gt v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownY:I

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    mul-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownX:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    if-gt v2, v3, :cond_3

    iget v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownY:I

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    if-le v2, v3, :cond_4

    :cond_3
    :goto_1
    return v0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private rotateWindow()V
    .locals 0

    return-void
.end method

.method private updateCaptionVisibility()V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isFillingScreen()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    xor-int/lit8 v0, v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    iput-object p2, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetRect:Landroid/graphics/Rect;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    :cond_0
    return-void
.end method

.method private updateHitRect()V
    .locals 11

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/view/View;->layout(IIII)V

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v0, v5, v6

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    iget-object v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionEndContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionEndContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v3

    if-nez v2, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/internal/policy/PhoneWindow;->notifyRestrictedCaptionAreaCallback(IIII)V

    return-void

    :cond_3
    const/4 v0, 0x0

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v7, v0

    iget v8, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v9, v0

    iget-object v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    const/4 v1, 0x2

    instance-of v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "params "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must subclass MarginLayoutParams"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ge p2, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getChildCount()I

    move-result v0

    if-lt v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "DecorCaptionView can only handle 1 client view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    return-void
.end method

.method public buildTouchDispatchChildList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDispatchList:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    return v0
.end method

.method public clearMaximizeRequested(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRequested:Z

    sget-boolean v0, Lcom/android/internal/widget/DecorCaptionView;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "DecorCaptionView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "clearMaximizeRequested, reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public dispatchRequestedOrientation(I)V
    .locals 0

    return-void
.end method

.method public forceLayoutIfNeeded()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mForceLayoutRequested:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->invalidate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mForceLayoutRequested:Z

    :cond_0
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getBackView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x10201fd

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    return-object v0
.end method

.method public getCaption()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    return-object v0
.end method

.method public getCaptionHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCloseView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x102024c

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    return-object v0
.end method

.method public getFreeformOutlineProvider()Landroid/view/ViewOutlineProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    return-object v0
.end method

.method public getGhostView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mGhost:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x10202cc

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mGhost:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mGhost:Landroid/view/View;

    return-object v0
.end method

.method public getLastMeasuredWithCaptionHeight()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mLastMeasuredWithCaptionHeight:Z

    return v0
.end method

.method public getMaximizeView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x102036f

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    return-object v0
.end method

.method public getMinimizeView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    if-nez v0, :cond_0

    const v0, 0x102037e

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    return-object v0
.end method

.method public isCaptionShowing()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    return v0
.end method

.method public isFullScreenFreeform()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$-com_android_internal_widget_DecorCaptionView_49393(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mButtonHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method synthetic lambda$-com_android_internal_widget_DecorCaptionView_49605(Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->adjustButtonRect(I)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->setHoverListenerAndToolTip:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->setHoverListenerAndToolTip:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->setHoverListenerAndToolTip:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigurationChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateCaptionVisibility()V

    const/high16 v0, 0x41000000    # 8.0f

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->dipToPx(FLandroid/content/res/Resources;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    const-string/jumbo v0, "config_changed"

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->clearMaximizeRequested(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateButtonVisibility()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    const/4 v10, 0x3

    if-ne v7, v10, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eq v7, v8, :cond_3

    const/4 v3, 0x1

    :goto_0
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiWindowDecorSupport;->keepShowingCaption()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {v7, v10, v11, v12}, Landroid/view/View;->pointInView(FFF)Z

    move-result v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-nez v7, :cond_f

    if-eqz v2, :cond_10

    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    :goto_2
    return v7

    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    if-eq v4, v8, :cond_8

    const/4 v7, 0x2

    if-ne v4, v7, :cond_9

    const/4 v1, 0x1

    :goto_3
    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->adjustRect:Ljava/util/function/BiConsumer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetInset:I

    neg-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    iget-object v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v10}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mBack:Landroid/view/View;

    iget-object v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mBackRect:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v10}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_6
    :goto_5
    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->adjustRect:Ljava/util/function/BiConsumer;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetInset:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v7

    if-gt v6, v7, :cond_7

    const-string/jumbo v7, "DecorCaptionView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onInterceptTouchEvent: ClickTarget="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " ToolType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-nez v7, :cond_7

    const-string/jumbo v10, "DecorCaptionView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onInterceptTouchEvent: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-boolean v7, Lcom/android/internal/widget/DecorCaptionView;->SAFE_DEBUG:Z

    if-eqz v7, :cond_e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, " x = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, ", y = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v11, ", mMaximizeRect = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximizeRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v11, ", mCloseRect = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v11, ", mMinimizeRect = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->getCaptionHeight()I

    move-result v7

    if-gt v6, v7, :cond_2

    if-nez v3, :cond_2

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mChangeStrokeColorRunnable:Ljava/lang/Runnable;

    const-wide/16 v12, 0x64

    invoke-virtual {v7, v10, v12, v13}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x1

    goto/16 :goto_3

    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_3

    :cond_a
    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    iget-object v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mCloseRect:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v10}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_b
    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    iget-object v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimizeRect:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v10}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_c
    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduce:Landroid/view/View;

    iget-object v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mReduceRect:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v10}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_5

    :cond_d
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsDecorCaptionWindow:Z

    if-eqz v7, :cond_6

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->isRotateButtonVisible()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotate:Landroid/view/View;

    iget-object v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mRotateRect:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v10}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/16 :goto_5

    :cond_e
    const-string/jumbo v7, ""

    goto/16 :goto_6

    :pswitch_2
    if-eqz v0, :cond_2

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/internal/widget/DecorCaptionView;->mChangeStrokeColorRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0, v9}, Lcom/android/internal/widget/DecorCaptionView;->changeBorderColorWhenHeaderClicked(Z)V

    goto/16 :goto_1

    :cond_f
    move v7, v8

    goto/16 :goto_2

    :cond_10
    move v7, v9

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateHitRect()V

    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/widget/DecorCaptionView;->mLastLongPressTime:J

    move-wide/from16 v16, v0

    sub-long v16, v4, v16

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-ltz v16, :cond_0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/widget/DecorCaptionView;->mLastLongPressTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v9, v0, [I

    const/4 v11, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getWidth()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    move-object/from16 v0, v16

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v16, 0x40a00000    # 5.0f

    mul-float v16, v16, v3

    move/from16 v0, v16

    float-to-int v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x10502ba

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DecorCaptionView;->mTmpSize:Landroid/graphics/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DecorCaptionView;->mTmpSize:Landroid/graphics/Point;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v10, v0, Landroid/graphics/Point;->x:I

    const/16 v16, 0x1

    aget v16, v9, v16

    add-int v16, v16, v7

    sub-int v15, v16, v11

    const/16 v16, 0x0

    aget v16, v9, v16

    add-int v16, v16, v13

    sub-int v16, v10, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingStart()I

    move-result v17

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingEnd()I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingEnd()I

    move-result v17

    add-int v16, v16, v17

    sub-int v14, v16, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->twMakeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutDirection()I

    move-result v16

    if-nez v16, :cond_1

    const/16 v16, 0x35

    move/from16 v0, v16

    invoke-virtual {v12, v0, v14, v15}, Landroid/widget/Toast;->setGravity(III)V

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    :cond_0
    return-void

    :cond_1
    const/16 v16, 0x0

    aget v16, v9, v16

    add-int v16, v16, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingStart()I

    move-result v17

    sub-int v17, v13, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getPaddingEnd()I

    move-result v18

    sub-int v17, v17, v18

    div-int/lit8 v17, v17, 0x2

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getPaddingStart()I

    move-result v17

    sub-int v16, v16, v17

    sub-int v14, v16, v8

    const/16 v16, 0x33

    move/from16 v0, v16

    invoke-virtual {v12, v0, v14, v15}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    :cond_0
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/DecorCaptionView;->setMeasuredDimension(II)V

    return-void

    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/DecorCaptionView;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v6, 0x1

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v4, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v5, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    invoke-virtual {p2, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v7

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    const/4 v3, 0x1

    :goto_1
    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v7, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v1, 0x0

    if-eqz v1, :cond_2

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v7

    if-eqz v7, :cond_2

    return v6

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v7, :cond_3

    return v9

    :cond_3
    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiWindowDecorSupport;->hasEdgeFlag()Z

    move-result v7

    if-eqz v7, :cond_4

    return v9

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mIsLongPressed:Z

    if-eqz v7, :cond_5

    return v9

    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    :cond_6
    :goto_2
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-nez v7, :cond_7

    iget-boolean v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    :cond_7
    return v6

    :pswitch_0
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    if-nez v7, :cond_8

    return v9

    :cond_8
    if-eqz v0, :cond_9

    if-eqz v3, :cond_6

    :cond_9
    iput-boolean v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    iput v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownX:I

    iput v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mTouchDownY:I

    goto :goto_2

    :pswitch_1
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    if-eqz v7, :cond_6

    if-nez v0, :cond_a

    invoke-direct {p0, v4, v5}, Lcom/android/internal/widget/DecorCaptionView;->passedSlop(II)Z

    move-result v7

    if-eqz v7, :cond_6

    :cond_a
    iput-boolean v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    iput-boolean v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v7}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullScreenFreeform()Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_6

    iget-object v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v7, v6}, Lcom/android/internal/policy/MultiWindowDecorSupport;->notifyMovingTask(Z)V

    goto :goto_2

    :cond_b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawXForScaledWindow()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawYForScaledWindow()F

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/internal/widget/DecorCaptionView;->startMovingTask(FF)Z

    move-result v2

    goto :goto_3

    :pswitch_2
    iget-boolean v7, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    if-eqz v7, :cond_6

    iput-boolean v9, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragging:Z

    iget-boolean v6, p0, Lcom/android/internal/widget/DecorCaptionView;->mCheckForDragging:Z

    xor-int/lit8 v6, v6, 0x1

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/DecorCaptionView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTarget:Landroid/view/View;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/internal/widget/DecorCaptionView;->drawRippleEffect(Landroid/view/View;Landroid/view/MotionEvent;Z)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/DecorCaptionView;->operateButtonIfNeeded(Landroid/view/MotionEvent;)V

    invoke-direct {p0, v3}, Lcom/android/internal/widget/DecorCaptionView;->clearRippleEffect(Z)V

    invoke-direct {p0, v2, v2}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, v3}, Lcom/android/internal/widget/DecorCaptionView;->clearRippleEffect(Z)V

    invoke-direct {p0, v2, v2}, Lcom/android/internal/widget/DecorCaptionView;->updateClickTarget(Landroid/view/View;Landroid/graphics/Rect;)V

    const-string/jumbo v1, "DecorCaptionView"

    const-string/jumbo v2, "onTouchEvent: ACTION_CANCEL, button-interaction failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/View;->pointInView(FFF)Z

    move-result v1

    return v1

    :cond_1
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public removeContentView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mContent:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setCaptionBackground()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setLastMeasuredWithCaptionHeight(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mLastMeasuredWithCaptionHeight:Z

    return-void
.end method

.method public setOverlayWithAppContent(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    :cond_0
    return-void
.end method

.method public setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;Z)V
    .locals 3

    iput-object p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    iput-boolean p2, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->isOverlayWithDecorCaptionEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    iget-boolean v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOverlayWithAppContent:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateCaptionVisibility()V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    sget-object v2, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const v1, 0x102036f

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    const v1, 0x102024c

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMultiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->getMultiWindowDecorSupport()Lcom/android/internal/policy/MultiWindowDecorSupport;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mFrameThickness:F

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v1, v0}, Lcom/android/internal/widget/DecorCaptionView;->dipToPx(FLandroid/content/res/Resources;)F

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClickTargetInset:I

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v1, v0}, Lcom/android/internal/widget/DecorCaptionView;->dipToPx(FLandroid/content/res/Resources;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mDragSlop:I

    const v1, 0x1020237

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionEndContainer:Landroid/view/View;

    const v1, 0x1020236

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionContainer:Landroid/view/View;

    const v1, 0x102037e

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    const v1, 0x10202cc

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mGhost:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mGhost:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->updateButtonVisibility()V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateButtonFocus(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    :cond_0
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0
.end method

.method public updateButtonVisibility()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mDecorViewSupport:Lcom/android/internal/policy/MultiWindowDecorSupport;

    invoke-virtual {v0}, Lcom/android/internal/policy/MultiWindowDecorSupport;->isFullWindow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/DecorCaptionView;->hideAllButton()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMinimize:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mMaximize:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mClose:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method updateCaptionShowing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/widget/DecorCaptionView;->mShow:Z

    :cond_0
    return-void
.end method

.method public updateFullScreenFreeformWindowCaptionVisibility(IZ)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->isCaptionShowing()Z

    move-result v2

    if-ne v2, v0, :cond_0

    if-eqz p2, :cond_4

    :cond_0
    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mOwner:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/PhoneWindow;->isOverlayWithDecorCaptionEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    if-ne p1, v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionBackground:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionBackground:Landroid/graphics/drawable/Drawable;

    :cond_1
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/DecorCaptionView;->setOverlayWithAppContent(Z)V

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2}, Landroid/view/ViewParent;->isLayoutRequested()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v5, p0, Lcom/android/internal/widget/DecorCaptionView;->mForceLayoutRequested:Z

    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/DecorCaptionView;->updateCaptionShowing(Z)V

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    if-eqz v0, :cond_8

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/internal/widget/DecorCaptionView;->invalidate()V

    :cond_4
    return-void

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaption:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/android/internal/widget/DecorCaptionView;->mCaptionBackground:Landroid/graphics/drawable/Drawable;

    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/DecorCaptionView;->setOverlayWithAppContent(Z)V

    goto :goto_1

    :cond_8
    const/16 v1, 0x8

    goto :goto_2
.end method
