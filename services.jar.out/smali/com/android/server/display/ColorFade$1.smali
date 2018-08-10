.class Lcom/android/server/display/ColorFade$1;
.super Ljava/lang/Object;
.source "ColorFade.java"

# interfaces
.implements Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorFade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ColorFade;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorFade;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResolutionChanged()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    iget-object v1, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->-get4(Lcom/android/server/display/ColorFade;)Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    move-result-object v1

    iget v1, v1, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayWidth:I

    invoke-static {v0, v1}, Lcom/android/server/display/ColorFade;->-set1(Lcom/android/server/display/ColorFade;I)I

    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    iget-object v1, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->-get4(Lcom/android/server/display/ColorFade;)Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;

    move-result-object v1

    iget v1, v1, Lcom/android/server/display/ColorFade$NaturalSurfaceLayout;->mDisplayHeight:I

    invoke-static {v0, v1}, Lcom/android/server/display/ColorFade;->-set0(Lcom/android/server/display/ColorFade;I)I

    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->-get2(Lcom/android/server/display/ColorFade;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->-get3(Lcom/android/server/display/ColorFade;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "ColorFade"

    const-string/jumbo v1, "onResolutionChanged(): mSurface or mSurfaceControl is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->-get2(Lcom/android/server/display/ColorFade;)Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->-get3(Lcom/android/server/display/ColorFade;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->-wrap2(Lcom/android/server/display/ColorFade;)V

    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->-get0(Lcom/android/server/display/ColorFade;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "ColorFade"

    const-string/jumbo v1, "onResolutionChanged(): mEglDisplay is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->-wrap1(Lcom/android/server/display/ColorFade;)Z

    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->-wrap0(Lcom/android/server/display/ColorFade;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "ColorFade"

    const-string/jumbo v1, "onResolutionChanged(): attachEglContext fail !!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->-get0(Lcom/android/server/display/ColorFade;)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->-get1(Lcom/android/server/display/ColorFade;)Landroid/opengl/EGLSurface;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    invoke-static {v0}, Lcom/android/server/display/ColorFade;->-wrap3(Lcom/android/server/display/ColorFade;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    invoke-static {v1}, Lcom/android/server/display/ColorFade;->-wrap3(Lcom/android/server/display/ColorFade;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
