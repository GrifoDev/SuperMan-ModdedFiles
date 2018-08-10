.class public Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;
.super Ljava/lang/Object;
.source "InterpolatorHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper$1;
    }
.end annotation


# static fields
.field public static final ACCELATE:Landroid/view/animation/Interpolator;

.field public static final ACCEL_DECEL:Landroid/view/animation/Interpolator;

.field public static final BREATH_IN:Landroid/view/animation/Interpolator;

.field public static final DECCELATE:Landroid/view/animation/Interpolator;

.field public static final LINEAR:Landroid/view/animation/Interpolator;

.field public static final PARTICLE_ALPHA_SLOW_ATTRACTION:Landroid/view/animation/Interpolator;

.field public static final PARTICLE_ERROR:Landroid/view/animation/Interpolator;

.field public static final PARTICLE_ERROR_ALPHA:Landroid/view/animation/Interpolator;

.field public static final PARTICLE_MOVE_COMPLETE:Landroid/view/animation/Interpolator;

.field public static final PARTICLE_MOVE_FAST_ATTRACTION:Landroid/view/animation/Interpolator;

.field public static final PARTICLE_MOVE_SLOW_ATTRACTION:Landroid/view/animation/Interpolator;

.field public static final PARTICLE_SIZE_COMPLETE:Landroid/view/animation/Interpolator;

.field public static final PARTICLE_SIZE_FAST_ATTRACTION:Landroid/view/animation/Interpolator;

.field public static final PARTICLE_SIZE_NORMAL:Landroid/view/animation/Interpolator;

.field public static final PARTICLE_THUMBS_DOWN:Landroid/view/animation/Interpolator;

.field public static final PARTICLE_THUMBS_DOWN_X:Landroid/view/animation/Interpolator;

.field public static final REVERSE:Landroid/view/animation/Interpolator;

.field public static final SINE_INOUT_33:Landroid/view/animation/Interpolator;

.field public static final SINE_INOUT_90:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const v9, 0x3e8a3d71    # 0.27f

    const v8, 0x3e2e147b    # 0.17f

    const v7, 0x3f28f5c3    # 0.66f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->LINEAR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->DECCELATE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->ACCELATE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->ACCEL_DECEL:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e0f5c29    # 0.14f

    const/high16 v2, 0x3f000000    # 0.5f

    const v3, 0x3e428f5c    # 0.19f

    const v4, 0x3f70a3d7    # 0.94f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->BREATH_IN:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v1, v5, v2, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->SINE_INOUT_33:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v5, v2, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->SINE_INOUT_90:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f7d70a4    # 0.99f

    const v2, 0x3f1eb852    # 0.62f

    invoke-direct {v0, v5, v1, v2, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->PARTICLE_MOVE_COMPLETE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const v2, 0x3ee66666    # 0.45f

    const v3, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v7, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->PARTICLE_MOVE_SLOW_ATTRACTION:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->PARTICLE_MOVE_FAST_ATTRACTION:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3eb33333    # 0.35f

    const v2, 0x3df5c28f    # 0.12f

    const v3, 0x3f63d70a    # 0.89f

    invoke-direct {v0, v1, v2, v3, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->PARTICLE_ALPHA_SLOW_ATTRACTION:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f51eb85    # 0.82f

    const v2, 0x3f6e147b    # 0.93f

    invoke-direct {v0, v1, v5, v2, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->PARTICLE_SIZE_NORMAL:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    const v2, 0x3ec7ae14    # 0.39f

    const v3, 0x3f7ae148    # 0.98f

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->PARTICLE_SIZE_COMPLETE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f11eb85    # 0.57f

    const v2, 0x3eb33333    # 0.35f

    invoke-direct {v0, v1, v9, v7, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->PARTICLE_SIZE_FAST_ATTRACTION:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, -0x41b33333    # -0.2f

    invoke-direct {v0, v9, v1, v6, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->PARTICLE_ERROR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f451eb8    # 0.77f

    const v2, 0x3f666666    # 0.9f

    const v3, 0x3eae147b    # 0.34f

    invoke-direct {v0, v1, v5, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->PARTICLE_ERROR_ALPHA:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f451eb8    # 0.77f

    const v2, 0x3e8f5c29    # 0.28f

    invoke-direct {v0, v1, v5, v6, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->PARTICLE_THUMBS_DOWN:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper$1;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->REVERSE:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f8e147b    # 1.11f

    const v2, 0x3f1c28f6    # 0.61f

    invoke-direct {v0, v8, v1, v2, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/interpolators/InterpolatorHelper;->PARTICLE_THUMBS_DOWN_X:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
