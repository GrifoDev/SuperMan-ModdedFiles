.class Lcom/android/incallui/service/MiniModeCallService$1;
.super Ljava/lang/Object;
.source "MiniModeCallService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/MiniModeCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/MiniModeCallService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/MiniModeCallService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/service/MiniModeCallService;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v7, 0x14

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 90
    const-string v4, "MiniModeCallService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 149
    :goto_0
    :pswitch_0
    return v9

    .line 94
    :pswitch_1
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    invoke-virtual {v4, v8}, Lcom/android/incallui/service/MiniModeCallService;->onFocus(Z)V

    .line 95
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    # invokes: Lcom/android/incallui/service/MiniModeCallService;->stopLongClickCheck()V
    invoke-static {v4}, Lcom/android/incallui/service/MiniModeCallService;->access$000(Lcom/android/incallui/service/MiniModeCallService;)V

    goto :goto_0

    .line 99
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 100
    .local v0, "currentTime":J
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    # getter for: Lcom/android/incallui/service/MiniModeCallService;->mIsOverMoveThreshold:Z
    invoke-static {v4}, Lcom/android/incallui/service/MiniModeCallService;->access$100(Lcom/android/incallui/service/MiniModeCallService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 101
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    # getter for: Lcom/android/incallui/service/MiniModeCallService;->mLastDownEventTime:J
    invoke-static {v4}, Lcom/android/incallui/service/MiniModeCallService;->access$200(Lcom/android/incallui/service/MiniModeCallService;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 102
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    invoke-virtual {v4}, Lcom/android/incallui/service/MiniModeCallService;->onTouchEvent()V

    .line 105
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    invoke-virtual {v4, v8}, Lcom/android/incallui/service/MiniModeCallService;->onFocus(Z)V

    .line 106
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    # invokes: Lcom/android/incallui/service/MiniModeCallService;->stopLongClickCheck()V
    invoke-static {v4}, Lcom/android/incallui/service/MiniModeCallService;->access$000(Lcom/android/incallui/service/MiniModeCallService;)V

    goto :goto_0

    .line 110
    .end local v0    # "currentTime":J
    :pswitch_3
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    # setter for: Lcom/android/incallui/service/MiniModeCallService;->mLastDownEventTime:J
    invoke-static {v4, v6, v7}, Lcom/android/incallui/service/MiniModeCallService;->access$202(Lcom/android/incallui/service/MiniModeCallService;J)J

    .line 111
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    # setter for: Lcom/android/incallui/service/MiniModeCallService;->mIsOverMoveThreshold:Z
    invoke-static {v4, v8}, Lcom/android/incallui/service/MiniModeCallService;->access$102(Lcom/android/incallui/service/MiniModeCallService;Z)Z

    .line 112
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    invoke-virtual {v4, v9}, Lcom/android/incallui/service/MiniModeCallService;->onFocus(Z)V

    .line 113
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    # setter for: Lcom/android/incallui/service/MiniModeCallService;->START_X:F
    invoke-static {v4, v5}, Lcom/android/incallui/service/MiniModeCallService;->access$302(Lcom/android/incallui/service/MiniModeCallService;F)F

    .line 114
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    # setter for: Lcom/android/incallui/service/MiniModeCallService;->START_Y:F
    invoke-static {v4, v5}, Lcom/android/incallui/service/MiniModeCallService;->access$402(Lcom/android/incallui/service/MiniModeCallService;F)F

    .line 115
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    iget-object v5, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    iget-object v5, v5, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    # setter for: Lcom/android/incallui/service/MiniModeCallService;->PREV_X:I
    invoke-static {v4, v5}, Lcom/android/incallui/service/MiniModeCallService;->access$502(Lcom/android/incallui/service/MiniModeCallService;I)I

    .line 116
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    iget-object v5, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    iget-object v5, v5, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    # setter for: Lcom/android/incallui/service/MiniModeCallService;->PREV_Y:I
    invoke-static {v4, v5}, Lcom/android/incallui/service/MiniModeCallService;->access$602(Lcom/android/incallui/service/MiniModeCallService;I)I

    .line 117
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    invoke-virtual {v4}, Lcom/android/incallui/service/MiniModeCallService;->onTouchEventDown()V

    .line 118
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    # invokes: Lcom/android/incallui/service/MiniModeCallService;->startLongClickCheck()V
    invoke-static {v4}, Lcom/android/incallui/service/MiniModeCallService;->access$700(Lcom/android/incallui/service/MiniModeCallService;)V

    goto :goto_0

    .line 122
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    # getter for: Lcom/android/incallui/service/MiniModeCallService;->START_X:F
    invoke-static {v5}, Lcom/android/incallui/service/MiniModeCallService;->access$300(Lcom/android/incallui/service/MiniModeCallService;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 123
    .local v2, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    # getter for: Lcom/android/incallui/service/MiniModeCallService;->START_Y:F
    invoke-static {v5}, Lcom/android/incallui/service/MiniModeCallService;->access$400(Lcom/android/incallui/service/MiniModeCallService;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v3, v4

    .line 125
    .local v3, "y":I
    if-ge v2, v7, :cond_3

    if-ge v3, v7, :cond_3

    .line 132
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    invoke-virtual {v4}, Lcom/android/incallui/service/MiniModeCallService;->supportScreenOutSide()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 133
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    # getter for: Lcom/android/incallui/service/MiniModeCallService;->PREV_X:I
    invoke-static {v4}, Lcom/android/incallui/service/MiniModeCallService;->access$500(Lcom/android/incallui/service/MiniModeCallService;)I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    invoke-virtual {v5}, Lcom/android/incallui/service/MiniModeCallService;->getMaxX()I

    move-result v5

    add-int/lit16 v5, v5, -0xc8

    if-gt v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    .line 134
    # getter for: Lcom/android/incallui/service/MiniModeCallService;->PREV_X:I
    invoke-static {v4}, Lcom/android/incallui/service/MiniModeCallService;->access$500(Lcom/android/incallui/service/MiniModeCallService;)I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    invoke-virtual {v5}, Lcom/android/incallui/service/MiniModeCallService;->getMaxX()I

    move-result v5

    rsub-int v5, v5, 0xc8

    if-le v4, v5, :cond_1

    .line 135
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    iget-object v4, v4, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    # getter for: Lcom/android/incallui/service/MiniModeCallService;->PREV_X:I
    invoke-static {v5}, Lcom/android/incallui/service/MiniModeCallService;->access$500(Lcom/android/incallui/service/MiniModeCallService;)I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 137
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    # getter for: Lcom/android/incallui/service/MiniModeCallService;->PREV_Y:I
    invoke-static {v4}, Lcom/android/incallui/service/MiniModeCallService;->access$600(Lcom/android/incallui/service/MiniModeCallService;)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    invoke-virtual {v5}, Lcom/android/incallui/service/MiniModeCallService;->getMaxY()I

    move-result v5

    add-int/lit16 v5, v5, -0xc8

    if-gt v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    # getter for: Lcom/android/incallui/service/MiniModeCallService;->PREV_Y:I
    invoke-static {v4}, Lcom/android/incallui/service/MiniModeCallService;->access$600(Lcom/android/incallui/service/MiniModeCallService;)I

    move-result v4

    add-int/2addr v4, v3

    if-lez v4, :cond_2

    .line 138
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    iget-object v4, v4, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    # getter for: Lcom/android/incallui/service/MiniModeCallService;->PREV_Y:I
    invoke-static {v5}, Lcom/android/incallui/service/MiniModeCallService;->access$600(Lcom/android/incallui/service/MiniModeCallService;)I

    move-result v5

    add-int/2addr v5, v3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 145
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    # invokes: Lcom/android/incallui/service/MiniModeCallService;->updateViewLayout()V
    invoke-static {v4}, Lcom/android/incallui/service/MiniModeCallService;->access$800(Lcom/android/incallui/service/MiniModeCallService;)V

    goto/16 :goto_0

    .line 128
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    # setter for: Lcom/android/incallui/service/MiniModeCallService;->mIsOverMoveThreshold:Z
    invoke-static {v4, v9}, Lcom/android/incallui/service/MiniModeCallService;->access$102(Lcom/android/incallui/service/MiniModeCallService;Z)Z

    .line 129
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    # invokes: Lcom/android/incallui/service/MiniModeCallService;->stopLongClickCheck()V
    invoke-static {v4}, Lcom/android/incallui/service/MiniModeCallService;->access$000(Lcom/android/incallui/service/MiniModeCallService;)V

    goto :goto_1

    .line 141
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    iget-object v4, v4, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    # getter for: Lcom/android/incallui/service/MiniModeCallService;->PREV_X:I
    invoke-static {v5}, Lcom/android/incallui/service/MiniModeCallService;->access$500(Lcom/android/incallui/service/MiniModeCallService;)I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 142
    iget-object v4, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    iget-object v4, v4, Lcom/android/incallui/service/MiniModeCallService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/service/MiniModeCallService$1;->this$0:Lcom/android/incallui/service/MiniModeCallService;

    # getter for: Lcom/android/incallui/service/MiniModeCallService;->PREV_Y:I
    invoke-static {v5}, Lcom/android/incallui/service/MiniModeCallService;->access$600(Lcom/android/incallui/service/MiniModeCallService;)I

    move-result v5

    add-int/2addr v5, v3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2

    .line 92
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
