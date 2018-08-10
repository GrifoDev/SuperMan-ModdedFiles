.class public abstract Lcom/sec/android/cover/neoncover/animation/NeonAnimation;
.super Ljava/lang/Object;
.source "NeonAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/neoncover/animation/NeonAnimation$AnimationType;
    }
.end annotation


# static fields
.field protected static SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

.field protected static SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;


# instance fields
.field protected isCleared:Z

.field protected isPlaying:Z

.field protected isPrepared:Z

.field protected mContext:Landroid/content/Context;

.field protected mNeonController:Lcom/sec/android/cover/neoncover/NeonControllerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->SINE_IN_OUT_33:Landroid/view/animation/PathInterpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v3, v2, v1, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->SINE_IN_OUT_80:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/cover/neoncover/NeonControllerCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->isPlaying:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->isCleared:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->isPrepared:Z

    iput-object p1, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->mNeonController:Lcom/sec/android/cover/neoncover/NeonControllerCallback;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->isPlaying:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->isPrepared:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->isCleared:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->mNeonController:Lcom/sec/android/cover/neoncover/NeonControllerCallback;

    return-void
.end method

.method public abstract getAnimationView()Landroid/view/View;
.end method

.method public isAnimationPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->isPlaying:Z

    return v0
.end method

.method public isAnimationPrepared()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->isPrepared:Z

    return v0
.end method

.method public prepareToPlay()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/neoncover/animation/NeonAnimation;->isPrepared:Z

    return-void
.end method

.method public abstract startAnimation()V
.end method

.method public abstract stopAnimation()V
.end method
