.class Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;
.super Ljava/lang/Object;
.source "RenderNodeAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/RenderNodeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedAnimationHelper"
.end annotation


# instance fields
.field private mCallbackScheduled:Z

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mDelayedAnims:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/RenderNodeAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    .line 443
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    .line 442
    return-void
.end method

.method private scheduleCallback()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 456
    iget-boolean v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    if-nez v0, :cond_0

    .line 457
    iput-boolean v2, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    .line 458
    iget-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 455
    :cond_0
    return-void
.end method


# virtual methods
.method public addDelayedAnimation(Landroid/view/RenderNodeAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/view/RenderNodeAnimator;

    .prologue
    .line 447
    iget-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->scheduleCallback()V

    .line 446
    return-void
.end method

.method public removeDelayedAnimation(Landroid/view/RenderNodeAnimator;)V
    .locals 1
    .param p1, "animator"    # Landroid/view/RenderNodeAnimator;

    .prologue
    .line 452
    iget-object v0, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 464
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v5}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v2

    .line 465
    .local v2, "frameTimeMs":J
    iput-boolean v6, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mCallbackScheduled:Z

    .line 467
    const/4 v1, 0x0

    .line 468
    .local v1, "end":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 469
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/RenderNodeAnimator;

    .line 470
    .local v0, "animator":Landroid/view/RenderNodeAnimator;
    invoke-static {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->-wrap0(Landroid/view/RenderNodeAnimator;J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 471
    if-eq v1, v4, :cond_0

    .line 472
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 474
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 468
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 477
    .end local v0    # "animator":Landroid/view/RenderNodeAnimator;
    :cond_2
    :goto_1
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v1, :cond_3

    .line 478
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 481
    :cond_3
    iget-object v5, p0, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->mDelayedAnims:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 482
    invoke-direct {p0}, Landroid/view/RenderNodeAnimator$DelayedAnimationHelper;->scheduleCallback()V

    .line 463
    :cond_4
    return-void
.end method
