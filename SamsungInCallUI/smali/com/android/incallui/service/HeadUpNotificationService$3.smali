.class Lcom/android/incallui/service/HeadUpNotificationService$3;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/HeadUpNotificationService;->animateForShow()V
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

    iput-object p1, p0, Lcom/android/incallui/service/HeadUpNotificationService$3;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$3;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-static {v0}, Lcom/android/incallui/service/HeadUpNotificationService;->access$700(Lcom/android/incallui/service/HeadUpNotificationService;)Lcom/android/incallui/service/HeadUpNotificationView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$3;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    iput-boolean v2, v0, Lcom/android/incallui/service/HeadUpNotificationService;->mCanSlideOut:Z

    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$3;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-static {v0}, Lcom/android/incallui/service/HeadUpNotificationService;->access$700(Lcom/android/incallui/service/HeadUpNotificationService;)Lcom/android/incallui/service/HeadUpNotificationView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/HeadUpNotificationView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$3;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsShowAnimationRunning:Z

    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$3;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    iput-boolean v2, v0, Lcom/android/incallui/service/HeadUpNotificationService;->mIsPopupShowing:Z

    iget-object v0, p0, Lcom/android/incallui/service/HeadUpNotificationService$3;->this$0:Lcom/android/incallui/service/HeadUpNotificationService;

    invoke-virtual {v0}, Lcom/android/incallui/service/HeadUpNotificationService;->onShowPopup()V

    :cond_0
    return-void
.end method
