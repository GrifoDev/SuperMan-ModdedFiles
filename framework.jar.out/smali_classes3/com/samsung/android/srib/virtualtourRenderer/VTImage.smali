.class public Lcom/samsung/android/srib/virtualtourRenderer/VTImage;
.super Ljava/lang/Object;
.source "VTImage.java"


# instance fields
.field private ImgMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

.field private TexCreated:Z

.field private UseMipMaps:Z

.field private mTextureID:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->UseMipMaps:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->TexCreated:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->mTextureID:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->ImgMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    return-void
.end method


# virtual methods
.method DestroyTexture()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->TexCreated:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->mTextureID:I

    if-eq v1, v3, :cond_0

    new-array v0, v4, [I

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->mTextureID:I

    aput v1, v0, v2

    invoke-static {v4, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    iput v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->mTextureID:I

    goto :goto_0
.end method

.method createMesh([BFLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;FFIII)V
    .locals 12

    iget-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->ImgMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v3, Lcom/samsung/android/srib/virtualtourRenderer/VTImage$1;->$SwitchMap$com$samsung$android$srib$virtualtourRenderer$Mesh$MeshType:[I

    invoke-virtual {p3}, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-static {p2, p3, v0, v1, v2}, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->createMesh(FLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;III)Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->ImgMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    goto :goto_0

    :pswitch_0
    if-nez p1, :cond_1

    sget-object v3, Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;->FLAT:Lcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;

    move/from16 v0, p6

    move/from16 v1, p7

    move/from16 v2, p8

    invoke-static {p2, v3, v0, v1, v2}, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->createMesh(FLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;III)Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->ImgMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    move v4, p2

    move-object v5, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v8, p1

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;-><init>(FLcom/samsung/android/srib/virtualtourRenderer/Mesh$MeshType;II[BFFI)V

    iput-object v3, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->ImgMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method createTexture(Landroid/graphics/Bitmap;)V
    .locals 8

    const v7, 0x812f

    const/16 v2, 0x2601

    const/4 v6, 0x1

    const/16 v5, 0xde1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->TexCreated:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->mTextureID:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    new-array v0, v6, [I

    invoke-static {v6, v0, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    aget v1, v0, v4

    iput v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->mTextureID:I

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->mTextureID:I

    invoke-static {v5, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-boolean v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->UseMipMaps:Z

    const/16 v3, 0x2801

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-static {v5, v3, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2800

    invoke-static {v5, v1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2802

    invoke-static {v5, v1, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 v1, 0x2803

    invoke-static {v5, v1, v7}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    invoke-static {v5, v4, p1, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    if-nez p1, :cond_3

    :goto_2
    iget-boolean v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->UseMipMaps:Z

    if-nez v1, :cond_4

    :goto_3
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    iput-boolean v6, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->TexCreated:Z

    goto :goto_0

    :cond_2
    const/16 v1, 0x2703

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    invoke-static {v5}, Landroid/opengl/GLES20;->glGenerateMipmap(I)V

    goto :goto_3
.end method

.method getTextureID()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->mTextureID:I

    return v0
.end method

.method onDestroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->DestroyTexture()V

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->ImgMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    if-nez v0, :cond_0

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->TexCreated:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->ImgMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->release()V

    goto :goto_0
.end method

.method render()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->ImgMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    iget v1, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->mTextureID:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->render(I)V

    return-void
.end method

.method setPositionHandle(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->ImgMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    invoke-virtual {v0, p1}, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->setPositionHandle(I)V

    return-void
.end method

.method setTextureHandle(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/srib/virtualtourRenderer/VTImage;->ImgMesh:Lcom/samsung/android/srib/virtualtourRenderer/Mesh;

    invoke-virtual {v0, p1}, Lcom/samsung/android/srib/virtualtourRenderer/Mesh;->setTextureHandle(I)V

    return-void
.end method
