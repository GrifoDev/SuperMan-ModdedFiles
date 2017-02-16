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
    .param p1, "this$0"    # Landroid/widget/TextView;

    .prologue
    const/4 v0, 0x0

    .line 13331
    iput-object p1, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13332
    iput v0, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    .line 13333
    iput v0, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    .line 13334
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/TextView$TouchMonitorListener;->globalTimeForTouch:I

    .line 13335
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    .line 13331
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView$TouchMonitorListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TextView;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/TextView$TouchMonitorListener;-><init>(Landroid/widget/TextView;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 13344
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 13345
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 13346
    .local v6, "rawX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 13348
    .local v7, "rawY":F
    packed-switch v0, :pswitch_data_0

    .line 13338
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 13350
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    sub-long v2, v8, v10

    .line 13351
    .local v2, "elipseTime":J
    iget v8, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    sub-float v8, v6, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 13352
    .local v4, "moveX":F
    iget v8, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    sub-float v8, v7, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 13353
    .local v5, "moveY":F
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

    .line 13355
    .local v1, "flag":Z
    :goto_1
    invoke-static {}, Landroid/text/MultiSelection;->getIsMultiSelectingText()Z

    move-result v8

    if-nez v8, :cond_3

    const-wide/16 v8, 0x3e8

    cmp-long v8, v2, v8

    if-gez v8, :cond_3

    if-eqz v1, :cond_3

    .line 13356
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/widget/TextView;->-get11(Landroid/widget/TextView;)Lcom/samsung/android/penselect/PenSelectionController;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    float-to-int v11, v6

    float-to-int v12, v7

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/samsung/android/penselect/PenSelectionController;->isPenSelectionArea(Landroid/content/Context;Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 13358
    return-void

    .line 13353
    .end local v1    # "flag":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "flag":Z
    goto :goto_1

    .line 13360
    :cond_2
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->clearAllMultiSelection()Z

    goto :goto_0

    .line 13363
    :cond_3
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->isValidMultiSelection()Z

    move-result v8

    if-nez v8, :cond_0

    .line 13364
    iget-object v8, p0, Landroid/widget/TextView$TouchMonitorListener;->this$0:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->clearMultiSelection()Z

    goto :goto_0

    .line 13370
    .end local v1    # "flag":Z
    .end local v2    # "elipseTime":J
    .end local v4    # "moveX":F
    .end local v5    # "moveY":F
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/widget/TextView$TouchMonitorListener;->mPressTime:J

    .line 13371
    iput v6, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartX:F

    .line 13372
    iput v7, p0, Landroid/widget/TextView$TouchMonitorListener;->mStartY:F

    goto :goto_0

    .line 13348
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
