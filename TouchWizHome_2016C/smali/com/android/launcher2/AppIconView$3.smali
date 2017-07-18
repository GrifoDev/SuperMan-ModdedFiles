.class Lcom/android/launcher2/AppIconView$3;
.super Ljava/lang/Object;
.source "AppIconView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    iput-object p1, p0, Lcom/android/launcher2/AppIconView$3;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher2/AppIconView$3;->this$0:Lcom/android/launcher2/AppIconView;

    float-to-int v2, v0

    iput v2, v1, Lcom/android/launcher2/AppIconView;->mPrevIconSize:I

    iget-object v1, p0, Lcom/android/launcher2/AppIconView$3;->this$0:Lcom/android/launcher2/AppIconView;

    iget-object v1, v1, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/AppIconView$3;->this$0:Lcom/android/launcher2/AppIconView;

    new-instance v2, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v3, p0, Lcom/android/launcher2/AppIconView$3;->this$0:Lcom/android/launcher2/AppIconView;

    iget-object v3, v3, Lcom/android/launcher2/AppIconView;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/launcher2/AppIconView$3;->this$0:Lcom/android/launcher2/AppIconView;

    iget v4, v4, Lcom/android/launcher2/AppIconView;->mPrevIconSize:I

    iget-object v5, p0, Lcom/android/launcher2/AppIconView$3;->this$0:Lcom/android/launcher2/AppIconView;

    iget v5, v5, Lcom/android/launcher2/AppIconView;->mPrevIconSize:I

    invoke-direct {v2, v3, v4, v5}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-static {v1, v2}, Lcom/android/launcher2/AppIconView;->access$102(Lcom/android/launcher2/AppIconView;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/AppIconView$3;->this$0:Lcom/android/launcher2/AppIconView;

    iget-object v2, p0, Lcom/android/launcher2/AppIconView$3;->this$0:Lcom/android/launcher2/AppIconView;

    invoke-static {v2}, Lcom/android/launcher2/AppIconView;->access$100(Lcom/android/launcher2/AppIconView;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v6, v2, v6, v6}, Lcom/android/launcher2/AppIconView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
