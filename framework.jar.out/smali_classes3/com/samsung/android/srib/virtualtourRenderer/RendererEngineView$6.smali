.class Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$6;
.super Ljava/lang/Object;
.source "RendererEngineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->init(Lcom/samsung/android/srib/virtualtourAPI/Scene;)V
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

    iput-object p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$6;->this$0:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$6;->this$0:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-static {v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->access$100(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;)Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$6;->this$0:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-static {v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->access$100(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;)Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$6;->this$0:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-static {v1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->access$300(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;)Z

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$6;->this$0:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    iget-wide v2, v2, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->number:J

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;->onAutoModeStateChanged(ZJ)V

    goto :goto_0
.end method
