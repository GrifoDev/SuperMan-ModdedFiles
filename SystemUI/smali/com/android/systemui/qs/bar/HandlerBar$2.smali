.class Lcom/android/systemui/qs/bar/HandlerBar$2;
.super Ljava/lang/Object;
.source "HandlerBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/HandlerBar;->startHandlerAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/HandlerBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/HandlerBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/HandlerBar$2;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar$2;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/HandlerBar;->-get2(Lcom/android/systemui/qs/bar/HandlerBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar$2;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/HandlerBar;->-get0(Lcom/android/systemui/qs/bar/HandlerBar;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar$2;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/HandlerBar;->-get0(Lcom/android/systemui/qs/bar/HandlerBar;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar$2;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/HandlerBar;->-get1(Lcom/android/systemui/qs/bar/HandlerBar;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar$2;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/HandlerBar;->-get1(Lcom/android/systemui/qs/bar/HandlerBar;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar$2;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/bar/HandlerBar;->-wrap0(Lcom/android/systemui/qs/bar/HandlerBar;I)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 4

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar$2;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/HandlerBar;->-get1(Lcom/android/systemui/qs/bar/HandlerBar;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar$2;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/HandlerBar;->-get1(Lcom/android/systemui/qs/bar/HandlerBar;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->getStartOffset()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar$2;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/HandlerBar;->-get1(Lcom/android/systemui/qs/bar/HandlerBar;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/HandlerBar$2;->this$0:Lcom/android/systemui/qs/bar/HandlerBar;

    invoke-static {v0}, Lcom/android/systemui/qs/bar/HandlerBar;->-get1(Lcom/android/systemui/qs/bar/HandlerBar;)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
