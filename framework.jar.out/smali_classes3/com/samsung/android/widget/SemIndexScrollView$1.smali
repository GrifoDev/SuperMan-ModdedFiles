.class Lcom/samsung/android/widget/SemIndexScrollView$1;
.super Ljava/lang/Object;
.source "SemIndexScrollView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/widget/SemIndexScrollView;->startAnimation(Ljava/lang/Object;IIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/widget/SemIndexScrollView;

.field final synthetic val$animSet:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/samsung/android/widget/SemIndexScrollView;Landroid/animation/AnimatorSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemIndexScrollView;
    .param p2, "val$animSet"    # Landroid/animation/AnimatorSet;

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$1;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    iput-object p2, p0, Lcom/samsung/android/widget/SemIndexScrollView$1;->val$animSet:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1132
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$1;->val$animSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1139
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$1;->val$animSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1140
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$1;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemIndexScrollView;->-set0(Lcom/samsung/android/widget/SemIndexScrollView;Z)Z

    .line 1137
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/Animator;

    .prologue
    .line 1149
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$1;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/widget/SemIndexScrollView;->-set0(Lcom/samsung/android/widget/SemIndexScrollView;Z)Z

    .line 1144
    return-void
.end method
