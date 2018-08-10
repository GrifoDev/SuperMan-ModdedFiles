.class public interface abstract Landroid/view/SurfaceHolder$Callback2;
.super Ljava/lang/Object;
.source "SurfaceHolder.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback2"
.end annotation


# virtual methods
.method public abstract surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
.end method

.method public surfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;Ljava/lang/Runnable;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    return-void
.end method
