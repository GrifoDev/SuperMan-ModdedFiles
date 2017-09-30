.class Lcom/android/incallui/service/VideoPipService$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/VideoPipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/VideoPipService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/VideoPipService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/16 v3, 0x14

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v5

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {v0, v4}, Lcom/android/incallui/service/VideoPipService;->onFocus(Z)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v0}, Lcom/android/incallui/service/VideoPipService;->access$000(Lcom/android/incallui/service/VideoPipService;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v0}, Lcom/android/incallui/service/VideoPipService;->access$100(Lcom/android/incallui/service/VideoPipService;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v2}, Lcom/android/incallui/service/VideoPipService;->access$200(Lcom/android/incallui/service/VideoPipService;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {v0}, Lcom/android/incallui/service/VideoPipService;->onTouchEventUp()V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {v0, v4}, Lcom/android/incallui/service/VideoPipService;->onFocus(Z)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v0}, Lcom/android/incallui/service/VideoPipService;->access$000(Lcom/android/incallui/service/VideoPipService;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/incallui/service/VideoPipService;->access$202(Lcom/android/incallui/service/VideoPipService;J)J

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v0, v4}, Lcom/android/incallui/service/VideoPipService;->access$102(Lcom/android/incallui/service/VideoPipService;Z)Z

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {v0, v5}, Lcom/android/incallui/service/VideoPipService;->onFocus(Z)V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/incallui/service/VideoPipService;->access$302(Lcom/android/incallui/service/VideoPipService;F)F

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/incallui/service/VideoPipService;->access$402(Lcom/android/incallui/service/VideoPipService;F)F

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    iget-object v1, v1, Lcom/android/incallui/service/VideoPipService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v0, v1}, Lcom/android/incallui/service/VideoPipService;->access$502(Lcom/android/incallui/service/VideoPipService;I)I

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    iget-object v1, v1, Lcom/android/incallui/service/VideoPipService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v0, v1}, Lcom/android/incallui/service/VideoPipService;->access$602(Lcom/android/incallui/service/VideoPipService;I)I

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {v0}, Lcom/android/incallui/service/VideoPipService;->onTouchEventDown()V

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v0}, Lcom/android/incallui/service/VideoPipService;->access$700(Lcom/android/incallui/service/VideoPipService;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v1}, Lcom/android/incallui/service/VideoPipService;->access$300(Lcom/android/incallui/service/VideoPipService;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v2}, Lcom/android/incallui/service/VideoPipService;->access$400(Lcom/android/incallui/service/VideoPipService;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    if-ge v0, v3, :cond_1

    if-ge v1, v3, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    iget-object v2, v2, Lcom/android/incallui/service/VideoPipService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v3}, Lcom/android/incallui/service/VideoPipService;->access$500(Lcom/android/incallui/service/VideoPipService;)I

    move-result v3

    add-int/2addr v0, v3

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    iget-object v0, v0, Lcom/android/incallui/service/VideoPipService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v2}, Lcom/android/incallui/service/VideoPipService;->access$600(Lcom/android/incallui/service/VideoPipService;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {v0}, Lcom/android/incallui/service/VideoPipService;->updateViewLayout()V

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v2, v5}, Lcom/android/incallui/service/VideoPipService;->access$102(Lcom/android/incallui/service/VideoPipService;Z)Z

    iget-object v2, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v2}, Lcom/android/incallui/service/VideoPipService;->access$000(Lcom/android/incallui/service/VideoPipService;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
