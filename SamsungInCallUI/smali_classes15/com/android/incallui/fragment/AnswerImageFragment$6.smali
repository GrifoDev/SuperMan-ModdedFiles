.class Lcom/android/incallui/fragment/AnswerImageFragment$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AnswerImageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/AnswerImageFragment;->animateForAnswerCall(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/AnswerImageFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/AnswerImageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/AnswerImageFragment;

    .prologue
    .line 553
    iput-object p1, p0, Lcom/android/incallui/fragment/AnswerImageFragment$6;->this$0:Lcom/android/incallui/fragment/AnswerImageFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 556
    iget-object v2, p0, Lcom/android/incallui/fragment/AnswerImageFragment$6;->this$0:Lcom/android/incallui/fragment/AnswerImageFragment;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/incallui/fragment/AnswerImageFragment;->mIsAnswerAnimationRunning:Z

    .line 557
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 558
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/bike/BikeModeUtils;->isBikeCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 560
    :cond_1
    if-eqz v0, :cond_0

    .line 561
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 562
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 563
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->sendMsgCallListChange()V

    .line 565
    const-string v2, "voice_call_recording"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 566
    invoke-static {}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getInstance()Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    move-result-object v1

    .line 567
    .local v1, "recorderMgr":Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->updateRecorderState()V

    goto :goto_0
.end method
