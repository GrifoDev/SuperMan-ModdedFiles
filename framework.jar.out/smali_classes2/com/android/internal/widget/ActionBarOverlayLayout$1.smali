.class Lcom/android/internal/widget/ActionBarOverlayLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarOverlayLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarOverlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarOverlayLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ActionBarOverlayLayout;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-set2(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 101
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-set0(Lcom/android/internal/widget/ActionBarOverlayLayout;Z)Z

    .line 99
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-set2(Lcom/android/internal/widget/ActionBarOverlayLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 95
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarOverlayLayout$1;->this$0:Lcom/android/internal/widget/ActionBarOverlayLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->-set0(Lcom/android/internal/widget/ActionBarOverlayLayout;Z)Z

    .line 93
    return-void
.end method
