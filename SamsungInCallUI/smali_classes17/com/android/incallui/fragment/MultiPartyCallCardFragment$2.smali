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
    .param p1, "this$0"    # Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    .prologue
    .line 1827
    iput-object p1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    .line 1835
    const-string v1, "MultiPartyCallCardFragment"

    const-string v2, "swap animation end..."

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1836
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 1838
    .local v0, "call":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->hasHoldCall()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1839
    const-string v1, "MultiPartyCallCardFragment"

    const-string v2, "syh there is no hold call"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1850
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1851
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mPrimaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1853
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1854
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 1856
    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    iget-object v1, v1, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1857
    return-void

    .line 1841
    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    # getter for: Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTargetedCallIdforSwap:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->access$000(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    # getter for: Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTargetedCallIdforSwap:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->access$000(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1842
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto :goto_0

    .line 1844
    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    # getter for: Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTargetedCallIdforSwap:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->access$000(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1845
    const-string v1, "MultiPartyCallCardFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callid is not same TargetedCallId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/fragment/MultiPartyCallCardFragment$2;->this$0:Lcom/android/incallui/fragment/MultiPartyCallCardFragment;

    # getter for: Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->mTargetedCallIdforSwap:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/incallui/fragment/MultiPartyCallCardFragment;->access$000(Lcom/android/incallui/fragment/MultiPartyCallCardFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1830
    const-string v0, "MultiPartyCallCardFragment"

    const-string v1, "swap animation start..."

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1831
    return-void
.end method
