.class Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;
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
    .line 463
    iput-object p1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$300(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .line 475
    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$300(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 476
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallAnswerTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$300(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$800(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$500(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .line 478
    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$500(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallRejectTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$500(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mFadingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$800(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 480
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$400(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    .line 481
    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$400(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

    # getter for: Lcom/android/incallui/help/IncomingCallWhileUsingApp;->mTutorialPopupCallEndcallTap:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/IncomingCallWhileUsingApp;->access$400(Lcom/android/incallui/help/IncomingCallWhileUsingApp;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/IncomingCallWhileUsingApp$7;->this$0:Lcom/android/incallui/help/IncomingCallWhileUsingApp;

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
    .line 470
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 466
    return-void
.end method
