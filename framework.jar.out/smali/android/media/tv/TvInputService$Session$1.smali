.class Landroid/media/tv/TvInputService$Session$1;
.super Ljava/lang/Object;
.source "TvInputService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/tv/TvInputService$Session;->setOverlayViewEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/tv/TvInputService$Session;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Landroid/media/tv/TvInputService$Session;Z)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvInputService$Session$1;->this$1:Landroid/media/tv/TvInputService$Session;

    iput-boolean p2, p0, Landroid/media/tv/TvInputService$Session$1;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session$1;->val$enable:Z

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$1;->this$1:Landroid/media/tv/TvInputService$Session;

    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get2(Landroid/media/tv/TvInputService$Session;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$1;->this$1:Landroid/media/tv/TvInputService$Session;

    iget-boolean v1, p0, Landroid/media/tv/TvInputService$Session$1;->val$enable:Z

    invoke-static {v0, v1}, Landroid/media/tv/TvInputService$Session;->-set1(Landroid/media/tv/TvInputService$Session;Z)Z

    iget-boolean v0, p0, Landroid/media/tv/TvInputService$Session$1;->val$enable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$1;->this$1:Landroid/media/tv/TvInputService$Session;

    invoke-static {v0}, Landroid/media/tv/TvInputService$Session;->-get6(Landroid/media/tv/TvInputService$Session;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$1;->this$1:Landroid/media/tv/TvInputService$Session;

    iget-object v1, p0, Landroid/media/tv/TvInputService$Session$1;->this$1:Landroid/media/tv/TvInputService$Session;

    invoke-static {v1}, Landroid/media/tv/TvInputService$Session;->-get6(Landroid/media/tv/TvInputService$Session;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/tv/TvInputService$Session$1;->this$1:Landroid/media/tv/TvInputService$Session;

    invoke-static {v2}, Landroid/media/tv/TvInputService$Session;->-get1(Landroid/media/tv/TvInputService$Session;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/tv/TvInputService$Session;->createOverlayView(Landroid/os/IBinder;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/media/tv/TvInputService$Session$1;->this$1:Landroid/media/tv/TvInputService$Session;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/tv/TvInputService$Session;->removeOverlayView(Z)V

    goto :goto_0
.end method
