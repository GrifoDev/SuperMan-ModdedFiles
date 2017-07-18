.class Lcom/android/incallui/service/SecCallPopupService$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecCallPopupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupService;->onAnswerWithWaitingCheck()V
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

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupService$5;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 7

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$5;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupService;->access$500(Lcom/android/incallui/service/SecCallPopupService;)Lcom/android/incallui/service/SecCallPopupWaitingCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupWaitingCall;->controlWaitingCall()V

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$5;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iget-object v1, v1, Lcom/android/incallui/service/SecCallPopupService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$5;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iput-boolean v6, v1, Lcom/android/incallui/service/SecCallPopupService;->mIsHideAnimationRunning:Z

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$5;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    iput-boolean v6, v1, Lcom/android/incallui/service/SecCallPopupService;->mIsPopupShowing:Z

    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v6}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupService$5;->this$0:Lcom/android/incallui/service/SecCallPopupService;

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->stopSelf()V

    goto :goto_1
.end method
