.class Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$5;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->animateForHide()V
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

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->onCancelAnimation()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    iput-boolean v1, v0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    iput-boolean v1, v0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->mIsPopupShowing:Z

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$1002(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    iget-object v1, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-static {v1}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->access$1100(Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->stopSelfResult(I)Z

    iget-object v0, p0, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;

    invoke-virtual {v0}, Lcom/android/incallui/phonevoicerecorder/HeadUpNotificationService;->onEndAnimation()V

    return-void
.end method
