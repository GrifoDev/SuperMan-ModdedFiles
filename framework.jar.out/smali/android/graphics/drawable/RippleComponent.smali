.class abstract Landroid/graphics/drawable/RippleComponent;
.super Ljava/lang/Object;
.source "RippleComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
    }
.end annotation


# instance fields
.field protected final mBounds:Landroid/graphics/Rect;

.field protected mDensityScale:F

.field private final mForceSoftware:Z

.field private mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

.field private mHasDisplayListCanvas:Z

.field private mHasMaxRadius:Z

.field private mHasPendingHardwareAnimator:Z

.field private final mOwner:Landroid/graphics/drawable/RippleDrawable;

.field private mSoftwareAnimator:Landroid/animation/Animator;

.field protected mTargetRadius:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/RippleDrawable;Landroid/graphics/Rect;Z)V
    .locals 0
    .param p1, "owner"    # Landroid/graphics/drawable/RippleDrawable;
    .param p2, "bounds"    # Landroid/graphics/Rect;
    .param p3, "forceSoftware"    # Z

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/graphics/drawable/RippleComponent;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    .line 64
    iput-object p2, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    .line 65
    iput-boolean p3, p0, Landroid/graphics/drawable/RippleComponent;->mForceSoftware:Z

    .line 62
    return-void
.end method

.method private cancelSoftwareAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 213
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 215
    iput-object v1, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    .line 212
    :cond_0
    return-void
.end method

.method private endHardwareAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->end()V

    .line 239
    iput-object v1, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    .line 242
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    if-eqz v0, :cond_1

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    .line 247
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->jumpValuesToExit()V

    .line 236
    :cond_1
    return-void
.end method

.method private endSoftwareAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 226
    iput-object v1, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    .line 223
    :cond_0
    return-void
.end method

