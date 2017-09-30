.class Lcom/android/incallui/service/SecCallPopupService$6;
.super Landroid/animation/AnimatorListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupService;->launchFullScreen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupService;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupService$6;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$6;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iput-boolean v1, v0, Lcom/android/incallui/service/SecCallPopupService;->mIsHideAnimationRunning:Z

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$6;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iput-boolean v1, v0, Lcom/android/incallui/service/SecCallPopupService;->mIsPopupShowing:Z

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$6;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-static {v0}, Lcom/android/incallui/service/SecCallPopupService;->access$700(Lcom/android/incallui/service/SecCallPopupService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$6;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/service/SecCallPopupService;->access$702(Lcom/android/incallui/service/SecCallPopupService;Z)Z

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$6;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    iget-object v0, p0, Lcom/android/incallui/service/SecCallPopupService$6;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupService;->showInCallUI()V

    :cond_0
    return-void
.end method
