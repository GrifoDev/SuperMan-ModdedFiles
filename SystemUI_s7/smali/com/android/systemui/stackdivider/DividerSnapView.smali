.class public Lcom/android/systemui/stackdivider/DividerSnapView;
.super Landroid/widget/FrameLayout;
.source "DividerSnapView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerSnapView$1;,
        Lcom/android/systemui/stackdivider/DividerSnapView$2;
    }
.end annotation


# instance fields
.field public final SNAP_MINIMAL:I

.field public final SNAP_NORMAL:I

.field private mBottomDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

.field private mBottomDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mBottomHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

.field private mDeltaY:I

.field mDividerButtonsTouchListener:Landroid/view/View$OnTouchListener;

.field private mDuration:I

.field private mHandlePointHalfSize:I

.field private mHasNavigationBar:Z

.field private mLastSnapRect:Landroid/graphics/Rect;

.field private mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

.field private mMinimalSnapSize:I

.field private mNavigationBarHeight:I

.field private mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mSnapButtonsAnimation:Landroid/view/animation/Animation;

.field private mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mSnapTarget:I

.field private mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mSnapViewButtons:Landroid/widget/FrameLayout;

.field private mSnapViewButtonsContainer:Landroid/widget/FrameLayout;

.field private mSnapViewButtonsMargin:I

.field private mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mSnapViewCancel:Landroid/widget/TextView;

.field private mSnapViewDone:Landroid/widget/TextView;

.field private mSnapWindowBounds:Landroid/graphics/Rect;

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private mTopDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

.field private mTopDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

.field private mTopHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

.field mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

