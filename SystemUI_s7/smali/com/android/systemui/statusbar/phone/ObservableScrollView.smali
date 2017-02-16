.class public Lcom/android/systemui/statusbar/phone/ObservableScrollView;
.super Landroid/widget/ScrollView;
.source "ObservableScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;
    }
.end annotation


# instance fields
.field private mBlockFlinging:Z

.field private mHandlingTouchEvent:Z

.field private mLastOverscrollAmount:I

.field private mLastX:F

.field private mLastY:F

.field private mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

.field private mTouchCancelled:Z

.field private mTouchEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    return-void
.end method

.method private getMaxScrollY()I
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchEnabled:Z

    if-nez v1, :cond_1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super {p0, v0}, Landroid/widget/ScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mTouchCancelled:Z

    return v2
.end method

.method public fling(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mBlockFlinging:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->fling(I)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastY:F

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    return v0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onOverScrolled(IIZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastOverscrollAmount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastX:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastY:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastOverscrollAmount:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;->onOverscrolled(FFI)V

    :cond_0
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mListener:Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView$Listener;->onScrollChanged()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastY:F

    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mHandlingTouchEvent:Z

    return v0
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 2

    add-int v0, p4, p2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->getMaxScrollY()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ObservableScrollView;->mLastOverscrollAmount:I

    invoke-super/range {p0 .. p9}, Landroid/widget/ScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method
