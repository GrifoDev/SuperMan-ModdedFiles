.class Lcom/android/incallui/service/HeadUpNotificationService$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HeadUpNotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/HeadUpNotificationService;->animateForSlideOut(Z)V
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
    .param p1, "this$0"    # Lcom/android/incallui/service/HeadUpNotificationService;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/android/incallui/service/HeadUpNotificationService$4;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 438
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 439
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v1, 0x0

    .line 430
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$4;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    iput-boolean v1, v0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    .line 431
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$4;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    iput-boolean v1, v0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsPopupShowing:Z

    .line 432
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$4;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-virtual {v0}, Lcom/android/incallui/service/HeadUpNotificationService;->stopSelf()V

    .line 433
    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$4;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-virtual {v0}, Lcom/android/incallui/service/HeadUpNotificationService;->onEndAnimation()V

    .line 434
    return-void
.end method
