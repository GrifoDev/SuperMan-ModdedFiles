.class Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$3;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildRoundAnimation(Landroid/widget/ImageView;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$3;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$3;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$3;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    iget v1, v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->a:F

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$3;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    iget v2, v2, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->r:F

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$3;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    iget v3, v3, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$3;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    iget v4, v4, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$3;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    iget v5, v5, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setX(F)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$3;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$3;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    iget v1, v1, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->b:F

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$3;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    iget v2, v2, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->r:F

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$3;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    iget v3, v3, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$3;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    iget v4, v4, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation$3;->this$0:Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    iget v5, v5, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v3, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method
