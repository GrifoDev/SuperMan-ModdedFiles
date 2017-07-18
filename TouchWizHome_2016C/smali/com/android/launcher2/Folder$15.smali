.class Lcom/android/launcher2/Folder$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Folder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->removeAddItemPlusButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;

.field final synthetic val$button:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$15;->this$0:Lcom/android/launcher2/Folder;

    iput-object p2, p0, Lcom/android/launcher2/Folder$15;->val$button:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/Folder$15;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher2/Folder$15;->val$button:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder$15;->val$button:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Folder$15;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$900(Lcom/android/launcher2/Folder;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Folder$15;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0}, Lcom/android/launcher2/Folder;->access$900(Lcom/android/launcher2/Folder;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Folder$15;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {v0, v2}, Lcom/android/launcher2/Folder;->access$902(Lcom/android/launcher2/Folder;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Folder$15;->val$button:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Folder$15;->val$button:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method
