.class public Landroid/view/RenderNodeAnimator;
.super Landroid/animation/Animator;
.source "RenderNodeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/RenderNodeAnimator$1;,
        Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    }
.end annotation


# static fields
.field public static final ALPHA:I = 0xb

.field public static final LAST_VALUE:I = 0xc

.field public static final NOP:I = 0xc

.field public static final PAINT_ALPHA:I = 0x1

.field public static final PAINT_STROKE_WIDTH:I = 0x0

.field public static final ROTATION:I = 0x5

.field public static final ROTATION_X:I = 0x6

.field public static final ROTATION_Y:I = 0x7

.field public static final SCALE_X:I = 0x3

.field public static final SCALE_Y:I = 0x4

.field private static final STATE_DELAYED:I = 0x1

.field private static final STATE_FINISHED:I = 0x3

.field private static final STATE_PREPARE:I = 0x0

.field private static final STATE_RUNNING:I = 0x2

.field public static final TRANSLATION_X:I = 0x0

.field public static final TRANSLATION_Y:I = 0x1

.field public static final TRANSLATION_Z:I = 0x2

.field public static final X:I = 0x8

.field public static final Y:I = 0x9

.field public static final Z:I = 0xa

.field private static sAnimationHelper:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;",
            ">;"
        }
    .end annotation
.end field

.field private static final sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;


# instance fields
.field private mFinalValue:F

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

.field private mRenderProperty:I

.field private mStartDelay:J

.field private mStartTime:J

.field private mState:I

.field private mTarget:Landroid/view/RenderNode;

.field private final mUiThreadHandlesDelay:Z

.field private mUnscaledDuration:J

.field private mUnscaledStartDelay:J

.field private mViewTarget:Landroid/view/View;


# direct methods
.method static synthetic -wrap0(Landroid/view/RenderNodeAnimator;J)Z
    .locals 1
    .param p1, "frameTimeMs"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->processDelayed(J)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Landroid/view/RenderNodeAnimator$1;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Landroid/view/RenderNodeAnimator$1;-><init>(I)V

    sput-object v0, Landroid/view/RenderNodeAnimator;->sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;

    .line 434
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 433
    sput-object v0, Landroid/view/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    .line 37
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 4
    .param p1, "property"    # I
    .param p2, "finalValue"    # F

    .prologue
    const-wide/16 v2, 0x0

    .line 112
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 97
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 98
    iput-wide v2, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 105
    iput-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 113
    iput p1, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 114
    iput p2, p0, Landroid/view/RenderNodeAnimator;->mFinalValue:F

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 116
    invoke-static {p1, p2}, Landroid/view/RenderNodeAnimator;->nCreateAnimator(IF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;->init(J)V

    .line 112
    return-void
.end method

.method public constructor <init>(IIFF)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "startRadius"    # F
    .param p4, "endRadius"    # F

    .prologue
    const-wide/16 v2, 0x0

    .line 139
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 97
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 98
    iput-wide v2, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 105
    iput-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 140
    invoke-static {p1, p2, p3, p4}, Landroid/view/RenderNodeAnimator;->nCreateRevealAnimator(IIFF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;->init(J)V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/graphics/CanvasProperty;F)V
    .locals 6
    .param p2, "finalValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 119
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 95
    iput v2, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 97
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 98
    iput-wide v4, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 105
    iput-wide v4, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 121
    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v0

    .line 120
    invoke-static {v0, v1, p2}, Landroid/view/RenderNodeAnimator;->nCreateCanvasPropertyFloatAnimator(JF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;->init(J)V

    .line 122
    iput-boolean v2, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/graphics/CanvasProperty;IF)V
    .locals 6
    .param p2, "paintField"    # I
    .param p3, "finalValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;IF)V"
        }
    .end annotation

    .prologue
    .local p1, "property":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Landroid/graphics/Paint;>;"
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 133
    invoke-direct {p0}, Landroid/animation/Animator;-><init>()V

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    .line 95
    iput v2, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 97
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 98
    iput-wide v4, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 105
    iput-wide v4, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 135
    invoke-virtual {p1}, Landroid/graphics/CanvasProperty;->getNativeContainer()J

    move-result-wide v0

    .line 134
    invoke-static {v0, v1, p2, p3}, Landroid/view/RenderNodeAnimator;->nCreateCanvasPropertyPaintAnimator(JIF)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Landroid/view/RenderNodeAnimator;->init(J)V

    .line 136
    iput-boolean v2, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    .line 133
    return-void
