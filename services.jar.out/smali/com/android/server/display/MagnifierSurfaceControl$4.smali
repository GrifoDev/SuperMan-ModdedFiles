.class Lcom/android/server/display/MagnifierSurfaceControl$4;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"

# interfaces
.implements Lcom/android/server/display/MagnifierDisplayPolicy$OnSizeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/MagnifierSurfaceControl;-><init>(Landroid/content/Context;Lcom/android/server/display/MagnifierSurfaceControl$Listener;Landroid/os/Handler;Lcom/android/server/display/MagnifierDisplayPolicy;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MagnifierSurfaceControl;


# direct methods
.method constructor <init>(Lcom/android/server/display/MagnifierSurfaceControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeChanged(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->-get6(Lcom/android/server/display/MagnifierSurfaceControl;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->-get12(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->-wrap2(Lcom/android/server/display/MagnifierSurfaceControl;)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->-wrap1(Lcom/android/server/display/MagnifierSurfaceControl;)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->-wrap0(Lcom/android/server/display/MagnifierSurfaceControl;)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->-get5(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->-get5(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->-get11(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/view/Surface;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/display/MagnifierSurfaceControl$Listener;->onChangeSurface(Landroid/view/Surface;)V

    :cond_0
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->-get1()Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->-get9(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v0

    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->-get1()Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->getPadding()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPadding(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->-get9(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->setPrecision()V

    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->-get1()Lcom/android/server/display/MagnifierSurfaceControl$Border;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->-get9(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierDisplayPolicy;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v1}, Lcom/android/server/display/MagnifierSurfaceControl;->-get2(Lcom/android/server/display/MagnifierSurfaceControl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v6}, Landroid/view/Display;->getLayerStack()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v3}, Lcom/android/server/display/MagnifierSurfaceControl;->-get9(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v4}, Lcom/android/server/display/MagnifierSurfaceControl;->-get9(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/MagnifierDisplayPolicy;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v5}, Lcom/android/server/display/MagnifierSurfaceControl;->-get9(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierDisplayPolicy;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/MagnifierSurfaceControl$Border;-><init>(Landroid/content/Context;IIILcom/android/server/display/MagnifierDisplayPolicy;)V

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->-set0(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->-get10(Lcom/android/server/display/MagnifierSurfaceControl;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/server/display/MagnifierSurfaceControl;->-set3(Lcom/android/server/display/MagnifierSurfaceControl;I)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->-get8(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->-get8(Lcom/android/server/display/MagnifierSurfaceControl;)Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/MagnifierSurfaceControl$HoverPoint;->hide()V

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl;->-wrap3(Lcom/android/server/display/MagnifierSurfaceControl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method
