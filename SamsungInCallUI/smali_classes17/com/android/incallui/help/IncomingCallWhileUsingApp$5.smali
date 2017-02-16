.class Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;
.super Ljava/lang/Object;
.source "IncomingCallWhileUsingApp.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/help/IncomingCallWhileUsingApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$300(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .line 419
    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$300(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$300(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$600(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 421
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # operator++ for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$708(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$500(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .line 423
    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$500(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 424
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$500(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$600(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 425
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # operator++ for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$708(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I

    goto :goto_0

    .line 426
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$400(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .line 427
    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$400(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$400(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFlashingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$600(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 429
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$5;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # operator++ for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$708(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 414
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 410
    return-void
.end method
