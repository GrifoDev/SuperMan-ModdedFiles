.class final Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SystemGesturesPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SystemGesturesPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FlingGestureDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;


# direct methods
.method private constructor <init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;-><init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 14

    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get2(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get1(Lcom/android/server/policy/SystemGesturesPointerEventListener;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get1(Lcom/android/server/policy/SystemGesturesPointerEventListener;)J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    add-long/2addr v2, v4

    cmp-long v2, v12, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get2(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get2(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v2

    move/from16 v0, p3

    float-to-int v5, v0

    move/from16 v0, p4

    float-to-int v6, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    const/high16 v9, -0x80000000

    const v10, 0x7fffffff

    invoke-virtual/range {v2 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIII)V

    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get2(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getDuration()I

    move-result v11

    const/16 v2, 0x1388

    if-le v11, v2, :cond_1

    const/16 v11, 0x1388

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v2, v12, v13}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-set0(Lcom/android/server/policy/SystemGesturesPointerEventListener;J)J

    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get2(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get0(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    move-result-object v2

    invoke-interface {v2, v11}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onFling(I)V

    const/4 v2, 0x1

    return v2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get2(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;->this$0:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-static {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->-get2(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    :cond_0
    return v1
.end method
