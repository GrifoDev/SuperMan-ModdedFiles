.class Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;
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
    name = "CreateDepthMesh"
.end annotation


# instance fields
.field captureOrientation:I

.field depthInSteps:F

.field depthMap:[B

.field depthMapMeshQueue:Ljava/util/concurrent/SynchronousQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Lcom/samsung/android/srib/virtualtourRenderer/VTImage;",
            ">;"
        }
    .end annotation
.end field

.field height:I

.field imageSize:F

.field meshType:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

.field seqTransitionAmount:F

.field final synthetic this$0:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

.field vImage:Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

.field width:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;Lcom/samsung/android/srib/virtualtourRenderer/VTImage;[BFLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;FFIIILjava/util/concurrent/SynchronousQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/srib/virtualtourRenderer/VTImage;",
            "[BF",
            "Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;",
            "FFIII",
            "Ljava/util/concurrent/SynchronousQueue",
            "<",
            "Lcom/samsung/android/srib/virtualtourRenderer/VTImage;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->this$0:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->vImage:Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iput-object p3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->depthMap:[B

    iput p4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->imageSize:F

    iput-object p5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->meshType:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    iput p6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->seqTransitionAmount:F

    iput p7, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->depthInSteps:F

    iput p8, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->width:I

    iput p9, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->height:I

    iput p10, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->captureOrientation:I

    iput-object p11, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->depthMapMeshQueue:Ljava/util/concurrent/SynchronousQueue;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->vImage:Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->depthMap:[B

    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->imageSize:F

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->meshType:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    iget v4, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->seqTransitionAmount:F

    iget v5, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->depthInSteps:F

    iget v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->width:I

    iget v7, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->height:I

    iget v8, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->captureOrientation:I

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->createMesh([BFLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;FFIII)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->depthMapMeshQueue:Ljava/util/concurrent/SynchronousQueue;

    iget-object v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$CreateDepthMesh;->vImage:Lcom/samsung/android/srib/virtualtourRenderer/VTImage;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/SynchronousQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v9

    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
