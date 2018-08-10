.class Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$3;
.super Ljava/lang/Object;
.source "DetailsBackgroundVideoHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->crossFadeBackgroundToVideo(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$3;->this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper$3;->this$0:Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;

    invoke-static {v0}, Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;->-get0(Landroid/support/v17/leanback/app/DetailsBackgroundVideoHelper;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method
