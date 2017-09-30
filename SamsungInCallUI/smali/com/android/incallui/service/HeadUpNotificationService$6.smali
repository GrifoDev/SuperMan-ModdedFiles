.class Lcom/android/incallui/service/HeadUpNotificationService$6;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/HeadUpNotificationService;->animateForHideNotStopSelf()V
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

    iput-object p1, p0, Lcom/android/incallui/service/HeadUpNotificationService$6;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$6;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    iput-boolean v1, v0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsHideAnimationRunning:Z

    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$6;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    iput-boolean v1, v0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsPopupShowing:Z

    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$6;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/HeadUpNotificationService;->showNotificationView(Z)V

    return-void
.end method
