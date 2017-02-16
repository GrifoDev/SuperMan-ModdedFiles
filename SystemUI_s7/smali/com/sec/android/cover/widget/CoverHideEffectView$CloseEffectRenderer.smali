.class Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;
.super Ljava/lang/Object;
.source "CoverHideEffectView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/widget/CoverHideEffectView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloseEffectRenderer"
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mBottom:F

.field private mFadeEndPosition:F

.field private mFadePosition:F

.field private mFadeStartPosition:F

.field private mFadeWidth:F

.field private final mHelper:Lcom/sec/android/cover/widget/GLHelper;

.field private mMVPMatrix:[F

.field private mProjectionMatrix:[F

.field private mTextureHandle:I

.field private mTextureVertices:Ljava/nio/FloatBuffer;

.field private mTop:F

.field private mVertices:Ljava/nio/FloatBuffer;

.field private mViewMatrix:[F

.field final synthetic this$0:Lcom/sec/android/cover/widget/CoverHideEffectView;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/widget/CoverHideEffectView;)V
    .locals 2

    const/16 v1, 0x10

    iput-object p1, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->this$0:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mViewMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mProjectionMatrix:[F

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mMVPMatrix:[F

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mTextureHandle:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/sec/android/cover/widget/GLHelper;

    invoke-direct {v0}, Lcom/sec/android/cover/widget/GLHelper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mHelper:Lcom/sec/android/cover/widget/GLHelper;

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 8

    const/16 v2, 0x1406

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->this$0:Lcom/sec/android/cover/widget/CoverHideEffectView;

    iget-object v7, v0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mBitmap:Landroid/graphics/Bitmap;

    iget v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mTextureHandle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    if-nez v7, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {v7}, Lcom/sec/android/cover/widget/GLHelper;->loadTexture(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mTextureHandle:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->this$0:Lcom/sec/android/cover/widget/CoverHideEffectView;

    iput-object v4, v0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->this$0:Lcom/sec/android/cover/widget/CoverHideEffectView;

    new-instance v1, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer$1;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer$1;-><init>(Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/CoverHideEffectView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mHelper:Lcom/sec/android/cover/widget/GLHelper;

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/GLHelper;->getProgram()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mHelper:Lcom/sec/android/cover/widget/GLHelper;

    const-string/jumbo v1, "u_MVPMatrix"

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/GLHelper;->getLocation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mMVPMatrix:[F

    invoke-static {v0, v5, v3, v1, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mHelper:Lcom/sec/android/cover/widget/GLHelper;

    const-string/jumbo v1, "a_Position"

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/GLHelper;->getLocation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x3

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mHelper:Lcom/sec/android/cover/widget/GLHelper;

    const-string/jumbo v1, "a_TexCoordinate"

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/GLHelper;->getLocation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v5, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mTextureVertices:Ljava/nio/FloatBuffer;

    const/4 v1, 0x2

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mHelper:Lcom/sec/android/cover/widget/GLHelper;

    const-string/jumbo v1, "a_Position"

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/GLHelper;->getLocation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mHelper:Lcom/sec/android/cover/widget/GLHelper;

    const-string/jumbo v1, "a_TexCoordinate"

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/GLHelper;->getLocation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mHelper:Lcom/sec/android/cover/widget/GLHelper;

    const-string/jumbo v1, "u_Texture"

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/GLHelper;->getLocation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    iget v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mTextureHandle:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mHelper:Lcom/sec/android/cover/widget/GLHelper;

    const-string/jumbo v1, "a_AlphaPos"

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/GLHelper;->getLocation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mFadePosition:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glVertexAttrib1f(IF)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mHelper:Lcom/sec/android/cover/widget/GLHelper;

    const-string/jumbo v1, "a_AlphaWidth"

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/GLHelper;->getLocation(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mFadeWidth:F

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glVertexAttrib1f(IF)V

    invoke-static {}, Lcom/sec/android/cover/widget/CoverHideEffectView;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "drawing with mFadePosition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mFadePosition:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    const/4 v1, 0x4

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void

    :catch_0
    move-exception v6

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->stopAnimation(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->this$0:Lcom/sec/android/cover/widget/CoverHideEffectView;

    iput-object v4, v0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mBitmap:Landroid/graphics/Bitmap;

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->this$0:Lcom/sec/android/cover/widget/CoverHideEffectView;

    iput-object v4, v1, Lcom/sec/android/cover/widget/CoverHideEffectView;->mBitmap:Landroid/graphics/Bitmap;

    throw v0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 17

    const/4 v2, 0x0

    const/4 v3, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v2, v3, v0, v1}, Landroid/opengl/GLES20;->glViewport(IIII)V

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p3

    int-to-float v3, v0

    div-float v13, v2, v3

    const/high16 v11, -0x40800000    # -1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    div-float/2addr v2, v13

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mBottom:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mBottom:F

    neg-float v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mTop:F

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v10, 0x41f00000    # 30.0f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mProjectionMatrix:[F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mBottom:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mTop:F

    const/4 v3, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x41f00000    # 30.0f

    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->this$0:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-static {v2}, Lcom/sec/android/cover/widget/CoverHideEffectView;->-get2(Lcom/sec/android/cover/widget/CoverHideEffectView;)F

    move-result v2

    move/from16 v0, p2

    int-to-float v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mFadeWidth:F

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mFadeStartPosition:F

    const/high16 v2, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mFadePosition:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mFadeWidth:F

    const/high16 v3, -0x40800000    # -1.0f

    sub-float v2, v3, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mFadeEndPosition:F

    const/16 v2, 0xc

    new-array v0, v2, [F

    move-object/from16 v16, v0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    aput v2, v16, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mTop:F

    const/4 v3, 0x1

    aput v2, v16, v3

    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v2, v16, v3

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x3

    aput v2, v16, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mBottom:F

    const/4 v3, 0x4

    aput v2, v16, v3

    const/4 v2, 0x0

    const/4 v3, 0x5

    aput v2, v16, v3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x6

    aput v2, v16, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mTop:F

    const/4 v3, 0x7

    aput v2, v16, v3

    const/4 v2, 0x0

    const/16 v3, 0x8

    aput v2, v16, v3

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x9

    aput v2, v16, v3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mBottom:F

    const/16 v3, 0xa

    aput v2, v16, v3

    const/4 v2, 0x0

    const/16 v3, 0xb

    aput v2, v16, v3

    invoke-static/range {v16 .. v16}, Lcom/sec/android/cover/widget/GLHelper;->loadToBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mVertices:Ljava/nio/FloatBuffer;

    const/16 v2, 0x8

    new-array v15, v2, [F

    fill-array-data v15, :array_0

    invoke-static {v15}, Lcom/sec/android/cover/widget/GLHelper;->loadToBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mTextureVertices:Ljava/nio/FloatBuffer;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mMVPMatrix:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mProjectionMatrix:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mViewMatrix:[F

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    invoke-static {}, Lcom/sec/android/cover/widget/CoverHideEffectView;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onSurfaceChanged"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 21

    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mHelper:Lcom/sec/android/cover/widget/GLHelper;

    invoke-virtual {v1}, Lcom/sec/android/cover/widget/GLHelper;->init()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, -0x3f600000    # -5.0f

    const/16 v18, 0x0

    const/high16 v19, 0x3f800000    # 1.0f

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mViewMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, -0x3f600000    # -5.0f

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-static/range {v1 .. v11}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    invoke-static {}, Lcom/sec/android/cover/widget/CoverHideEffectView;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "onSurfaceCreated"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stopAnimation(Z)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iput-object v1, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mAnimator:Landroid/animation/ObjectAnimator;

    iget v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mFadeStartPosition:F

    iput v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mFadePosition:F

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mTextureHandle:I

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->this$0:Lcom/sec/android/cover/widget/CoverHideEffectView;

    iput-object v1, v0, Lcom/sec/android/cover/widget/CoverHideEffectView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->this$0:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-static {v0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->-get3(Lcom/sec/android/cover/widget/CoverHideEffectView;)Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->this$0:Lcom/sec/android/cover/widget/CoverHideEffectView;

    invoke-static {v0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->-get3(Lcom/sec/android/cover/widget/CoverHideEffectView;)Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;->onHideAnimationFinished()V

    :cond_0
    return-void
.end method
