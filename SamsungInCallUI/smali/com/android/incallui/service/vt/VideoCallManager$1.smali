.class Lcom/android/incallui/service/vt/VideoCallManager$1;
.super Lcom/android/incallui/service/vt/VideoCallEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/service/vt/VideoCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/vt/VideoCallManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/vt/VideoCallManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/vt/VideoCallManager$1;->this$0:Lcom/android/incallui/service/vt/VideoCallManager;

    invoke-direct {p0}, Lcom/android/incallui/service/vt/VideoCallEventHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public expiredPauseCameraForActivityState()V
    .locals 2

    const-string v0, "VideoCallManager - "

    const-string v1, "expiredPauseCameraForActivityState "

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/PrivatePolicy;->setStatus(I)V

    :cond_0
    return-void
.end method

.method public expiredResumeCameraForActivityState()V
    .locals 2

    const-string v0, "VideoCallManager - "

    const-string v1, "expiredResumeCameraForActivityState "

    invoke-static {v0, v1}, Lcom/android/incallui/service/vt/VideoCallLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->PROHIBIT_CANDID_SHOT:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/PrivatePolicy;->getInstance()Lcom/android/incallui/PrivatePolicy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/incallui/PrivatePolicy;->removeStatus(I)V

    :cond_0
    return-void
.end method

.method public expiredSwapProgressing()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "VideoCallManager - expiredSwapProgressing "

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$1;->this$0:Lcom/android/incallui/service/vt/VideoCallManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/vt/VideoCallManager;->setIsSwapProgressing(Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$1;->this$0:Lcom/android/incallui/service/vt/VideoCallManager;

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->access$000(Lcom/android/incallui/service/vt/VideoCallManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/service/vt/VideoCallManager$1;->this$0:Lcom/android/incallui/service/vt/VideoCallManager;

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->access$000(Lcom/android/incallui/service/vt/VideoCallManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    iget-object v0, p0, Lcom/android/incallui/service/vt/VideoCallManager$1;->this$0:Lcom/android/incallui/service/vt/VideoCallManager;

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->access$000(Lcom/android/incallui/service/vt/VideoCallManager;)Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardUi;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/incallui/CallCardUi;->enableSwapButton(Z)V

    :cond_0
    return-void
.end method

.method public onVideoCallChanged(Lcom/android/incallui/Call;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1, p1}, Lcom/android/incallui/InCallNotifier;->notifyVideoSessionEvent(ILcom/android/incallui/Call;)V

    :cond_0
    return-void
.end method
