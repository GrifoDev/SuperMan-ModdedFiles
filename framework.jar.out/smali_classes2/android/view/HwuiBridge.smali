.class public final Landroid/view/HwuiBridge;
.super Ljava/lang/Object;
.source "HwuiBridge.java"


# static fields
.field private static final mGetNativeAnimatorMethod:Ljava/lang/reflect/Method;

.field private static final mNativeRenderNodeField:Ljava/lang/reflect/Field;

.field private static final mRenderNodeField:Ljava/lang/reflect/Field;


# instance fields
.field private final mFunctor:J

.field private final mNativePtr:J

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, "getNativeAnimatorMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    .line 40
    .local v3, "renderNodeField":Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .line 43
    .local v2, "nativeRenderNodeField":Ljava/lang/reflect/Field;
    :try_start_0
    const-class v4, Landroid/view/RenderNodeAnimator;

    const-string/jumbo v5, "getNativeAnimator"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 44
    .local v1, "getNativeAnimatorMethod":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 46
    const-class v4, Landroid/view/View;

    const-string/jumbo v5, "mRenderNode"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 47
    .local v3, "renderNodeField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 49
    const-class v4, Landroid/view/RenderNode;

    const-string/jumbo v5, "mNativeRenderNode"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 50
    .local v2, "nativeRenderNodeField":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1    # "getNativeAnimatorMethod":Ljava/lang/reflect/Method;
    .end local v2    # "nativeRenderNodeField":Ljava/lang/reflect/Field;
    .end local v3    # "renderNodeField":Ljava/lang/reflect/Field;
    :goto_0
    sput-object v1, Landroid/view/HwuiBridge;->mGetNativeAnimatorMethod:Ljava/lang/reflect/Method;

    .line 56
    sput-object v3, Landroid/view/HwuiBridge;->mRenderNodeField:Ljava/lang/reflect/Field;

    .line 57
    sput-object v2, Landroid/view/HwuiBridge;->mNativeRenderNodeField:Ljava/lang/reflect/Field;

    .line 27
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isAnimationOnAttachStateChange"    # Z

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const-wide/16 v2, 0x0

    .line 70
    .local v2, "nativeRenderNode":J
    :try_start_0
    sget-object v4, Landroid/view/HwuiBridge;->mRenderNodeField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RenderNode;

    .line 71
    .local v1, "renderNode":Landroid/view/RenderNode;
    sget-object v4, Landroid/view/HwuiBridge;->mNativeRenderNodeField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 76
    .end local v1    # "renderNode":Landroid/view/RenderNode;
    :goto_0
    iput-object p1, p0, Landroid/view/HwuiBridge;->mView:Landroid/view/View;

    .line 77
    invoke-direct {p0, v2, v3}, Landroid/view/HwuiBridge;->nCreate(J)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/HwuiBridge;->mNativePtr:J

    .line 78
    iget-wide v4, p0, Landroid/view/HwuiBridge;->mNativePtr:J

    invoke-static {v4, v5}, Landroid/view/HwuiBridge;->nGetFunctor(J)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/HwuiBridge;->mFunctor:J

    .line 79
    if-eqz p2, :cond_0

    .line 80
    new-instance v4, Landroid/view/HwuiBridge$1;

    invoke-direct {v4, p0}, Landroid/view/HwuiBridge$1;-><init>(Landroid/view/HwuiBridge;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 66
    :cond_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private createAnimator()J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 156
    iget-object v4, p0, Landroid/view/HwuiBridge;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_0

    .line 157
    return-wide v6

    .line 160
    :cond_0
    new-instance v0, Landroid/view/RenderNodeAnimator;

    const/16 v4, 0xc

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v0, v4, v5}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 161
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    iget-object v4, p0, Landroid/view/HwuiBridge;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 162
    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 166
    :try_start_0
    sget-object v4, Landroid/view/HwuiBridge;->mGetNativeAnimatorMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 172
    .local v2, "animatorPtr":J
    invoke-static {v2, v3}, Landroid/view/HwuiBridge;->nSetAnimatorEndless(J)V

    .line 173
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 174
    return-wide v2

    .line 167
    .end local v2    # "animatorPtr":J
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 169
    return-wide v6
.end method

.method private native nCreate(J)J
.end method

.method private static native nDelete(J)V
.end method

.method private static native nForceStopRenderingNow(J)V
.end method

.method private static native nGetFunctor(J)J
.end method

.method private static native nGetRenderingController(J)J
.end method

.method private static native nScheduleRendering(J)V
.end method

.method private static native nSetAnimatorEndless(J)V
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 100
    instance-of v0, p1, Landroid/view/DisplayListCanvas;

    if-eqz v0, :cond_0

    .line 101
    nop

    nop

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    iget-wide v0, p0, Landroid/view/HwuiBridge;->mFunctor:J

    invoke-virtual {p1, v0, v1}, Landroid/view/DisplayListCanvas;->callDrawGLFunction2(J)V

    .line 99
    return-void

    .line 103
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Canvas must be instance of DisplayListCanvas"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 137
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 138
    iget-wide v0, p0, Landroid/view/HwuiBridge;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/HwuiBridge;->nDelete(J)V

    .line 136
    return-void
.end method

.method public forceStopRenderingNow()V
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Landroid/view/HwuiBridge;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/HwuiBridge;->nForceStopRenderingNow(J)V

    .line 128
    return-void
.end method

.method getNativeRenderNode()J
    .locals 6

    .prologue
    .line 145
    const-wide/16 v2, 0x0

    .line 147
    .local v2, "nativeRenderNode":J
    :try_start_0
    sget-object v4, Landroid/view/HwuiBridge;->mRenderNodeField:Ljava/lang/reflect/Field;

    iget-object v5, p0, Landroid/view/HwuiBridge;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RenderNode;

    .line 148
    .local v1, "renderNode":Landroid/view/RenderNode;
    sget-object v4, Landroid/view/HwuiBridge;->mNativeRenderNodeField:Ljava/lang/reflect/Field;

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 152
    .end local v1    # "renderNode":Landroid/view/RenderNode;
    :goto_0
    return-wide v2

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public getRenderingController()J
    .locals 2

    .prologue
    .line 113
    iget-wide v0, p0, Landroid/view/HwuiBridge;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/HwuiBridge;->nGetRenderingController(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public scheduleRendering()V
    .locals 2

    .prologue
    .line 121
    iget-wide v0, p0, Landroid/view/HwuiBridge;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/view/HwuiBridge;->nScheduleRendering(J)V

    .line 120
    return-void
.end method