.field private windowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/DividerSnapView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/stackdivider/DividerSnapView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/stackdivider/DividerSnapView;)Lcom/android/systemui/stackdivider/DividerSnapHandleView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/stackdivider/DividerSnapView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDeltaY:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/DividerSnapView;Landroid/view/View;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerSnapView;->initSnapPosition(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/DividerSnapView;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/stackdivider/DividerSnapView;->moveSnapRect(Landroid/view/View;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->SNAP_NORMAL:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->SNAP_MINIMAL:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    new-instance v0, Lcom/android/systemui/stackdivider/DividerSnapView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerSnapView$1;-><init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/systemui/stackdivider/DividerSnapView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/DividerSnapView$2;-><init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDividerButtonsTouchListener:Landroid/view/View$OnTouchListener;

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-void
.end method

.method private initSnapPosition(Landroid/view/View;I)I
    .locals 3

    if-eqz p1, :cond_0

    move v1, p2

    const/4 v2, 0x2

    new-array v0, v2, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v2, v0, v2

    sub-int v2, p2, v2

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private moveSnapRect(Landroid/view/View;I)V
    .locals 12

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    if-nez v8, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    move v1, p2

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v6, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    :goto_0
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v6, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v2, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v5, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    packed-switch v8, :pswitch_data_1

    :goto_1
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int v11, v4, v5

    invoke-virtual {v8, v9, v4, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->invalidate()V

    :cond_1
    return-void

    :pswitch_0
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDeltaY:I

    sub-int v6, p2, v8

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v8, v6

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    if-ge v8, v9, :cond_3

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int v6, v8, v9

    :cond_2
    :goto_2
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int v4, v6, v8

    sub-int v8, v2, v4

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int v5, v8, v9

    goto :goto_0

    :cond_3
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v8, v6

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMinimalSnapSize:I

    sub-int v9, v2, v9

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v9, v10

    if-le v8, v9, :cond_2

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMinimalSnapSize:I

    sub-int v6, v2, v8

    goto :goto_2

    :pswitch_1
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDeltaY:I

    sub-int v4, p2, v8

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v4, v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v4, v8, Landroid/graphics/Rect;->top:I

    :cond_4
    :goto_3
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int v6, v4, v8

    add-int v8, v4, v5

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int v2, v8, v9

    goto/16 :goto_0

    :cond_5
    add-int v8, v4, v5

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_4

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v8, v5

    goto :goto_3

    :pswitch_2
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDeltaY:I

    sub-int v2, p2, v8

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int v4, v6, v8

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v8, v2

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-le v8, v9, :cond_7

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int v2, v8, v9

    :cond_6
    :goto_4
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v8, v2

    sub-int v5, v8, v4

    goto/16 :goto_0

    :cond_7
    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v8, v2

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMinimalSnapSize:I

    add-int/2addr v9, v4

    if-ge v8, v9, :cond_6

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMinimalSnapSize:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int v2, v8, v9

    goto :goto_4

    :pswitch_3
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    :pswitch_4
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    :pswitch_5
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v8, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-ge v8, v9, :cond_8

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_9

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    add-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x0

    goto :goto_5

    :cond_9
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v10, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v9, v10

    iput v9, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7f130120
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showGuideAnimation()V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setAlpha(F)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/systemui/Interpolators;->SINE_IN_OUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/systemui/stackdivider/DividerSnapView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DividerSnapView$6;-><init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtons:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapButtonsAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v3, v2}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    return v4

    :cond_1
    return v3
.end method

.method public initSnapHandle()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/lit16 v1, v1, 0xc8

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMinimalSnapSize:I

    add-int/lit8 v1, v1, 0x64

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v5, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->setSnapGuideColor(I)V

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->showGuideAnimation()V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->invalidate()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public makeVisible(ZILandroid/graphics/Rect;)V
    .locals 1

    iput p2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    invoke-virtual {p0, p3}, Lcom/android/systemui/stackdivider/DividerSnapView;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/stackdivider/DividerSnapView;->setTouchable(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->initSnapHandle()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method public onCloseSystemDialogs(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v3, v2}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->hasSoftNavigationBar()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHasNavigationBar:Z

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mNavigationBarHeight:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMinimalSnapSize:I

    const v0, 0x7f130121

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    const v0, 0x7f130122

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    const v0, 0x7f130120

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    const v2, 0x7f02012c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f13011e

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    const v0, 0x7f13011f

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHandlePointHalfSize:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStrokeColor:I

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStrokeWidth:I

    const v0, 0x7f130123

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtons:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsMargin:I

    const v0, 0x7f130124

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsContainer:Landroid/widget/FrameLayout;

    const v0, 0x7f130125

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewCancel:Landroid/widget/TextView;

    const v0, 0x7f130126

    invoke-virtual {p0, v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewDone:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    const v1, 0x7f0500a5

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapButtonsAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDuration:I

    invoke-virtual {p0, p0}, Lcom/android/systemui/stackdivider/DividerSnapView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDividerButtonsTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewCancel:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/stackdivider/DividerSnapView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DividerSnapView$3;-><init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewDone:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewDone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mDividerButtonsTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewDone:Landroid/widget/TextView;

    new-instance v1, Lcom/android/systemui/stackdivider/DividerSnapView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/stackdivider/DividerSnapView$4;-><init>(Lcom/android/systemui/stackdivider/DividerSnapView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTopParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapMiddleParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapBottomParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mTopDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayer:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mBottomDimlayerParams:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtons:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapViewButtonsParams:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public setBounds(Landroid/graphics/Rect;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mHasNavigationBar:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mNavigationBarHeight:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    return-void
.end method

.method public setSnapGuideColor(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mMiddleHandle:Lcom/android/systemui/stackdivider/DividerSnapHandleView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerSnapHandleView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStrokeWidth:I

    iget v2, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStrokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mStrokeWidth:I

    const v2, -0xa0a1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setTouchable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->windowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->setTouchable(Z)V

    return-void
.end method

.method public setWindowManager(Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->windowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    return-void
.end method

.method public startSnapMode(Z)V
    .locals 12

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v7, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mLastSnapRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    iget-object v11, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapWindowBounds:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    iget v7, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/systemui/SystemUIApplication;

    const-class v7, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v7}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->isShown()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v5, 0x0

    :cond_1
    :goto_0
    if-nez v5, :cond_2

    const v7, 0x1050017

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget v7, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v4

    iput v7, v0, Landroid/graphics/Rect;->top:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v4

    iput v7, v0, Landroid/graphics/Rect;->bottom:I

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mWindowManagerProxy:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget v8, p0, Lcom/android/systemui/stackdivider/DividerSnapView;->mSnapTarget:I

    invoke-virtual {v7, p1, v8, v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->startSnapMode(ZILandroid/graphics/Rect;)V

    return-void

    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method
