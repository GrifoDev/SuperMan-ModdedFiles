.class Landroid/view/SurfaceView$SurfaceControlWithBackground$1;
.super Ljava/lang/Object;
.source "SurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/SurfaceView$SurfaceControlWithBackground;-><init>(Landroid/view/SurfaceView;Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/view/SurfaceView$SurfaceControlWithBackground;


# direct methods
.method constructor <init>(Landroid/view/SurfaceView$SurfaceControlWithBackground;)V
    .locals 0

    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground$1;->this$1:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground$1;->this$1:Landroid/view/SurfaceView$SurfaceControlWithBackground;

    invoke-static {v1}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->-wrap0(Landroid/view/SurfaceView$SurfaceControlWithBackground;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1
.end method