.end method

.method private applyInterpolator()V
    .locals 6

    .prologue
    .line 163
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v4, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v4}, Landroid/view/RenderNodeAnimator;->isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 167
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    check-cast v4, Lcom/android/internal/view/animation/NativeInterpolatorFactory;

    invoke-interface {v4}, Lcom/android/internal/view/animation/NativeInterpolatorFactory;->createNativeInterpolator()J

    move-result-wide v2

    .line 172
    .local v2, "ni":J
    :goto_0
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v4}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Landroid/view/RenderNodeAnimator;->nSetInterpolator(JJ)V

    .line 162
    return-void

    .line 169
    .end local v2    # "ni":J
    :cond_1
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v4}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/view/RenderNodeAnimator;->nGetDuration(J)J

    move-result-wide v0

    .line 170
    .local v0, "duration":J
    iget-object v4, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-static {v4, v0, v1}, Lcom/android/internal/view/animation/FallbackLUTInterpolator;->createNativeInterpolator(Landroid/animation/TimeInterpolator;J)J

    move-result-wide v2

    .restart local v2    # "ni":J
    goto :goto_0
.end method

.method private static callOnFinished(Landroid/view/RenderNodeAnimator;)V
    .locals 0
    .param p0, "animator"    # Landroid/view/RenderNodeAnimator;

    .prologue
    .line 489
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->onFinished()V

    .line 488
    return-void
.end method

.method private checkMutable()V
    .locals 2

    .prologue
    .line 149
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Animator has already started, cannot change it now!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_0
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-nez v0, :cond_1

    .line 153
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Animator\'s target has been destroyed (trying to modify an animation after activity destroy?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_1
    return-void
.end method

.method private cloneListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    .line 401
    .local v0, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 404
    .restart local v0    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    :cond_0
    return-object v0
.end method

.method private doStart()V
    .locals 3

    .prologue
    .line 203
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mRenderProperty:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 206
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mTransformationInfo:Landroid/view/View$TransformationInfo;

    iget v1, p0, Landroid/view/RenderNodeAnimator;->mFinalValue:F

    iput v1, v0, Landroid/view/View$TransformationInfo;->mAlpha:F

    .line 209
    :cond_0
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->moveToRunningState()V

    .line 211
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 199
    :cond_1
    return-void
.end method

.method private static getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    .locals 2

    .prologue
    .line 425
    sget-object v1, Landroid/view/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    .line 426
    .local v0, "helper":Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    if-nez v0, :cond_0

    .line 427
    new-instance v0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    .end local v0    # "helper":Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    invoke-direct {v0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;-><init>()V

    .line 428
    .restart local v0    # "helper":Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
    sget-object v1, Landroid/view/RenderNodeAnimator;->sAnimationHelper:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 430
    :cond_0
    return-object v0
.end method

.method private init(J)V
    .locals 1
    .param p1, "ptr"    # J

    .prologue
    .line 145
    new-instance v0, Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/util/VirtualRefBasePtr;-><init>(J)V

    iput-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 144
    return-void
.end method

.method static isNativeInterpolator(Landroid/animation/TimeInterpolator;)Z
    .locals 2
    .param p0, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/android/internal/view/animation/HasNativeInterpolator;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public static mapViewPropertyToRenderProperty(I)I
    .locals 1
    .param p0, "viewProperty"    # I

    .prologue
    .line 109
    sget-object v0, Landroid/view/RenderNodeAnimator;->sViewPropertyAnimatorMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    return v0
.end method

.method private moveToRunningState()V
    .locals 2

    .prologue
    .line 218
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 219
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/RenderNodeAnimator;->nStart(J)V

    .line 222
    :cond_0
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->notifyStartListeners()V

    .line 217
    return-void
