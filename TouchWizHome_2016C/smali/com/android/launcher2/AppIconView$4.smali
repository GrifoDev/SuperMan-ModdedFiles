.class Lcom/android/launcher2/AppIconView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/AppIconView;->setIcon(Landroid/graphics/Bitmap;ILcom/android/launcher2/PreloadIconDrawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AppIconView;


# direct methods
.method constructor <init>(Lcom/android/launcher2/AppIconView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AppIconView$4;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppIconView$4;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/launcher2/AppIconView$4;->this$0:Lcom/android/launcher2/AppIconView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher2/AppIconView;->mIconScaleChanging:Z

    iget-object v0, p0, Lcom/android/launcher2/AppIconView$4;->this$0:Lcom/android/launcher2/AppIconView;

    iget-object v1, p0, Lcom/android/launcher2/AppIconView$4;->this$0:Lcom/android/launcher2/AppIconView;

    iget v1, v1, Lcom/android/launcher2/AppIconView;->mIconSize:I

    iput v1, v0, Lcom/android/launcher2/AppIconView;->mPrevIconSize:I

    iget-object v0, p0, Lcom/android/launcher2/AppIconView$4;->this$0:Lcom/android/launcher2/AppIconView;

    iget-object v0, v0, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AppIconView$4;->this$0:Lcom/android/launcher2/AppIconView;

    new-instance v1, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v2, p0, Lcom/android/launcher2/AppIconView$4;->this$0:Lcom/android/launcher2/AppIconView;

    iget-object v2, v2, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/launcher2/AppIconView$4;->this$0:Lcom/android/launcher2/AppIconView;

    iget v3, v3, Lcom/android/launcher2/AppIconView;->mIconSize:I

    iget-object v4, p0, Lcom/android/launcher2/AppIconView$4;->this$0:Lcom/android/launcher2/AppIconView;

    iget v4, v4, Lcom/android/launcher2/AppIconView;->mIconSize:I

    invoke-direct {v1, v2, v3, v4}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-static {v0, v1}, Lcom/android/launcher2/AppIconView;->access$102(Lcom/android/launcher2/AppIconView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/AppIconView$4;->this$0:Lcom/android/launcher2/AppIconView;

    iget-object v1, p0, Lcom/android/launcher2/AppIconView$4;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-static {v1}, Lcom/android/launcher2/AppIconView;->access$100(Lcom/android/launcher2/AppIconView;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v5, v1, v5, v5}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
