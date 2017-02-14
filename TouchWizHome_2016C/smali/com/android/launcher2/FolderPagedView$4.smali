.class Lcom/android/launcher2/FolderPagedView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FolderPagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/FolderPagedView;->animatePageBackground(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/FolderPagedView;

.field final synthetic val$count:I

.field final synthetic val$page:I

.field final synthetic val$to:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderPagedView;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FolderPagedView$4;->this$0:Lcom/android/launcher2/FolderPagedView;

    iput p2, p0, Lcom/android/launcher2/FolderPagedView$4;->val$count:I

    iput p3, p0, Lcom/android/launcher2/FolderPagedView$4;->val$page:I

    iput p4, p0, Lcom/android/launcher2/FolderPagedView$4;->val$to:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/FolderPagedView$4;->this$0:Lcom/android/launcher2/FolderPagedView;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/launcher2/FolderPagedView;->access$102(Lcom/android/launcher2/FolderPagedView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Lcom/android/launcher2/FolderPagedView$4;->val$count:I

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher2/FolderPagedView$4;->this$0:Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/launcher2/FolderPagedView$4;->this$0:Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v4, v2}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const v4, 0x7f10011c

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    const v4, 0x7f10011d

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iget v4, p0, Lcom/android/launcher2/FolderPagedView$4;->val$page:I

    if-eq v2, v4, :cond_0

    if-eqz v0, :cond_2

    iget v4, p0, Lcom/android/launcher2/FolderPagedView$4;->val$to:I

    mul-int/lit16 v4, v4, 0xff

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/FolderPagedView$4;->this$0:Lcom/android/launcher2/FolderPagedView;

    const/4 v5, 0x0

    # setter for: Lcom/android/launcher2/FolderPagedView;->mBackgroundAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v4, v5}, Lcom/android/launcher2/FolderPagedView;->access$102(Lcom/android/launcher2/FolderPagedView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
