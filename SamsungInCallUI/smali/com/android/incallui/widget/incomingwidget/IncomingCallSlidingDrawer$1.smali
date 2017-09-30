.class Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


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

    iput-object p1, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x32

    :goto_1
    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$102(I)I

    invoke-static {}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$100()I

    move-result v0

    if-lt v4, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$200(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)I

    move-result v0

    if-gt v4, v0, :cond_0

    if-gt v3, v4, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v3, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-static {v3}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$300(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-static {v0, v1}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$402(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;Z)Z

    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-gez v0, :cond_3

    move v0, v1

    :goto_2
    const-string v3, "IncomingCallSlidingDrawer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFling: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_4

    const-string v1, "OPEN"

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$500(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$100()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    const-string v1, "CLOSE"

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer$1;->this$0:Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-static {v0}, Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;->access$600(Lcom/android/incallui/widget/incomingwidget/IncomingCallSlidingDrawer;)V

    goto/16 :goto_0
.end method
