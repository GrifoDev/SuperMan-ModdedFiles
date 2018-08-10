.class public Lcom/samsung/android/srib/virtualtourRenderer/ImageProducer;
.super Ljava/lang/Object;
.source "ImageProducer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mCImageProvider:Lcom/samsung/android/srib/virtualtourAPI/ImageProvider;

.field private mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

.field private numImages:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ImageProducer;->mCImageProvider:Lcom/samsung/android/srib/virtualtourAPI/ImageProvider;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ImageProducer;->numImages:I

    iput-object p1, p0, Lcom/samsung/android/srib/virtualtourRenderer/ImageProducer;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    iget v0, p1, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->numImages:I

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ImageProducer;->numImages:I

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ImageProducer;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    iget-object v0, v0, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->mCImageProvider:Lcom/samsung/android/srib/virtualtourAPI/ImageProvider;

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/ImageProducer;->mCImageProvider:Lcom/samsung/android/srib/virtualtourAPI/ImageProvider;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/ImageProducer;->numImages:I

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/ImageProducer;->mCImageProvider:Lcom/samsung/android/srib/virtualtourAPI/ImageProvider;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/srib/virtualtourAPI/ImageProvider;->getImage(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/srib/virtualtourRenderer/ImageProducer;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v2, v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->put(Landroid/graphics/Bitmap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
