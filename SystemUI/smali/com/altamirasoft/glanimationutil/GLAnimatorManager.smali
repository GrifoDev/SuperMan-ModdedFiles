.class public Lcom/altamirasoft/glanimationutil/GLAnimatorManager;
.super Ljava/lang/Object;
.source "GLAnimatorManager.java"

# interfaces
.implements Lcom/altamirasoft/glanimationutil/GLAnimatorFrameListener;
.implements Lcom/altamirasoft/glanimationutil/GLEasingHelper$EasingListener;
.implements Lcom/altamirasoft/glanimationutil/GLCalculateHelper$CalculateListener;
.implements Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorListener;


# instance fields
.field TAG:Ljava/lang/String;

.field anim:Landroid/animation/ValueAnimator;

.field calculateAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/altamirasoft/glanimationutil/GLCalculateHelper;",
            ">;"
        }
    .end annotation
.end field

.field easingAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/altamirasoft/glanimationutil/GLEasingHelper;",
            ">;"
        }
    .end annotation
.end field

.field isPendingStopEasing:Z

.field needKeepUpdate:Z

.field surfaceView:Landroid/opengl/GLSurfaceView;

.field valueAnimatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/altamirasoft/glanimationutil/GLValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field visible:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->visible:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->isPendingStopEasing:Z

    iput-boolean v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->needKeepUpdate:Z

    return-void
.end method


# virtual methods
.method public doFrame()V
    .locals 3

    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "doFrame"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->valueAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->easingAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->calculateAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->surfaceView:Landroid/opengl/GLSurfaceView;

    if-nez v1, :cond_3

    :goto_3
    return-void

    :cond_0
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->valueAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->doFrame()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->easingAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    invoke-virtual {v1}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->doFrame()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->calculateAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;

    invoke-virtual {v1}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->doFrame()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->surfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_3
.end method

.method public onAnimationEnd(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->removeValueAnimFrameListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V

    invoke-virtual {p0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->stopIfNoNeedUpdate()V

    return-void
.end method

.method public onEasingEnd(Lcom/altamirasoft/glanimationutil/GLEasingHelper;)V
    .locals 1

    iget-boolean v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->isPendingStopEasing:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->stopIfNoNeedUpdate()V

    goto :goto_0
.end method

.method public removeValueAnimFrameListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->valueAnimatorList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->valueAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public stopIfNoNeedUpdate()V
    .locals 5

    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "needKeepUpdate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->needKeepUpdate:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->needKeepUpdate:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->valueAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_3

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->easingAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_4

    :goto_2
    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "needStop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->anim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->pause()V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->easingAnimatorList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-boolean v2, v2, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->isPaused:Z

    if-eqz v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method
