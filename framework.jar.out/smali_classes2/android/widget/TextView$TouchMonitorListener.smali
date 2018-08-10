.class Landroid/widget/TextView$TouchMonitorListener;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewRootImpl$MotionEventMonitor$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchMonitorListener"
.end annotation


# instance fields
.field private final globalTimeForTouch:I

.field private mPressTime:J

.field private mStartX:F

.field private mStartY:F

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    iput v0, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/TextView$TouchMonitorListener;->globalTimeForTouch:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$TouchMonitorListener;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView$TouchMonitorListener;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 13

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    sub-long v2, v8, v10

    iget v8, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v8, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float v8, v4, v4

    mul-float v9, v5, v5

    add-float/2addr v8, v9

    iget-object v9, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-static {v9}, Landroid/widget/TextView;->-get0(Landroid/widget/TextView;)F

    move-result v9

    iget-object v10, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-static {v10}, Landroid/widget/TextView;->-get0(Landroid/widget/TextView;)F

    move-result v10

    mul-float/2addr v9, v10

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-static {}, Landroid/text/MultiSelection;->getIsMultiSelectingText()Z

    move-result v8

    if-nez v8, :cond_3

    const-wide/16 v8, 0x3e8

    cmp-long v8, v2, v8

    if-gez v8, :cond_3

    if-eqz v1, :cond_3

    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/widget/TextView;->-get11(Landroid/widget/TextView;)Lcom/samsung/android/penselect/PenSelectionController;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v10

    float-to-int v11, v6

    float-to-int v12, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/samsung/android/penselect/PenSelectionController;->isPenSelectionArea(Landroid/content/Context;Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_2

    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    goto :goto_0

    :cond_3
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->isValidMultiSelection()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->clearMultiSelection()Z

    goto :goto_0

    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    iput v6, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    iput v7, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
