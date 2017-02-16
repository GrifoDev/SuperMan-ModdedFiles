.class Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;
.super Ljava/lang/Object;
.source "AcceptingAndRejectingCalls.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/help/AcceptingAndRejectingCalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;


# direct methods
.method constructor <init>(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # getter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$200(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    .line 250
    # getter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$200(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # getter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTabView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$200(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # getter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$700(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # getter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$500(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    .line 253
    # getter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$500(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 254
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # getter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapAccept:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$500(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # getter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$700(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # getter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$600(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    .line 256
    # getter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$600(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # getter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mHelpTapReject:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$600(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/help/AcceptingAndRejectingCalls$4;->this$0:Lcom/android/incallui/help/AcceptingAndRejectingCalls;

    # getter for: Lcom/android/incallui/help/AcceptingAndRejectingCalls;->mFadingAnimation:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/android/incallui/help/AcceptingAndRejectingCalls;->access$700(Lcom/android/incallui/help/AcceptingAndRejectingCalls;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 245
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 241
    return-void
.end method
