.class Lcom/android/incallui/service/HeadUpNotificationService$1;
.super Ljava/lang/Object;
.source "HeadUpNotificationService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/HeadUpNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/HeadUpNotificationService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/HeadUpNotificationService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const-string v6, "HeadUpNotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouch "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/service/HeadUpNotificationService;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v6}, Lcom/android/incallui/service/HeadUpNotificationService;->access$000(Lcom/android/incallui/service/HeadUpNotificationService;)Landroid/view/GestureDetector;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/service/HeadUpNotificationService;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v6}, Lcom/android/incallui/service/HeadUpNotificationService;->access$000(Lcom/android/incallui/service/HeadUpNotificationService;)Landroid/view/GestureDetector;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    iget-boolean v6, v6, Lcom/android/incallui/service/HeadUpNotificationService;->mIsShowAnimationRunning:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    iget-boolean v6, v6, Lcom/android/incallui/service/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    if-eqz v6, :cond_2

    :cond_1
    const-string v6, "HeadUpNotificationService"

    const-string v7, "Animation is running..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    iget-boolean v6, v6, Lcom/android/incallui/service/HeadUpNotificationService;->mDoLaunchFullScreen:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-virtual {v6}, Lcom/android/incallui/service/HeadUpNotificationService;->launchFullScreen()V

    goto :goto_1

    :cond_3
    :pswitch_1
    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-virtual {v6}, Lcom/android/incallui/service/HeadUpNotificationService;->resetViewLayout()V

    goto :goto_1

    :pswitch_2
    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    # setter for: Lcom/android/incallui/service/HeadUpNotificationService;->mStartPointX:F
    invoke-static {v6, v7}, Lcom/android/incallui/service/HeadUpNotificationService;->access$102(Lcom/android/incallui/service/HeadUpNotificationService;F)F

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    # setter for: Lcom/android/incallui/service/HeadUpNotificationService;->mStartPointY:F
    invoke-static {v6, v7}, Lcom/android/incallui/service/HeadUpNotificationService;->access$202(Lcom/android/incallui/service/HeadUpNotificationService;F)F

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    iget-object v7, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v7}, Lcom/android/incallui/service/HeadUpNotificationService;->access$400(Lcom/android/incallui/service/HeadUpNotificationService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    # setter for: Lcom/android/incallui/service/HeadUpNotificationService;->mViewPointX:I
    invoke-static {v6, v7}, Lcom/android/incallui/service/HeadUpNotificationService;->access$302(Lcom/android/incallui/service/HeadUpNotificationService;I)I

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/incallui/service/HeadUpNotificationService;->mDoLaunchFullScreen:Z

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget-object v7, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/service/HeadUpNotificationService;->mStartPointX:F
    invoke-static {v7}, Lcom/android/incallui/service/HeadUpNotificationService;->access$100(Lcom/android/incallui/service/HeadUpNotificationService;)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v2, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    iget-object v7, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/service/HeadUpNotificationService;->mStartPointY:F
    invoke-static {v7}, Lcom/android/incallui/service/HeadUpNotificationService;->access$200(Lcom/android/incallui/service/HeadUpNotificationService;)F

    move-result v7

    sub-float/2addr v6, v7

    float-to-int v3, v6

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lcom/android/incallui/service/HeadUpNotificationService;->access$400(Lcom/android/incallui/service/HeadUpNotificationService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/service/HeadUpNotificationService;->mViewPointX:I
    invoke-static {v7}, Lcom/android/incallui/service/HeadUpNotificationService;->access$300(Lcom/android/incallui/service/HeadUpNotificationService;)I

    move-result v7

    add-int/2addr v7, v2

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/service/HeadUpNotificationService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v6}, Lcom/android/incallui/service/HeadUpNotificationService;->access$500(Lcom/android/incallui/service/HeadUpNotificationService;)Landroid/view/WindowManager;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;
    invoke-static {v6}, Lcom/android/incallui/service/HeadUpNotificationService;->access$600(Lcom/android/incallui/service/HeadUpNotificationService;)Lcom/android/incallui/service/HeadUpNotificationView;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-virtual {v6}, Lcom/android/incallui/service/HeadUpNotificationService;->getMaxX()I

    move-result v6

    int-to-float v4, v6

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lcom/android/incallui/service/HeadUpNotificationService;->access$400(Lcom/android/incallui/service/HeadUpNotificationService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    int-to-float v6, v3

    cmpl-float v6, v0, v6

    if-lez v6, :cond_a

    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-lez v6, :cond_a

    cmpg-float v6, v0, v4

    if-gez v6, :cond_a

    div-float v5, v0, v4

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    iget-boolean v6, v6, Lcom/android/incallui/service/HeadUpNotificationService;->mCanSlideOut:Z

    if-eqz v6, :cond_5

    const v6, 0x3ecccccd    # 0.4f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_5

    iget-object v7, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/service/HeadUpNotificationService;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v6}, Lcom/android/incallui/service/HeadUpNotificationService;->access$400(Lcom/android/incallui/service/HeadUpNotificationService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    if-gez v6, :cond_4

    const/4 v6, 0x1

    :goto_2
    # invokes: Lcom/android/incallui/service/HeadUpNotificationService;->animateForSlideOut(Z)V
    invoke-static {v7, v6}, Lcom/android/incallui/service/HeadUpNotificationService;->access$700(Lcom/android/incallui/service/HeadUpNotificationService;Z)V

    goto/16 :goto_1

    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    :cond_5
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v1, v6, v5

    :cond_6
    :goto_3
    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/service/HeadUpNotificationService;->mHeadUpNotificationView:Lcom/android/incallui/service/HeadUpNotificationView;
    invoke-static {v6}, Lcom/android/incallui/service/HeadUpNotificationService;->access$600(Lcom/android/incallui/service/HeadUpNotificationService;)Lcom/android/incallui/service/HeadUpNotificationView;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/incallui/service/HeadUpNotificationView;->setAlpha(F)V

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-le v6, v7, :cond_7

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x100

    if-ge v6, v7, :cond_7

    const/16 v6, 0x100

    if-le v3, v6, :cond_7

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/service/HeadUpNotificationService;->mStatusBarManager:Landroid/app/SemStatusBarManager;
    invoke-static {v6}, Lcom/android/incallui/service/HeadUpNotificationService;->access$800(Lcom/android/incallui/service/HeadUpNotificationService;)Landroid/app/SemStatusBarManager;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    # getter for: Lcom/android/incallui/service/HeadUpNotificationService;->mStatusBarManager:Landroid/app/SemStatusBarManager;
    invoke-static {v6}, Lcom/android/incallui/service/HeadUpNotificationService;->access$800(Lcom/android/incallui/service/HeadUpNotificationService;)Landroid/app/SemStatusBarManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/SemStatusBarManager;->expandNotificationsPanel()V

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    iget-boolean v6, v6, Lcom/android/incallui/service/HeadUpNotificationService;->mCanSlideOut:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/incallui/service/HeadUpNotificationService;->mIsPopupShowing:Z

    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-virtual {v6}, Lcom/android/incallui/service/HeadUpNotificationService;->stopSelf()V

    :cond_7
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x40

    if-gt v6, v7, :cond_8

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x40

    if-le v6, v7, :cond_9

    :cond_8
    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/incallui/service/HeadUpNotificationService;->mDoLaunchFullScreen:Z

    :cond_9
    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-virtual {v6}, Lcom/android/incallui/service/HeadUpNotificationService;->updateViewLayout()V

    goto/16 :goto_1

    :cond_a
    iget-object v6, p0, Lcom/android/incallui/service/HeadUpNotificationService$1;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    iget-boolean v6, v6, Lcom/android/incallui/service/HeadUpNotificationService;->mCanSlideOut:Z

    if-eqz v6, :cond_6

    int-to-float v6, v3

    cmpl-float v6, v6, v0

    if-lez v6, :cond_6

    if-lez v3, :cond_6

    int-to-float v6, v3

    const/high16 v7, 0x43800000    # 256.0f

    div-float v5, v6, v7

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v1, v6, v5

    const/4 v6, 0x0

    cmpg-float v6, v1, v6

    if-gez v6, :cond_6

    const/4 v1, 0x0

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
