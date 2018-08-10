.class Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;
.super Ljava/lang/Object;
.source "SmallBall.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->startComplete(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;

.field final synthetic val$anim:Landroid/animation/ValueAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;

    iput-object p2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;->val$anim:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 12

    const-wide v10, 0x4066800000000000L    # 180.0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;

    iget v4, v4, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mVelocity:F

    mul-float v0, v1, v4

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;

    iget-object v5, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;

    iget v5, v5, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mOx:F

    iget-object v6, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;

    iget v6, v6, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAngle:F

    float-to-double v6, v6

    mul-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, v4, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mX:F

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;

    iget-object v5, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;

    iget v5, v5, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mOy:F

    iget-object v6, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;

    iget v6, v6, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mAngle:F

    float-to-double v6, v6

    mul-double/2addr v6, v8

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v0

    add-float/2addr v5, v6

    iput v5, v4, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mY:F

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;->val$anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    long-to-float v4, v4

    iget-object v5, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;->val$anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v6

    long-to-float v5, v6

    div-float v3, v4, v5

    sget-object v4, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->PARTICLE_SIZE_COMPLETE:Landroid/view/animation/Interpolator;

    invoke-interface {v4, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;

    iget-object v5, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;

    iget v5, v5, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mOsize:F

    iget-object v6, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;

    iget v6, v6, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mOsize:F

    mul-float/2addr v6, v2

    sub-float/2addr v5, v6

    iput v5, v4, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mSize:F

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;->this$0:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;

    iget-object v5, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall$2;->val$anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v6

    long-to-float v5, v6

    iput v5, v4, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->mCurrentLifeTime:F

    return-void
.end method
