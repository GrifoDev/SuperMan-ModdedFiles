.class Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiPartyCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->animateForSwap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const-string v3, "MultiPartyCallCardFragment"

    const-string v4, "swap animation end..."

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->needToShowSwapButton()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    iget-object v3, v3, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x67

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "MultiPartyCallCardFragment"

    const-string v4, "syh there is no hold call"

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    # getter for: Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTargetedCallIdforSwap:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->access$000(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    # getter for: Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTargetedCallIdforSwap:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->access$000(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    # getter for: Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTargetedCallIdforSwap:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->access$000(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "MultiPartyCallCardFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callid is not same TargetedCallId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    # getter for: Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTargetedCallIdforSwap:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->access$000(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", callID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "swap animation start..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
