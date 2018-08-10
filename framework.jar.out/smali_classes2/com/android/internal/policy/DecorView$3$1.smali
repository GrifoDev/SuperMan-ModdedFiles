.class Lcom/android/internal/policy/DecorView$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/DecorView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/DecorView$3;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/DecorView$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/DecorView$3$1;->this$1:Lcom/android/internal/policy/DecorView$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$3$1;->this$1:Lcom/android/internal/policy/DecorView$3;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$3;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-get5(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$3$1;->this$1:Lcom/android/internal/policy/DecorView$3;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$3;->this$0:Lcom/android/internal/policy/DecorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/DecorView;->-set0(Lcom/android/internal/policy/DecorView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/DecorView$3$1;->this$1:Lcom/android/internal/policy/DecorView$3;

    iget-object v0, v0, Lcom/android/internal/policy/DecorView$3;->this$0:Lcom/android/internal/policy/DecorView;

    invoke-static {v0}, Lcom/android/internal/policy/DecorView;->-get5(Lcom/android/internal/policy/DecorView;)Lcom/android/internal/widget/ActionBarContextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
