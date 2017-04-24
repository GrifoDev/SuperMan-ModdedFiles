.class Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;
.super Ljava/lang/Object;
.source "VideoCallFragment.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/VideoCallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoCallSurface"
.end annotation


# instance fields
.field private mSavedSurface:Landroid/view/Surface;

.field private mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mSurfaceId:I

.field private mTextureView:Landroid/view/TextureView;

.field final synthetic this$0:Lcom/android/incallui/fragment/VideoCallFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/fragment/VideoCallFragment;ILandroid/view/TextureView;)V
    .locals 3

    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->this$0:Lcom/android/incallui/fragment/VideoCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoCallFragment - VideoCallSurface - Create VideoCallSurface : surfaceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    iput p2, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    # setter for: Lcom/android/incallui/fragment/VideoCallFragment;->mWidth:I
    invoke-static {p1, v1}, Lcom/android/incallui/fragment/VideoCallFragment;->access$002(Lcom/android/incallui/fragment/VideoCallFragment;I)I

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    # setter for: Lcom/android/incallui/fragment/VideoCallFragment;->mHeight:I
    invoke-static {p1, v1}, Lcom/android/incallui/fragment/VideoCallFragment;->access$102(Lcom/android/incallui/fragment/VideoCallFragment;I)I

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v1

    if-eq v1, p0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v1, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_0
    return-void
.end method

.method private hide()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private show()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eq v0, p0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public captureImage()Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->this$0:Lcom/android/incallui/fragment/VideoCallFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/util/VideoCallUtils;->makeCapureFilePath(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/android/incallui/util/VideoCallUtils;->saveBitmapToFilePath(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 8

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3}, Landroid/view/TextureView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v4}, Landroid/view/TextureView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    const/16 v0, 0x280

    float-to-double v4, v1

    const-wide v6, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    const/16 v0, 0x1e0

    :cond_0
    :goto_0
    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int v2, v3

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v2, v0}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    float-to-double v4, v1

    const-wide v6, 0x3ff3333333333333L    # 1.2

    cmpl-double v3, v4, v6

    if-lez v3, :cond_0

    const/16 v0, 0x120

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallFragment - onSurfaceTextureAvailable : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->this$0:Lcom/android/incallui/fragment/VideoCallFragment;

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VideoCallFragment;->onSurfaceCreated(I)V

    :cond_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoCallFragment - onSurfaceTextureDestroyed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->this$0:Lcom/android/incallui/fragment/VideoCallFragment;

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VideoCallFragment;->onSurfaceDestroyed(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->setDoneWithSurface()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->this$0:Lcom/android/incallui/fragment/VideoCallFragment;

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-virtual {v0, v1}, Lcom/android/incallui/fragment/VideoCallFragment;->onSurfaceUpdated(I)V

    :cond_0
    return-void
.end method

.method public saveAsImage()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->this$0:Lcom/android/incallui/fragment/VideoCallFragment;

    iget-object v2, v2, Lcom/android/incallui/fragment/VideoCallFragment;->mPrimaryCall:Lcom/android/incallui/Call;

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSurfaceId:I

    invoke-static {v2, v0, v3}, Lcom/android/incallui/util/VideoCallUtils;->saveSurfaceImage(Lcom/android/incallui/Call;Landroid/graphics/Bitmap;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VideoCallFragment - saveAsImage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->video(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDoneWithSurface()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->mSavedSurface:Landroid/view/Surface;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallFragment$VideoCallSurface;->hide()V

    goto :goto_0
.end method