.end method

.method private static native nCreateAnimator(IF)J
.end method

.method private static native nCreateCanvasPropertyFloatAnimator(JF)J
.end method

.method private static native nCreateCanvasPropertyPaintAnimator(JIF)J
.end method

.method private static native nCreateRevealAnimator(IIFF)J
.end method

.method private static native nEnd(J)V
.end method

.method private static native nGetDuration(J)J
.end method

.method private static native nSetAllowRunningAsync(JZ)V
.end method

.method private static native nSetDuration(JJ)V
.end method

.method private static native nSetInterpolator(JJ)V
.end method

.method private static native nSetListener(JLandroid/view/RenderNodeAnimator;)V
.end method

.method private static native nSetStartDelay(JJ)V
.end method

.method private static native nSetStartValue(JF)V
.end method

.method private static native nStart(J)V
.end method

.method private notifyStartListeners()V
    .locals 4

    .prologue
    .line 226
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    move-result-object v1

    .line 227
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-nez v1, :cond_0

    const/4 v2, 0x0

    .line 228
    .local v2, "numListeners":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 229
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 227
    .end local v0    # "i":I
    .end local v2    # "numListeners":I
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .restart local v2    # "numListeners":I
    goto :goto_0

    .line 225
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method private processDelayed(J)Z
    .locals 5
    .param p1, "frameTimeMs"    # J

    .prologue
    .line 415
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 416
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mStartTime:J

    .line 421
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 417
    :cond_1
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartTime:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 418
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->doStart()V

    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method private releaseNativePtr()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 392
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->release()V

    .line 394
    iput-object v1, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    .line 391
    :cond_0
    return-void
.end method

.method private setTarget(Landroid/view/RenderNode;)V
    .locals 2
    .param p1, "node"    # Landroid/view/RenderNode;

    .prologue
    .line 295
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 296
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    if-eqz v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Target already set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_0
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroid/view/RenderNodeAnimator;->nSetListener(JLandroid/view/RenderNodeAnimator;)V

    .line 300
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    .line 301
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    invoke-virtual {v0, p0}, Landroid/view/RenderNode;->addAnimator(Landroid/view/RenderNodeAnimator;)V

    .line 294
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 5

    .prologue
    .line 235
    iget v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    .line 236
    iget v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 237
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    .line 238
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->moveToRunningState()V

    .line 241
    :cond_0
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    move-result-object v1

    .line 242
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-nez v1, :cond_1

    const/4 v2, 0x0

    .line 243
    .local v2, "numListeners":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 244
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 242
    .end local v0    # "i":I
    .end local v2    # "numListeners":I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .restart local v2    # "numListeners":I
    goto :goto_0

    .line 247
    .restart local v0    # "i":I
    :cond_2
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->end()V

    .line 234
    .end local v0    # "i":I
    .end local v1    # "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    .end local v2    # "numListeners":I
    :cond_3
    return-void
.end method

.method public clone()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 494
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot clone this animator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public end()V
    .locals 3

    .prologue
    .line 253
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 254
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 255
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    .line 256
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->doStart()V

    .line 258
    :cond_0
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/RenderNodeAnimator;->nEnd(J)V

    .line 260
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->invalidateViewProperty(ZZ)V

    .line 252
    :cond_1
    :goto_0
    return-void

    .line 266
    :cond_2
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->onFinished()V

    goto :goto_0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 337
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getNativeAnimator()J
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    .prologue
    .line 321
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    return-wide v0
.end method

