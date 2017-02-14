.class public interface abstract Lcom/android/server/wm/HorizontalModeService;
.super Ljava/lang/Object;
.source "HorizontalModeService.java"


# virtual methods
.method public abstract adjustInputWindowHandle(Lcom/android/server/input/InputWindowHandle;)V
.end method

.method public abstract adjustRectForHorizontalWindow(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
.end method

.method public abstract dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
.end method

.method public abstract getBottomOffset()I
.end method

.method public abstract getHorizontalModeRotation()I
.end method

.method public abstract getScale()F
.end method

.method public abstract getTransX()F
.end method

.method public abstract getTransY()F
.end method

.method public abstract getTransformation(Lcom/android/server/wm/AppWindowToken;)Landroid/view/animation/Transformation;
.end method

.method public abstract init(Lcom/android/server/wm/WindowManagerService;)V
.end method

.method public abstract initTransformation(II)V
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract isHorizontalModeWindow(I)Z
.end method

.method public abstract isHorizontalModeWindow(Landroid/view/IApplicationToken;)Z
.end method

.method public abstract isHorizontalModeWindow(Lcom/android/server/wm/AppWindowToken;)Z
.end method

.method public abstract isScaleMode()Z
.end method

.method public abstract setEnable(Z)V
.end method
