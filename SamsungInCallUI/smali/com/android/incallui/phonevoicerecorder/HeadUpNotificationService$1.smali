.class Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;


# direct methods
.method constructor <init>(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/16 v9, 0x40

    const/4 v0, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v4, "HeadUpNotificationService"

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

    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-static {v4}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$000(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)Landroid/view/GestureDetector;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-static {v4}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$000(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)Landroid/view/GestureDetector;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    iget-boolean v4, v4, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mIsShowAnimationRunning:Z

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    iget-boolean v4, v4, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    if-eqz v4, :cond_2

    :cond_1
    const-string v0, "HeadUpNotificationService"

    const-string v2, "Animation is running..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-static {v0, v2}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$102(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;F)F

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v0, v2}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$202(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;F)F

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-static {v2}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$400(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-static {v0, v2}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$302(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;I)I

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    iput-boolean v1, v0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mDoLaunchFullScreen:Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    iget-boolean v0, v0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mDoLaunchFullScreen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->launchFullScreen()V

    goto :goto_0

    :cond_3
    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->resetViewLayout()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iget-object v5, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-static {v5}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$100(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    iget-object v6, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-static {v6}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$200(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)F

    move-result v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-static {v6}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$400(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-static {v7}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$300(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)I

    move-result v7

    add-int/2addr v7, v4

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-static {v6}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$500(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)Landroid/view/WindowManager;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-static {v6}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$600(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-virtual {v6}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->getMaxX()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-static {v7}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$400(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    int-to-float v8, v5

    cmpl-float v8, v7, v8

    if-lez v8, :cond_a

    cmpl-float v8, v7, v2

    if-lez v8, :cond_a

    cmpg-float v8, v7, v6

    if-gez v8, :cond_a

    div-float v2, v7, v6

    iget-object v6, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    iget-boolean v6, v6, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mCanSlideOut:Z

    if-eqz v6, :cond_5

    const v6, 0x3ecccccd    # 0.4f

    cmpl-float v6, v2, v6

    if-lez v6, :cond_5

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    iget-object v3, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-static {v3}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$400(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v3, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$700(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;Z)V

    goto/16 :goto_0

    :cond_5
    sub-float v2, v3, v2

    :cond_6
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-static {v3}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$600(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationView;->setAlpha(F)V

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v2, v3, :cond_7

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x100

    if-ge v2, v3, :cond_7

    const/16 v2, 0x100

    if-le v5, v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-static {v2}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$800(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)Landroid/app/SemStatusBarManager;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-static {v2}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$800(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)Landroid/app/SemStatusBarManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/SemStatusBarManager;->expandNotificationsPanel()V

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    iget-boolean v2, v2, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mCanSlideOut:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    iput-boolean v0, v2, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mIsPopupShowing:Z

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-virtual {v2}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->stopSelf()V

    :cond_7
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gt v2, v9, :cond_8

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v9, :cond_9

    :cond_8
    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    iput-boolean v0, v2, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mDoLaunchFullScreen:Z

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->updateViewLayout()V

    goto/16 :goto_0

    :cond_a
    iget-object v6, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    iget-boolean v6, v6, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mCanSlideOut:Z

    if-eqz v6, :cond_b

    int-to-float v6, v5

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b

    if-lez v5, :cond_b

    int-to-float v6, v5

    const/high16 v7, 0x43800000    # 256.0f

    div-float/2addr v6, v7

    sub-float/2addr v3, v6

    cmpg-float v6, v3, v2

    if-ltz v6, :cond_6

    :cond_b
    move v2, v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
