.class Lcom/android/incallui/help/RejectCallsWithMessage$10;
.super Ljava/lang/Object;
.source "RejectCallsWithMessage.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/help/RejectCallsWithMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/RejectCallsWithMessage;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/RejectCallsWithMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/help/RejectCallsWithMessage$10;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$10;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTipBubble:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$600(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$10;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTipBubble:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$600(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$10;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mSendMsgTipBubble:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$600(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage$10;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1300(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$10;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1200(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$10;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1200(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "RejectCallsWithMessage"

    const-string v1, "mDragUpImageLayout3"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/help/RejectCallsWithMessage$10;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mDragUpImageLayout:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1200(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/RejectCallsWithMessage$10;->this$0:Lcom/android/incallui/help/RejectCallsWithMessage;

    # getter for: Lcom/android/incallui/help/RejectCallsWithMessage;->mFadingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/incallui/help/RejectCallsWithMessage;->access$1300(Lcom/android/incallui/help/RejectCallsWithMessage;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
