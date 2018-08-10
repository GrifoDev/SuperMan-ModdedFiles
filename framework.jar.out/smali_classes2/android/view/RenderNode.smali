.class public Landroid/view/RenderNode;
.super Ljava/lang/Object;
.source "RenderNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/RenderNode$NoImagePreloadHolder;
    }
.end annotation


# instance fields
.field final mNativeRenderNode:J

.field private final mOwningView:Landroid/view/View;


# direct methods
.method static synthetic -wrap0()J
    .locals 2

    invoke-static {}, Landroid/view/RenderNode;->nGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor <init>(J)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    sget-object v0, Landroid/view/RenderNode$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/view/View;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/RenderNode;->nCreate(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    sget-object v0, Landroid/view/RenderNode$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v2, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-virtual {v0, p0, v2, v3}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    iput-object p2, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    return-void
.end method

.method public static adopt(J)Landroid/view/RenderNode;
    .locals 2

    new-instance v0, Landroid/view/RenderNode;

    invoke-direct {v0, p0, p1}, Landroid/view/RenderNode;-><init>(J)V

    return-object v0
.end method

.method public static create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;
    .locals 1

    new-instance v0, Landroid/view/RenderNode;

    invoke-direct {v0, p0, p1}, Landroid/view/RenderNode;-><init>(Ljava/lang/String;Landroid/view/View;)V

    return-object v0
.end method

.method private static native nAddAnimator(JJ)V
.end method

.method private static native nCreate(Ljava/lang/String;)J
.end method

.method private static native nEndAllAnimators(J)V
.end method

.method private static native nGetAlpha(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetCameraDistance(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetClipToOutline(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetDebugSize(J)I
.end method

.method private static native nGetElevation(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetInverseTransformMatrix(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetNativeFinalizer()J
.end method

.method private static native nGetPivotX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetPivotY(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetRotation(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetRotationX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetRotationY(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetScaleX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetScaleY(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTransformMatrix(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTranslationX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTranslationY(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nGetTranslationZ(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nHasIdentityMatrix(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nHasOverlappingRendering(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nHasShadow(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nIsPivotExplicitlySet(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nIsValid(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nOffsetLeftAndRight(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nOffsetTopAndBottom(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nOutput(J)V
.end method

.method private static native nRequestPositionUpdates(JLandroid/view/SurfaceView;)V
.end method

.method private static native nSetAlpha(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetAnimationMatrix(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetBottom(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetCameraDistance(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetClipBounds(JIIII)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetClipBoundsEmpty(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetClipToBounds(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetClipToOutline(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetDisplayList(JJ)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native nSetElevation(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetHasOverlappingRendering(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetLayerPaint(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetLayerType(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetLeft(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetLeftTopRightBottom(JIIII)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetOutlineConvexPath(JJF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetOutlineEmpty(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetOutlineNone(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetOutlineRoundRect(JIIIIFF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetPivotX(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetPivotY(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetProjectBackwards(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetProjectionReceiver(JZ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetRevealClip(JZFFF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetRight(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetRotation(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetRotationX(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetRotationY(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetScaleX(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetScaleY(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetStaticMatrix(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTop(JI)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTranslationX(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTranslationY(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native nSetTranslationZ(JF)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method


# virtual methods
.method public addAnimator(Landroid/view/RenderNodeAnimator;)V
    .locals 4

    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot start this animator on a detached view!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-virtual {p1}, Landroid/view/RenderNodeAnimator;->getNativeAnimator()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNode;->nAddAnimator(JJ)V

    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    return-void
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public discardDisplayList()V
    .locals 4

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNode;->nSetDisplayList(JJ)V

    return-void
.end method

.method public end(Landroid/view/DisplayListCanvas;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->finishRecording()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v2, v3, v0, v1}, Landroid/view/RenderNode;->nSetDisplayList(JJ)V

    invoke-virtual {p1}, Landroid/view/DisplayListCanvas;->recycle()V

    return-void
.end method

.method public endAllAnimators()V
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nEndAllAnimators(J)V

    return-void
.end method

.method public getAlpha()F
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetAlpha(J)F

    move-result v0

    return v0
.end method

.method public getCameraDistance()F
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetCameraDistance(J)F

    move-result v0

    return v0
.end method

.method public getClipToOutline()Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetClipToOutline(J)Z

    move-result v0

    return v0
.end method

.method public getDebugSize()I
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetDebugSize(J)I

    move-result v0

    return v0
.end method

.method public getElevation()F
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetElevation(J)F

    move-result v0

    return v0
.end method

.method public getInverseMatrix(Landroid/graphics/Matrix;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNode;->nGetInverseTransformMatrix(JJ)V

    return-void
.end method

.method public getMatrix(Landroid/graphics/Matrix;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNode;->nGetTransformMatrix(JJ)V

    return-void
.end method

.method getNativeDisplayList()J
    .locals 2

    invoke-virtual {p0}, Landroid/view/RenderNode;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "The display list is not valid."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    return-wide v0
.end method

.method public getPivotX()F
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetPivotX(J)F

    move-result v0

    return v0
.end method

.method public getPivotY()F
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetPivotY(J)F

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetRotation(J)F

    move-result v0

    return v0
.end method

.method public getRotationX()F
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetRotationX(J)F

    move-result v0

    return v0
.end method

.method public getRotationY()F
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetRotationY(J)F

    move-result v0

    return v0
.end method

.method public getScaleX()F
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetScaleX(J)F

    move-result v0

    return v0
.end method

.method public getScaleY()F
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetScaleY(J)F

    move-result v0

    return v0
.end method

.method public getTranslationX()F
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetTranslationX(J)F

    move-result v0

    return v0
.end method

.method public getTranslationY()F
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetTranslationY(J)F

    move-result v0

    return v0
.end method

.method public getTranslationZ()F
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nGetTranslationZ(J)F

    move-result v0

    return v0
.end method

.method public hasIdentityMatrix()Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nHasIdentityMatrix(J)Z

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nHasOverlappingRendering(J)Z

    move-result v0

    return v0
.end method

.method public hasShadow()Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nHasShadow(J)Z

    move-result v0

    return v0
.end method

.method public isAttached()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPivotExplicitlySet()Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nIsPivotExplicitlySet(J)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nIsValid(J)Z

    move-result v0

    return v0
.end method

.method public offsetLeftAndRight(I)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nOffsetLeftAndRight(JI)Z

    move-result v0

    return v0
.end method

.method public offsetTopAndBottom(I)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nOffsetTopAndBottom(JI)Z

    move-result v0

    return v0
.end method

.method public output()V
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nOutput(J)V

    return-void
.end method

.method public registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V
    .locals 2

    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot start this animator on a detached view!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V

    return-void
.end method

.method public requestPositionUpdates(Landroid/view/SurfaceView;)V
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nRequestPositionUpdates(JLandroid/view/SurfaceView;)V

    return-void
.end method

.method public setAlpha(F)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetAlpha(JF)Z

    move-result v0

    return v0
.end method

.method public setAnimationMatrix(Landroid/graphics/Matrix;)Z
    .locals 4

    iget-wide v2, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    if-eqz p1, :cond_0

    iget-wide v0, p1, Landroid/graphics/Matrix;->native_instance:J

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/view/RenderNode;->nSetAnimationMatrix(JJ)Z

    move-result v0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setBottom(I)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetBottom(JI)Z

    move-result v0

    return v0
.end method

.method public setCameraDistance(F)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetCameraDistance(JF)Z

    move-result v0

    return v0
.end method

.method public setClipBounds(Landroid/graphics/Rect;)Z
    .locals 6

    if-nez p1, :cond_0

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nSetClipBoundsEmpty(J)Z

    move-result v0

    return v0

    :cond_0
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v0 .. v5}, Landroid/view/RenderNode;->nSetClipBounds(JIIII)Z

    move-result v0

    return v0
.end method

.method public setClipToBounds(Z)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetClipToBounds(JZ)Z

    move-result v0

    return v0
.end method

.method public setClipToOutline(Z)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetClipToOutline(JZ)Z

    move-result v0

    return v0
.end method

.method public setElevation(F)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetElevation(JF)Z

    move-result v0

    return v0
.end method

.method public setHasOverlappingRendering(Z)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetHasOverlappingRendering(JZ)Z

    move-result v0

    return v0
.end method

.method public setLayerPaint(Landroid/graphics/Paint;)Z
    .locals 4

    iget-wide v2, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/view/RenderNode;->nSetLayerPaint(JJ)Z

    move-result v0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setLayerType(I)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetLayerType(JI)Z

    move-result v0

    return v0
.end method

.method public setLeft(I)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetLeft(JI)Z

    move-result v0

    return v0
.end method

.method public setLeftTopRightBottom(IIII)Z
    .locals 6

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/RenderNode;->nSetLeftTopRightBottom(JIIII)Z

    move-result v0

    return v0
.end method

.method public setOutline(Landroid/graphics/Outline;)Z
    .locals 8

    if-nez p1, :cond_0

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nSetOutlineNone(J)Z

    move-result v0

    return v0

    :cond_0
    iget v0, p1, Landroid/graphics/Outline;->mMode:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unrecognized outline?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1}, Landroid/view/RenderNode;->nSetOutlineEmpty(J)Z

    move-result v0

    return v0

    :pswitch_1
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-object v2, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p1, Landroid/graphics/Outline;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, p1, Landroid/graphics/Outline;->mRadius:F

    iget v7, p1, Landroid/graphics/Outline;->mAlpha:F

    invoke-static/range {v0 .. v7}, Landroid/view/RenderNode;->nSetOutlineRoundRect(JIIIIFF)Z

    move-result v0

    return v0

    :pswitch_2
    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-object v2, p1, Landroid/graphics/Outline;->mPath:Landroid/graphics/Path;

    iget-wide v2, v2, Landroid/graphics/Path;->mNativePath:J

    iget v4, p1, Landroid/graphics/Outline;->mAlpha:F

    invoke-static {v0, v1, v2, v3, v4}, Landroid/view/RenderNode;->nSetOutlineConvexPath(JJF)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setPivotX(F)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetPivotX(JF)Z

    move-result v0

    return v0
.end method

.method public setPivotY(F)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetPivotY(JF)Z

    move-result v0

    return v0
.end method

.method public setProjectBackwards(Z)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetProjectBackwards(JZ)Z

    move-result v0

    return v0
.end method

.method public setProjectionReceiver(Z)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetProjectionReceiver(JZ)Z

    move-result v0

    return v0
.end method

.method public setRevealClip(ZFFF)Z
    .locals 6

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/view/RenderNode;->nSetRevealClip(JZFFF)Z

    move-result v0

    return v0
.end method

.method public setRight(I)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetRight(JI)Z

    move-result v0

    return v0
.end method

.method public setRotation(F)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetRotation(JF)Z

    move-result v0

    return v0
.end method

.method public setRotationX(F)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetRotationX(JF)Z

    move-result v0

    return v0
.end method

.method public setRotationY(F)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetRotationY(JF)Z

    move-result v0

    return v0
.end method

.method public setScaleX(F)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetScaleX(JF)Z

    move-result v0

    return v0
.end method

.method public setScaleY(F)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetScaleY(JF)Z

    move-result v0

    return v0
.end method

.method public setStaticMatrix(Landroid/graphics/Matrix;)Z
    .locals 4

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    iget-wide v2, p1, Landroid/graphics/Matrix;->native_instance:J

    invoke-static {v0, v1, v2, v3}, Landroid/view/RenderNode;->nSetStaticMatrix(JJ)Z

    move-result v0

    return v0
.end method

.method public setTop(I)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetTop(JI)Z

    move-result v0

    return v0
.end method

.method public setTranslationX(F)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetTranslationX(JF)Z

    move-result v0

    return v0
.end method

.method public setTranslationY(F)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetTranslationY(JF)Z

    move-result v0

    return v0
.end method

.method public setTranslationZ(F)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/RenderNode;->mNativeRenderNode:J

    invoke-static {v0, v1, p1}, Landroid/view/RenderNode;->nSetTranslationZ(JF)Z

    move-result v0

    return v0
.end method

.method public start(II)Landroid/view/DisplayListCanvas;
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/view/DisplayListCanvas;->obtain(Landroid/view/RenderNode;II)Landroid/view/DisplayListCanvas;

    move-result-object v0

    iget-object v1, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/RenderNode;->mOwningView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHighContrastText:Z

    invoke-virtual {v0, v1}, Landroid/view/DisplayListCanvas;->setHighContrastText(Z)V

    :cond_0
    return-object v0
.end method
