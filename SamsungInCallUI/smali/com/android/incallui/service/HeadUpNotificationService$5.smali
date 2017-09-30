.class Lcom/android/incallui/service/HeadUpNotificationService$5;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/HeadUpNotificationService;->animateForHide()V
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

    iput-object p1, p0, Lcom/android/incallui/service/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-virtual {v0}, Lcom/android/incallui/service/HeadUpNotificationService;->onCancelAnimation()V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "HeadUpNotificationService"

    const-string v1, "animateForHide - onAnimationEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    iput-boolean v2, v0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    iput-boolean v2, v0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsPopupShowing:Z

    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/service/HeadUpNotificationService;->access$1102(Lcom/android/incallui/service/HeadUpNotificationService;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-static {v0}, Lcom/android/incallui/service/HeadUpNotificationService;->access$1200(Lcom/android/incallui/service/HeadUpNotificationService;)V

    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$5;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-virtual {v0}, Lcom/android/incallui/service/HeadUpNotificationService;->onEndAnimation()V

    return-void
.end method
