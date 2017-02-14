.class public Lcom/android/launcher2/mainmenu/PinchLayerView;
.super Landroid/widget/FrameLayout;
.source "PinchLayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;

.field private mTouchPointDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v7, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v6, p0, Lcom/android/launcher2/mainmenu/PinchLayerView;->mListener:Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;

    if-eqz v6, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v4, v5

    :cond_1
    :goto_1
    return v4

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ne v6, v7, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v1, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    sub-float v4, v6, v4

    float-to-int v0, v4

    mul-int v4, v1, v1

    mul-int v6, v0, v0

    add-int/2addr v4, v6

    int-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-int v4, v6

    iput v4, p0, Lcom/android/launcher2/mainmenu/PinchLayerView;->mTouchPointDistance:I

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/android/launcher2/mainmenu/PinchLayerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ne v6, v7, :cond_0

    if-eqz v3, :cond_2

    instance-of v6, v3, Lcom/android/launcher2/MenuAppsGrid;

    if-eqz v6, :cond_2

    check-cast v3, Lcom/android/launcher2/MenuAppsGrid;

    invoke-virtual {v3}, Lcom/android/launcher2/MenuAppsGrid;->isScrollingState()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v1, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v0, v6

    iget v6, p0, Lcom/android/launcher2/mainmenu/PinchLayerView;->mTouchPointDistance:I

    mul-int v7, v1, v1

    mul-int v8, v0, v0

    add-int/2addr v7, v8

    int-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v7, v8

    sub-int v2, v6, v7

    const/16 v6, 0x32

    if-le v2, v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher2/mainmenu/PinchLayerView;->mListener:Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;

    invoke-interface {v6}, Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;->onPinch()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setOnPinchListener(Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/mainmenu/PinchLayerView;->mListener:Lcom/android/launcher2/mainmenu/PinchLayerView$OnPinchListener;

    return-void
.end method
