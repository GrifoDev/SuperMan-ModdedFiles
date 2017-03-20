.class public Lcom/android/phone/common/animation/AnimUtils;
.super Ljava/lang/Object;
.source "AnimUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;
    }
.end annotation


# static fields
.field public static final DEFAULT_DURATION:I = -0x1

.field public static final EASE_IN:Landroid/view/animation/Interpolator;

.field public static final EASE_OUT:Landroid/view/animation/Interpolator;

.field public static final EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

.field public static final NO_DELAY:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const v4, 0x3ecccccd    # 0.4f

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 33
    invoke-static {v1, v1, v3, v2}, Lcom/android/phone/common/compat/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    .line 35
    invoke-static {v4, v1, v2, v2}, Lcom/android/phone/common/compat/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    .line 37
    invoke-static {v4, v1, v3, v2}, Lcom/android/phone/common/compat/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    sput-object v0, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT_EASE_IN:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeDimensions(Landroid/view/View;II)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 206
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 208
    .local v6, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 209
    .local v3, "oldWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 210
    .local v5, "oldHeight":I
    sub-int v2, p1, v3

    .line 211
    .local v2, "deltaWidth":I
    sub-int v4, p2, v5

    .line 213
    .local v4, "deltaHeight":I
    new-instance v0, Lcom/android/phone/common/animation/AnimUtils$5;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/common/animation/AnimUtils$5;-><init>(Landroid/view/View;IIII)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 223
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 224
    return-void

    .line 206
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static crossFadeViews(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p0, "fadeIn"    # Landroid/view/View;
    .param p1, "fadeOut"    # Landroid/view/View;
    .param p2, "duration"    # I

    .prologue
    .line 50
    invoke-static {p0, p2}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;I)V

    .line 51
    invoke-static {p1, p2}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;I)V

    .line 52
    return-void
.end method

.method public static fadeIn(Landroid/view/View;I)V
    .locals 2
    .param p0, "fadeIn"    # Landroid/view/View;
    .param p1, "durationMs"    # I

    .prologue
    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/phone/common/animation/AnimUtils;->fadeIn(Landroid/view/View;IILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    .line 89
    return-void
.end method

.method public static fadeIn(Landroid/view/View;IILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V
    .locals 4
    .param p0, "fadeIn"    # Landroid/view/View;
    .param p1, "durationMs"    # I
    .param p2, "delay"    # I
    .param p3, "callback"    # Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    .prologue
    .line 93
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 94
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 95
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 97
    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 98
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/phone/common/animation/AnimUtils$2;

    invoke-direct {v2, p0, p3}, Lcom/android/phone/common/animation/AnimUtils$2;-><init>(Landroid/view/View;Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 119
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 120
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 122
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 123
    return-void
.end method

.method public static fadeOut(Landroid/view/View;I)V
    .locals 1
    .param p0, "fadeOut"    # Landroid/view/View;
    .param p1, "duration"    # I

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/phone/common/animation/AnimUtils;->fadeOut(Landroid/view/View;ILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    .line 56
    return-void
.end method

.method public static fadeOut(Landroid/view/View;ILcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V
    .locals 4
    .param p0, "fadeOut"    # Landroid/view/View;
    .param p1, "durationMs"    # I
    .param p2, "callback"    # Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;

    .prologue
    .line 60
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 62
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 63
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/phone/common/animation/AnimUtils$1;

    invoke-direct {v2, p0, p2}, Lcom/android/phone/common/animation/AnimUtils$1;-><init>(Landroid/view/View;Lcom/android/phone/common/animation/AnimUtils$AnimationCallback;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 81
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 82
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 84
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 85
    return-void
.end method

.method public static scaleIn(Landroid/view/View;II)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "durationMs"    # I
    .param p2, "startDelayMs"    # I

    .prologue
    .line 133
    new-instance v5, Lcom/android/phone/common/animation/AnimUtils$3;

    invoke-direct {v5, p0}, Lcom/android/phone/common/animation/AnimUtils$3;-><init>(Landroid/view/View;)V

    .line 145
    .local v5, "listener":Landroid/animation/AnimatorListenerAdapter;
    const/4 v1, 0x0

    const/4 v2, 0x1

    sget-object v6, Lcom/android/phone/common/animation/AnimUtils;->EASE_IN:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/phone/common/animation/AnimUtils;->scaleInternal(Landroid/view/View;IIIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    .line 147
    return-void
.end method

.method private static scaleInternal(Landroid/view/View;IIIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "startScaleValue"    # I
    .param p2, "endScaleValue"    # I
    .param p3, "durationMs"    # I
    .param p4, "startDelay"    # I
    .param p5, "listener"    # Landroid/animation/AnimatorListenerAdapter;
    .param p6, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 178
    int-to-float v1, p1

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 179
    int-to-float v1, p1

    invoke-virtual {p0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 181
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 182
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 184
    invoke-virtual {v0, p6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, p2

    .line 185
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-float v2, p2

    .line 186
    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 187
    invoke-virtual {v1, p5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    .line 190
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 191
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 193
    :cond_0
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    .line 195
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 196
    return-void
.end method

.method public static scaleOut(Landroid/view/View;I)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "durationMs"    # I

    .prologue
    const/4 v2, 0x0

    .line 157
    new-instance v5, Lcom/android/phone/common/animation/AnimUtils$4;

    invoke-direct {v5, p0}, Lcom/android/phone/common/animation/AnimUtils$4;-><init>(Landroid/view/View;)V

    .line 171
    .local v5, "listener":Landroid/animation/AnimatorListenerAdapter;
    const/4 v1, 0x1

    sget-object v6, Lcom/android/phone/common/animation/AnimUtils;->EASE_OUT:Landroid/view/animation/Interpolator;

    move-object v0, p0

    move v3, p1

    move v4, v2

    invoke-static/range {v0 .. v6}, Lcom/android/phone/common/animation/AnimUtils;->scaleInternal(Landroid/view/View;IIIILandroid/animation/AnimatorListenerAdapter;Landroid/view/animation/Interpolator;)V

    .line 173
    return-void
.end method
