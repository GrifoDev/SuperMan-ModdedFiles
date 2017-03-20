.class Lcom/android/incallui/InCallActivity$2;
.super Lcom/android/phone/common/animation/AnimationListenerAdapter;
.source "InCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallActivity;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/incallui/InCallActivity$2;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-direct {p0}, Lcom/android/phone/common/animation/AnimationListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 7
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 383
    iget-object v5, p0, Lcom/android/incallui/InCallActivity$2;->this$0:Lcom/android/incallui/InCallActivity;

    # setter for: Lcom/android/incallui/InCallActivity;->mIsSlideOutRunning:Z
    invoke-static {v5, v4}, Lcom/android/incallui/InCallActivity;->access$202(Lcom/android/incallui/InCallActivity;Z)Z

    .line 384
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 385
    .local v0, "call":Lcom/android/incallui/Call;
    iget-object v5, p0, Lcom/android/incallui/InCallActivity$2;->this$0:Lcom/android/incallui/InCallActivity;

    # invokes: Lcom/android/incallui/InCallActivity;->showDialpad(Z)V
    invoke-static {v5, v4}, Lcom/android/incallui/InCallActivity;->access$300(Lcom/android/incallui/InCallActivity;Z)V

    .line 386
    iget-object v5, p0, Lcom/android/incallui/InCallActivity$2;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a04fa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    .line 387
    .local v1, "deltaY":I
    iget-object v5, p0, Lcom/android/incallui/InCallActivity$2;->this$0:Lcom/android/incallui/InCallActivity;

    neg-int v6, v1

    # invokes: Lcom/android/incallui/InCallActivity;->setTopMarginOfDialpad(I)V
    invoke-static {v5, v6}, Lcom/android/incallui/InCallActivity;->access$100(Lcom/android/incallui/InCallActivity;I)V

    .line 388
    iget-object v5, p0, Lcom/android/incallui/InCallActivity$2;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 389
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_3

    move v2, v3

    .line 390
    .local v2, "isHolding":Z
    :goto_0
    iget-object v5, p0, Lcom/android/incallui/InCallActivity$2;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v5

    if-nez v2, :cond_4

    :goto_1
    invoke-interface {v5, v3}, Lcom/android/incallui/CallButtonUi;->enableDialpadButton(Z)V

    .line 391
    iget-object v3, p0, Lcom/android/incallui/InCallActivity$2;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/android/incallui/CallButtonUi;->returnButtonsForDialpad(Z)V

    .line 393
    .end local v2    # "isHolding":Z
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/InCallActivity$2;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->updateGradientBackground()V

    .line 394
    iget-object v3, p0, Lcom/android/incallui/InCallActivity$2;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 395
    iget-object v3, p0, Lcom/android/incallui/InCallActivity$2;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getCallButtonFragment()Lcom/android/incallui/CallButtonUi;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/incallui/CallButtonUi;->updateCallButtons(Lcom/android/incallui/Call;)V

    .line 397
    :cond_1
    if-eqz v0, :cond_2

    .line 398
    iget-object v3, p0, Lcom/android/incallui/InCallActivity$2;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    .line 400
    :cond_2
    return-void

    :cond_3
    move v2, v4

    .line 389
    goto :goto_0

    .restart local v2    # "isHolding":Z
    :cond_4
    move v3, v4

    .line 390
    goto :goto_1
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 4
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$2;->this$0:Lcom/android/incallui/InCallActivity;

    const/4 v2, 0x1

    # setter for: Lcom/android/incallui/InCallActivity;->mIsSlideOutRunning:Z
    invoke-static {v1, v2}, Lcom/android/incallui/InCallActivity;->access$202(Lcom/android/incallui/InCallActivity;Z)Z

    .line 375
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    .line 376
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 377
    iget-object v1, p0, Lcom/android/incallui/InCallActivity$2;->this$0:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallActivity;->updateStatusBarWhiteIcon(I)V

    .line 379
    :cond_0
    return-void
.end method