.method private static getTargetRadius(Landroid/graphics/Rect;)F
    .locals 4
    .param p0, "bounds"    # Landroid/graphics/Rect;

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 89
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 90
    .local v1, "halfWidth":F
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 91
    .local v0, "halfHeight":F
    mul-float v2, v1, v1

    mul-float v3, v0, v0

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method private startPendingAnimation(Landroid/view/DisplayListCanvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "hw"    # Landroid/view/DisplayListCanvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 196
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    .line 199
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->createHardwareExit(Landroid/graphics/Paint;)Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    .line 200
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->start(Landroid/view/DisplayListCanvas;)V

    .line 204
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->jumpValuesToExit()V

    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->cancelSoftwareAnimations()V

    .line 134
    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->endHardwareAnimations()V

    .line 132
    return-void
.end method

.method protected abstract createHardwareExit(Landroid/graphics/Paint;)Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;
.end method

.method protected abstract createSoftwareEnter(Z)Landroid/animation/Animator;
.end method

.method protected abstract createSoftwareExit()Landroid/animation/Animator;
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
    .locals 3
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "p"    # Landroid/graphics/Paint;

    .prologue
    .line 154
    iget-boolean v2, p0, Landroid/graphics/drawable/RippleComponent;->mForceSoftware:Z

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    instance-of v0, p1, Landroid/view/DisplayListCanvas;

    .line 156
    :goto_0
    iget-boolean v2, p0, Landroid/graphics/drawable/RippleComponent;->mHasDisplayListCanvas:Z

    if-eq v2, v0, :cond_0

    .line 157
    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasDisplayListCanvas:Z

    .line 159
    if-nez v0, :cond_0

    .line 161
    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->endHardwareAnimations()V

    .line 165
    :cond_0
    if-eqz v0, :cond_2

    move-object v1, p1

    .line 166
    check-cast v1, Landroid/view/DisplayListCanvas;

    .line 167
    .local v1, "hw":Landroid/view/DisplayListCanvas;
    invoke-direct {p0, v1, p2}, Landroid/graphics/drawable/RippleComponent;->startPendingAnimation(Landroid/view/DisplayListCanvas;Landroid/graphics/Paint;)V

    .line 169
    iget-object v2, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    if-eqz v2, :cond_2

    .line 170
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/RippleComponent;->drawHardware(Landroid/view/DisplayListCanvas;)Z

    move-result v2

    return v2

    .line 154
    .end local v1    # "hw":Landroid/view/DisplayListCanvas;
    :cond_1
    const/4 v0, 0x0

    .local v0, "hasDisplayListCanvas":Z
    goto :goto_0

    .line 174
    .end local v0    # "hasDisplayListCanvas":Z
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/RippleComponent;->drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z

    move-result v2

    return v2
.end method

.method protected abstract drawHardware(Landroid/view/DisplayListCanvas;)Z
.end method

.method protected abstract drawSoftware(Landroid/graphics/Canvas;Landroid/graphics/Paint;)Z
.end method

.method public end()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->endSoftwareAnimations()V

    .line 142
    invoke-direct {p0}, Landroid/graphics/drawable/RippleComponent;->endHardwareAnimations()V

    .line 140
    return-void
.end method

.method public final enter(Z)V
    .locals 1
    .param p1, "fast"    # Z

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->cancel()V

    .line 102
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleComponent;->createSoftwareEnter(Z)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    .line 104
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 99
    :cond_0
    return-void
.end method

.method public final exit()V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->cancel()V

    .line 115
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasDisplayListCanvas:Z

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    .line 121
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->invalidateSelf()V

    .line 112
    :goto_0
    return-void

    .line 123
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/RippleComponent;->createSoftwareExit()Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    .line 124
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mSoftwareAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 185
    iget v1, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 186
    .local v0, "r":I
    neg-int v1, v0

    neg-int v2, v0

    invoke-virtual {p1, v1, v2, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 184
    return-void
.end method

.method protected final invalidateSelf()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mOwner:Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->invalidateSelf(Z)V

    .line 251
    return-void
.end method

.method protected final isHardwareAnimating()Z
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mHardwareAnimator:Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;

    invoke-virtual {v0}, Landroid/graphics/drawable/RippleComponent$RenderNodeAnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    .line 257
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasPendingHardwareAnimator:Z

    .line 256
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract jumpValuesToExit()V
.end method

.method public onBoundsChange()V
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Landroid/graphics/drawable/RippleComponent;->getTargetRadius(Landroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 71
    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    .line 68
    :cond_0
    return-void
.end method

.method protected final onHotspotBoundsChanged()V
    .locals 6

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 261
    iget-boolean v3, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    if-nez v3, :cond_0

    .line 262
    iget-object v3, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 263
    .local v1, "halfWidth":F
    iget-object v3, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 264
    .local v0, "halfHeight":F
    mul-float v3, v1, v1

    .line 265
    mul-float v4, v0, v0

    .line 264
    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 267
    .local v2, "targetRadius":F
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    .line 260
    .end local v0    # "halfHeight":F
    .end local v1    # "halfWidth":F
    .end local v2    # "targetRadius":F
    :cond_0
    return-void
.end method

.method protected onTargetRadiusChanged(F)V
    .locals 0
    .param p1, "targetRadius"    # F

    .prologue
    .line 276
    return-void
.end method

.method public final setup(FI)V
    .locals 2
    .param p1, "maxRadius"    # F
    .param p2, "densityDpi"    # I

    .prologue
    .line 76
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/drawable/RippleComponent;->mHasMaxRadius:Z

    .line 78
    iput p1, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    .line 83
    :goto_0
    int-to-float v0, p2

    const v1, 0x3bcccccd    # 0.00625f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mDensityScale:F

    .line 85
    iget v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RippleComponent;->onTargetRadiusChanged(F)V

    .line 75
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Landroid/graphics/drawable/RippleComponent;->mBounds:Landroid/graphics/Rect;

    invoke-static {v0}, Landroid/graphics/drawable/RippleComponent;->getTargetRadius(Landroid/graphics/Rect;)F

    move-result v0

    iput v0, p0, Landroid/graphics/drawable/RippleComponent;->mTargetRadius:F

    goto :goto_0
.end method
