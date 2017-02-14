.class public interface abstract Lcom/android/server/wm/IMultiWindowFocusedFramePolicy;
.super Ljava/lang/Object;
.source "IMultiWindowFocusedFramePolicy.java"


# virtual methods
.method public abstract needToHide()Z
.end method

.method public abstract positionFocusedFrameView(Landroid/graphics/Rect;Landroid/graphics/Rect;Z)V
.end method

.method public abstract registerMultiWindowFocusedFrameListener(Lcom/samsung/android/multiwindow/IMultiWindowFocusedFrameListener;)V
.end method

.method public abstract setDockResizing(Z)V
.end method

.method public abstract setFocusedApp(Lcom/android/server/wm/AppWindowToken;)V
.end method

.method public abstract setFocusedFrameViewWindow(Lcom/android/server/wm/WindowState;)V
.end method
