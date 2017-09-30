.class Lcom/andraskindler/quickscroll/TwLangIndexScrollView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->startAnimation(Ljava/lang/Object;IIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

.field final synthetic val$animSet:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$1;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    iput-object p2, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$1;->val$animSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$1;->val$animSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$1;->val$animSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$1;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1302(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Z)Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$1;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    invoke-static {v0}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1400(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    iget-object v0, p0, Lcom/andraskindler/quickscroll/TwLangIndexScrollView$1;->this$0:Lcom/andraskindler/quickscroll/TwLangIndexScrollView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/andraskindler/quickscroll/TwLangIndexScrollView;->access$1302(Lcom/andraskindler/quickscroll/TwLangIndexScrollView;Z)Z

    return-void
.end method
