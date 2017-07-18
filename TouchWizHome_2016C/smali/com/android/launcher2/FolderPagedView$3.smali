.class Lcom/android/launcher2/FolderPagedView$3;
.super Ljava/lang/Object;
.source "FolderPagedView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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


# direct methods
.method constructor <init>(Lcom/android/launcher2/FolderPagedView;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/FolderPagedView$3;->this$0:Lcom/android/launcher2/FolderPagedView;

    iput p2, p0, Lcom/android/launcher2/FolderPagedView$3;->val$count:I

    iput p3, p0, Lcom/android/launcher2/FolderPagedView$3;->val$page:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v2, 0x0

    :goto_0
    iget v5, p0, Lcom/android/launcher2/FolderPagedView$3;->val$count:I

    if-ge v2, v5, :cond_3

    iget-object v5, p0, Lcom/android/launcher2/FolderPagedView$3;->this$0:Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/FolderPagedView$3;->this$0:Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/LayerDrawable;

    const v5, 0x7f110120

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    const v5, 0x7f110121

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    iget v5, p0, Lcom/android/launcher2/FolderPagedView$3;->val$page:I

    if-eq v2, v5, :cond_0

    if-eqz v0, :cond_2

    float-to-int v5, v4

    mul-int/lit16 v5, v5, 0xff

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    iget-object v5, p0, Lcom/android/launcher2/FolderPagedView$3;->this$0:Lcom/android/launcher2/FolderPagedView;

    invoke-virtual {v5, v2}, Lcom/android/launcher2/FolderPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayoutFolder;

    invoke-virtual {v5, v4}, Lcom/android/launcher2/CellLayoutFolder;->setBackgroundAlpha(F)V

    goto :goto_1

    :cond_3
    return-void
.end method
