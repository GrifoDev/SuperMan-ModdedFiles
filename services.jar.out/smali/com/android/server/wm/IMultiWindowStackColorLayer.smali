.class public interface abstract Lcom/android/server/wm/IMultiWindowStackColorLayer;
.super Ljava/lang/Object;
.source "IMultiWindowStackColorLayer.java"


# virtual methods
.method public abstract adjustLayer()V
.end method

.method public abstract destroySurface()V
.end method

.method public abstract getBounds()Landroid/graphics/Rect;
.end method

.method public abstract getColor()I
.end method

.method public abstract getDockedSide()I
.end method

.method public abstract getLayer()I
.end method

.method public abstract getSurfaceBounds()Landroid/graphics/Rect;
.end method

.method public abstract getTargetAlpha()F
.end method

.method public abstract hasSurfacePosChanged()Z
.end method

.method public abstract hide()V
.end method

.method public abstract hide(J)V
.end method

.method public abstract initiate(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/TaskStack;IILjava/lang/String;)V
.end method

.method public abstract isAnimating()Z
.end method

.method public abstract isBoundsOutOfScreen()Z
.end method

.method public abstract isMinimizing()Z
.end method

.method public abstract isShowing()Z
.end method

.method public abstract isTranslucent()Z
.end method

.method public abstract printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract setAnimatingForMinimizedDockedStack(Z)V
.end method

.method public abstract setBounds(Landroid/graphics/Rect;)V
.end method

.method public abstract setColor(I)V
.end method

.method public abstract setLayer(I)V
.end method

.method public abstract setSurfacePosition(Landroid/graphics/Rect;)V
.end method

.method public abstract setupSurface()Z
.end method

.method public abstract setupSurface(Z)Z
.end method

.method public abstract shouldUpdateSurface()Z
.end method

.method public abstract show()V
.end method

.method public abstract show(FJ)V
.end method

.method public abstract stepAnimation()Z
.end method
