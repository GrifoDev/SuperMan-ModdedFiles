.class public Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;
.super Lcom/android/systemui/screenshot/CaptureEffectView;
.source "CaptureEffectViewForShutterAndMove.java"


# instance fields
.field final TAG:Ljava/lang/String;

.field private mMode:I

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineInOut70:Landroid/view/animation/Interpolator;

.field private final mSineInOut90:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/CaptureEffectView;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->TAG:Ljava/lang/String;

    iput p2, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mSineInOut33:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e99999a    # 0.3f

    invoke-direct {v0, v3, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mSineInOut70:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mSineInOut90:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private getScaleAnimation()Landroid/view/animation/ScaleAnimation;
    .locals 9

    const/4 v5, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f4ccccd    # 0.8f

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget v3, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mSineInOut90:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0

    :pswitch_0
    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v8, 0x3f000000    # 0.5f

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getTranslateAnimation()Landroid/view/animation/TranslateAnimation;
    .locals 12

    const-wide/16 v10, 0x14d

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    iget v3, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mMode:I

    packed-switch v1, :pswitch_data_1

    :goto_1
    invoke-virtual {v0, v10, v11}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    return-object v0

    :pswitch_0
    const/high16 v8, -0x40800000    # -1.0f

    goto :goto_0

    :pswitch_1
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_0

    :pswitch_2
    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mSineInOut70:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public show(Landroid/widget/ImageView;)V
    .locals 12

    const-wide/16 v10, 0x14d

    const/4 v8, 0x1

    const v6, 0x3f333333    # 0.7f

    iput-object p1, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->imageview:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->getScaleAnimation()Landroid/view/animation/ScaleAnimation;

    move-result-object v3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v5, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-direct {p0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->getTranslateAnimation()Landroid/view/animation/TranslateAnimation;

    move-result-object v4

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v5, 0x0

    invoke-direct {v1, v6, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x74

    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v1, v10, v11}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    iget-object v5, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v8}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    new-instance v5, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove$1;-><init>(Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;)V

    invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v5, p0, Lcom/android/systemui/screenshot/CaptureEffectViewForShutterAndMove;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
