.class public Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;
.super Lcom/android/systemui/screenshot/CaptureEffectView;
.source "CaptureEffectViewForShutterRevert.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private final mCustomInterpolator:Landroid/view/animation/Interpolator;

.field private final mSineInOut70:Landroid/view/animation/Interpolator;

.field private mZoomInRatio:F

.field private mZoomOutRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    const v6, 0x3f333333    # 0.7f

    const/4 v5, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CaptureEffectView;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->TAG:Ljava/lang/String;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v1, v2, v5, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->mSineInOut70:Landroid/view/animation/Interpolator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    invoke-direct {v1, v6, v5, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->mCustomInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x3f666666    # 0.9f

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x3f7851ec    # 0.97f

    :cond_0
    mul-float v1, v4, v0

    iput v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->mZoomInRatio:F

    div-float v1, v4, v0

    iput v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->mZoomOutRatio:F

    return-void
.end method


# virtual methods
.method public show(Landroid/widget/ImageView;)V
    .locals 11

    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->imageview:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget v2, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->mZoomInRatio:F

    iget v4, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->mZoomInRatio:F

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->mSineInOut70:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Landroid/view/animation/ScaleAnimation;

    iget v3, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->mZoomOutRatio:F

    iget v5, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->mZoomOutRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0xa7

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v2, 0xd9

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->mCustomInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x1

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v2, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert$1;-><init>(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterRevert;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
