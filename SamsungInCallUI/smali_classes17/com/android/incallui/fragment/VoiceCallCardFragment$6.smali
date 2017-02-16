.class Lcom/android/incallui/fragment/VoiceCallCardFragment$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoiceCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallCardFragment;->animateForMoveInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/fragment/VoiceCallCardFragment;

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x0

    .line 1157
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 1158
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1159
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1160
    const-string v1, "VoiceCallCardFragment"

    const-string v2, "animateForMoveInfo: onAnimationEnd"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1161
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    # setter for: Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIsMoveInfoAnimationRunning:Z
    invoke-static {v1, v4}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->access$002(Lcom/android/incallui/fragment/VoiceCallCardFragment;Z)Z

    .line 1162
    iget-object v1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$6;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    # invokes: Lcom/android/incallui/fragment/VoiceCallCardFragment;->updatePanelForCallState(I)V
    invoke-static {v1, v2}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->access$100(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    .line 1164
    :cond_0
    return-void
.end method
