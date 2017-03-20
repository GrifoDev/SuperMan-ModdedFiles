.class Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "IncomingCallSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 180
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 197
    :cond_0
    :goto_0
    return v4

    .line 181
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 182
    .local v0, "distanceX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 183
    .local v1, "distanceY":I
    const-string v3, "tablet_device"

    invoke-static {v3}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x32

    :goto_1
    # setter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->MIN_FLING_THRESHOLD:I
    invoke-static {v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$102(I)I

    .line 184
    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->MIN_FLING_THRESHOLD:I
    invoke-static {}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$100()I

    move-result v3

    if-lt v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mThresholdY:I
    invoke-static {v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$200(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)I

    move-result v3

    if-gt v1, v3, :cond_0

    if-gt v0, v1, :cond_0

    .line 187
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v5, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mMinFlingVelocity:I
    invoke-static {v5}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$300(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_0

    .line 188
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    # setter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->mIsFlingProcessing:Z
    invoke-static {v3, v2}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$402(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;Z)Z

    .line 189
    const/4 v3, 0x0

    cmpg-float v3, p4, v3

    if-gez v3, :cond_3

    .line 190
    .local v2, "flingUp":Z
    :goto_2
    const-string v5, "IncomingCallSlidingDrawer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onFling: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_4

    const-string v3, "OPEN"

    :goto_3
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    if-eqz v2, :cond_5

    .line 192
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    # invokes: Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateOpenByFling()V
    invoke-static {v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$500(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V

    goto :goto_0

    .line 183
    .end local v2    # "flingUp":Z
    :cond_2
    # getter for: Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->MIN_FLING_THRESHOLD:I
    invoke-static {}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$100()I

    move-result v3

    goto :goto_1

    :cond_3
    move v2, v4

    .line 189
    goto :goto_2

    .line 190
    .restart local v2    # "flingUp":Z
    :cond_4
    const-string v3, "CLOSE"

    goto :goto_3

    .line 194
    :cond_5
    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    # invokes: Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->animateCloseByFling()V
    invoke-static {v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$600(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V

    goto/16 :goto_0
.end method
