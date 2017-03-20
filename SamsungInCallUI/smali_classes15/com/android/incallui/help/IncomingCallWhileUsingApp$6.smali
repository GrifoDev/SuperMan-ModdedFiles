.class Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;
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
    .line 434
    iput-object p1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v1, 0x2

    .line 447
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$300(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .line 448
    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$300(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$700(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 450
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$300(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$800(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$500(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .line 452
    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$500(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 453
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$700(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 454
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$500(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$800(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$400(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .line 456
    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$400(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mBubbleCount:I
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$700(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 458
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$400(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$6;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$800(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 443
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 438
    return-void
.end method
