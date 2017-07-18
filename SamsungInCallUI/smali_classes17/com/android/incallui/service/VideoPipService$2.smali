.class Lcom/android/incallui/service/VideoPipService$2;
.super Ljava/lang/Object;
.source "VideoPipService.java"

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
    .locals 10

    const/16 v6, 0x14

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v9

    :pswitch_1
    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {v4, v8}, Lcom/android/incallui/service/VideoPipService;->onFocus(Z)V

    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v4}, Lcom/android/incallui/service/VideoPipService;->access$000(Lcom/android/incallui/service/VideoPipService;)V

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v4}, Lcom/android/incallui/service/VideoPipService;->access$100(Lcom/android/incallui/service/VideoPipService;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v4}, Lcom/android/incallui/service/VideoPipService;->access$200(Lcom/android/incallui/service/VideoPipService;)J

    move-result-wide v4

    sub-long v4, v0, v4

    const-wide/16 v6, 0xc8

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {v4}, Lcom/android/incallui/service/VideoPipService;->onTouchEventUp()V

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {v4, v8}, Lcom/android/incallui/service/VideoPipService;->onFocus(Z)V

    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v4}, Lcom/android/incallui/service/VideoPipService;->access$000(Lcom/android/incallui/service/VideoPipService;)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v4, v6, v7}, Lcom/android/incallui/service/VideoPipService;->access$202(Lcom/android/incallui/service/VideoPipService;J)J

    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v4, v8}, Lcom/android/incallui/service/VideoPipService;->access$102(Lcom/android/incallui/service/VideoPipService;Z)Z

    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {v4, v9}, Lcom/android/incallui/service/VideoPipService;->onFocus(Z)V

    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-static {v4, v5}, Lcom/android/incallui/service/VideoPipService;->access$302(Lcom/android/incallui/service/VideoPipService;F)F

    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-static {v4, v5}, Lcom/android/incallui/service/VideoPipService;->access$402(Lcom/android/incallui/service/VideoPipService;F)F

    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    iget-object v5, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    iget-object v5, v5, Lcom/android/incallui/service/VideoPipService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v4, v5}, Lcom/android/incallui/service/VideoPipService;->access$502(Lcom/android/incallui/service/VideoPipService;I)I

    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    iget-object v5, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    iget-object v5, v5, Lcom/android/incallui/service/VideoPipService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {v4, v5}, Lcom/android/incallui/service/VideoPipService;->access$602(Lcom/android/incallui/service/VideoPipService;I)I

    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {v4}, Lcom/android/incallui/service/VideoPipService;->onTouchEventDown()V

    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v4}, Lcom/android/incallui/service/VideoPipService;->access$700(Lcom/android/incallui/service/VideoPipService;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v5}, Lcom/android/incallui/service/VideoPipService;->access$300(Lcom/android/incallui/service/VideoPipService;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v2, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v5}, Lcom/android/incallui/service/VideoPipService;->access$400(Lcom/android/incallui/service/VideoPipService;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v3, v4

    if-ge v2, v6, :cond_1

    if-ge v3, v6, :cond_1

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    iget-object v4, v4, Lcom/android/incallui/service/VideoPipService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v5}, Lcom/android/incallui/service/VideoPipService;->access$500(Lcom/android/incallui/service/VideoPipService;)I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    iget-object v4, v4, Lcom/android/incallui/service/VideoPipService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v5}, Lcom/android/incallui/service/VideoPipService;->access$600(Lcom/android/incallui/service/VideoPipService;)I

    move-result v5

    add-int/2addr v5, v3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-virtual {v4}, Lcom/android/incallui/service/VideoPipService;->updateViewLayout()V

    goto/16 :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v4, v9}, Lcom/android/incallui/service/VideoPipService;->access$102(Lcom/android/incallui/service/VideoPipService;Z)Z

    iget-object v4, p0, Lcom/android/incallui/service/VideoPipService$2;->this$0:Lcom/android/incallui/service/VideoPipService;

    invoke-static {v4}, Lcom/android/incallui/service/VideoPipService;->access$000(Lcom/android/incallui/service/VideoPipService;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