.method public getTotalDuration()J
    .locals 4

    .prologue
    .line 342
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    iget-wide v2, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isRunning()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 347
    iget v1, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStarted()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 352
    iget v1, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected onFinished()V
    .locals 5

    .prologue
    .line 367
    iget v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-nez v3, :cond_0

    .line 370
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->releaseNativePtr()V

    .line 371
    return-void

    .line 373
    :cond_0
    iget v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 374
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    .line 375
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->notifyStartListeners()V

    .line 377
    :cond_1
    const/4 v3, 0x3

    iput v3, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 379
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->cloneListeners()Ljava/util/ArrayList;

    move-result-object v1

    .line 380
    .local v1, "listeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator$AnimatorListener;>;"
    if-nez v1, :cond_2

    const/4 v2, 0x0

    .line 381
    .local v2, "numListeners":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 382
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 381
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 380
    .end local v0    # "i":I
    .end local v2    # "numListeners":I
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .restart local v2    # "numListeners":I
    goto :goto_0

    .line 388
    .restart local v0    # "i":I
    :cond_3
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->releaseNativePtr()V

    .line 366
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 273
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAllowRunningAsynchronously(Z)V
    .locals 2
    .param p1, "mayRunAsync"    # Z

    .prologue
    .line 499
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 500
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/view/RenderNodeAnimator;->nSetAllowRunningAsync(JZ)V

    .line 498
    return-void
.end method

.method public bridge synthetic setDuration(J)Landroid/animation/Animator;
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 325
    invoke-virtual {p0, p1, p2}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(J)Landroid/view/RenderNodeAnimator;
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 326
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 327
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "duration must be positive; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_0
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledDuration:J

    .line 331
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    long-to-float v2, p1

    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;->nSetDuration(JJ)V

    .line 332
    return-object p0
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 357
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 358
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 356
    return-void
.end method

.method public setStartDelay(J)V
    .locals 3
    .param p1, "startDelay"    # J

    .prologue
    .line 311
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 312
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDelay must be positive; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_0
    iput-wide p1, p0, Landroid/view/RenderNodeAnimator;->mUnscaledStartDelay:J

    .line 316
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v0

    long-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    .line 310
    return-void
.end method

.method public setStartValue(F)V
    .locals 2
    .param p1, "startValue"    # F

    .prologue
    .line 305
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->checkMutable()V

    .line 306
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Landroid/view/RenderNodeAnimator;->nSetStartValue(JF)V

    .line 304
    return-void
.end method

.method public setTarget(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 287
    instance-of v1, p1, Landroid/view/DisplayListCanvas;

    if-nez v1, :cond_0

    .line 288
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Not a GLES20RecordingCanvas"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, p1

    .line 290
    check-cast v0, Landroid/view/DisplayListCanvas;

    .line 291
    .local v0, "recordingCanvas":Landroid/view/DisplayListCanvas;
    iget-object v1, v0, Landroid/view/DisplayListCanvas;->mNode:Landroid/view/RenderNode;

    invoke-direct {p0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/RenderNode;)V

    .line 286
    return-void
.end method

.method public setTarget(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 282
    iput-object p1, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    .line 283
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mViewTarget:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-direct {p0, v0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/RenderNode;)V

    .line 281
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mTarget:Landroid/view/RenderNode;

    if-nez v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Missing target!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iget v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    if-eqz v0, :cond_1

    .line 182
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Already started!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/RenderNodeAnimator;->mState:I

    .line 186
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->applyInterpolator()V

    .line 188
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    if-nez v0, :cond_2

    .line 190
    invoke-virtual {p0}, Landroid/view/RenderNodeAnimator;->cancel()V

    .line 176
    :goto_0
    return-void

    .line 191
    :cond_2
    iget-wide v0, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-boolean v0, p0, Landroid/view/RenderNodeAnimator;->mUiThreadHandlesDelay:Z

    if-eqz v0, :cond_3

    .line 195
    invoke-static {}, Landroid/view/RenderNodeAnimator;->getHelper()Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->addDelayedAnimation(Landroid/view/RenderNodeAnimator;)V

    goto :goto_0

    .line 192
    :cond_3
    iget-object v0, p0, Landroid/view/RenderNodeAnimator;->mNativePtr:Lcom/android/internal/util/VirtualRefBasePtr;

    invoke-virtual {v0}, Lcom/android/internal/util/VirtualRefBasePtr;->get()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/RenderNodeAnimator;->mStartDelay:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNodeAnimator;->nSetStartDelay(JJ)V

    .line 193
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator;->doStart()V

    goto :goto_0
.end method
