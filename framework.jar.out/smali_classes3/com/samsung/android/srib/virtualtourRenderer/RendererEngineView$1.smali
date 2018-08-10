.class Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$1;
.super Ljava/lang/Object;
.source "RendererEngineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;


# direct methods
.method constructor <init>(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$1;->this$0:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$1;->this$0:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->requestRender()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$1;->this$0:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-static {v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->access$000(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
