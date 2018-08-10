.class Landroid/view/SurfaceView$SurfaceControlWithBackground;
.super Landroid/view/SurfaceControl;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/SurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SurfaceControlWithBackground"
.end annotation


# instance fields
.field private mBackgroundControl:Landroid/view/SurfaceControl;

.field private mOpaque:Z

.field public mVisible:Z

.field final synthetic this$0:Landroid/view/SurfaceView;


# direct methods
.method static synthetic -wrap0(Landroid/view/SurfaceView$SurfaceControlWithBackground;)Z
    .locals 1

    invoke-direct {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateSurfaceControl()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/view/SurfaceView$SurfaceControlWithBackground;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateSurfaceControlIfNeeded()V

    return-void
.end method

.method public constructor <init>(Landroid/view/SurfaceView;Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iput-object p1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    new-instance v0, Landroid/view/SurfaceControl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Background for - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v1, 0x20000

    or-int v6, p7, v1

    const/4 v5, -0x1

    move-object v1, p2

    move v3, p4

    move v4, p5

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    and-int/lit16 v0, p7, 0x400

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    invoke-static {p1}, Landroid/view/SurfaceView;->-get5(Landroid/view/SurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/SurfaceView$SurfaceControlWithBackground$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground$1;-><init>(Landroid/view/SurfaceView$SurfaceControlWithBackground;)V

    invoke-virtual {p1, v0}, Landroid/view/SurfaceView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSurfaceControl()Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v12}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v12, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v12, :cond_1

    :cond_0
    const/4 v12, 0x0

    return v12

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v12}, Landroid/view/SurfaceView;->getRotation()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v12}, Landroid/view/SurfaceView;->getRotationX()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-eqz v12, :cond_3

    :cond_2
    const/4 v12, 0x0

    return v12

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v12}, Landroid/view/SurfaceView;->getRotationY()F

    move-result v12

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v12}, Landroid/view/SurfaceView;->-wrap0(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    iget-object v13, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    invoke-static {v12, v13}, Landroid/view/SurfaceView;->-set1(Landroid/view/SurfaceView;I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    iget-object v13, v11, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v13

    invoke-static {v12, v13}, Landroid/view/SurfaceView;->-set0(Landroid/view/SurfaceView;I)I

    move-result v6

    const/4 v5, 0x0

    iget v12, v10, Landroid/graphics/Rect;->left:I

    if-nez v12, :cond_4

    iget v12, v10, Landroid/graphics/Rect;->top:I

    if-eqz v12, :cond_a

    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v13}, Landroid/view/SurfaceView;->-get4(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/SurfaceView;->getHitRect(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v13}, Landroid/view/SurfaceView;->-get2(Landroid/view/SurfaceView;)[I

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v12}, Landroid/view/SurfaceView;->-get4(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v13}, Landroid/view/SurfaceView;->-get2(Landroid/view/SurfaceView;)[I

    move-result-object v13

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v14}, Landroid/view/SurfaceView;->-get2(Landroid/view/SurfaceView;)[I

    move-result-object v14

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v15}, Landroid/view/SurfaceView;->-get2(Landroid/view/SurfaceView;)[I

    move-result-object v15

    const/16 v16, 0x0

    aget v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/view/SurfaceView;->-get4(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->width()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/view/SurfaceView;->-get2(Landroid/view/SurfaceView;)[I

    move-result-object v16

    const/16 v17, 0x1

    aget v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/view/SurfaceView;->-get4(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    add-int v16, v16, v17

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v12}, Landroid/view/SurfaceView;->-get4(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->left:I

    if-gez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v12}, Landroid/view/SurfaceView;->-get4(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->left:I

    neg-int v2, v12

    const/4 v5, 0x1

    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v12}, Landroid/view/SurfaceView;->-get4(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->top:I

    if-gez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v12}, Landroid/view/SurfaceView;->-get4(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->top:I

    neg-int v4, v12

    const/4 v5, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v12}, Landroid/view/SurfaceView;->-get4(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v13}, Landroid/view/SurfaceView;->-get4(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v13

    if-le v12, v7, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v12}, Landroid/view/SurfaceView;->-get4(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->right:I

    sub-int v3, v12, v7

    const/4 v5, 0x1

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v12}, Landroid/view/SurfaceView;->-get4(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v13}, Landroid/view/SurfaceView;->-get4(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v13

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    if-le v12, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v12}, Landroid/view/SurfaceView;->-get4(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v12

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v12, v6

    const/4 v5, 0x1

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    iget-object v12, v12, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v12, :cond_b

    :cond_9
    :goto_1
    const/4 v12, 0x1

    return v12

    :cond_a
    iget v12, v10, Landroid/graphics/Rect;->right:I

    if-nez v12, :cond_4

    iget v12, v10, Landroid/graphics/Rect;->bottom:I

    if-eqz v12, :cond_9

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Landroid/view/SurfaceView;->-get1()Z

    move-result v12

    if-eqz v12, :cond_10

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    iget-object v12, v12, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    iget v13, v13, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v13, v13

    div-float v8, v12, v13

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    iget-object v12, v12, Landroid/view/SurfaceView;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    iget v13, v13, Landroid/view/SurfaceView;->mSurfaceHeight:I

    int-to-float v13, v13

    div-float v9, v12, v13

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v8, v12

    if-nez v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v12}, Landroid/view/SurfaceView;->getScaleX()F

    move-result v8

    :cond_c
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v9, v12

    if-nez v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v12}, Landroid/view/SurfaceView;->getScaleY()F

    move-result v9

    :cond_d
    const/4 v12, 0x0

    cmpl-float v12, v8, v12

    if-eqz v12, :cond_e

    const/4 v12, 0x0

    cmpl-float v12, v9, v12

    if-nez v12, :cond_f

    :cond_e
    const/4 v12, 0x0

    return v12

    :cond_f
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v12}, Landroid/view/SurfaceView;->-get3(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v12

    int-to-float v13, v2

    div-float/2addr v13, v8

    float-to-int v13, v13

    int-to-float v14, v4

    div-float/2addr v14, v9

    float-to-int v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    iget v15, v15, Landroid/view/SurfaceView;->mSurfaceWidth:I

    int-to-float v0, v3

    move/from16 v16, v0

    div-float v16, v16, v8

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/SurfaceView;->mSurfaceHeight:I

    move/from16 v16, v0

    int-to-float v0, v1

    move/from16 v17, v0

    div-float v17, v17, v9

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    iget-object v12, v12, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v13}, Landroid/view/SurfaceView;->-get3(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v12}, Landroid/view/SurfaceView;->-get3(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v12}, Landroid/view/SurfaceView;->-get3(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    iget-object v12, v12, Landroid/view/SurfaceView;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v13}, Landroid/view/SurfaceView;->-get3(Landroid/view/SurfaceView;)Landroid/graphics/Rect;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    goto/16 :goto_1
.end method

.method private updateSurfaceControlIfNeeded()V
    .locals 4

    iget-object v3, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, v2, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v3, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v3}, Landroid/view/SurfaceView;->-get7(Landroid/view/SurfaceView;)I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v3}, Landroid/view/SurfaceView;->-get6(Landroid/view/SurfaceView;)I

    move-result v3

    if-eq v0, v3, :cond_3

    :cond_2
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    invoke-direct {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateSurfaceControl()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    :cond_3
    return-void

    :catchall_0
    move-exception v3

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v3
.end method


# virtual methods
.method public deferTransactionUntil(Landroid/os/IBinder;J)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    return-void
.end method

.method public deferTransactionUntil(Landroid/view/Surface;J)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/view/Surface;J)V

    return-void
.end method

.method public destroy()V
    .locals 3

    invoke-super {p0}, Landroid/view/SurfaceControl;->destroy()V

    const-string/jumbo v0, "SurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BG destroy() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    return-void
.end method

.method public hide()V
    .locals 1

    invoke-super {p0}, Landroid/view/SurfaceControl;->hide()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateBackgroundVisibility()V

    return-void
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Landroid/view/SurfaceControl;->release()V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    return-void
.end method

.method public setFinalCrop(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setLayer(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V

    return-void
.end method

.method public setLayerStack(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    return-void
.end method

.method public setOpaque(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V

    iput-boolean p1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateBackgroundVisibility()V

    return-void
.end method

.method public setPosition(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-get5(Landroid/view/SurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateSurfaceControl()Z

    move-result v0

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    return-void
.end method

.method public setSecure(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V

    return-void
.end method

.method public setSize(II)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v0}, Landroid/view/SurfaceView;->-get5(Landroid/view/SurfaceView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateSurfaceControl()Z

    move-result v0

    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V

    return-void
.end method

.method public setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V

    return-void
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    return-void
.end method

.method public show()V
    .locals 1

    invoke-super {p0}, Landroid/view/SurfaceControl;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    invoke-virtual {p0}, Landroid/view/SurfaceView$SurfaceControlWithBackground;->updateBackgroundVisibility()V

    return-void
.end method

.method updateBackgroundVisibility()V
    .locals 4

    invoke-static {}, Landroid/view/SurfaceView;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-static {v1}, Landroid/view/SurfaceView;->-get5(Landroid/view/SurfaceView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->semIsShownMWBG()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    const-string/jumbo v1, "SurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BG hide() ... It will be covered by ViewRootImpl BG. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V

    const-string/jumbo v1, "SurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BG show() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->hide()V

    const-string/jumbo v1, "SurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BG hide() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mBackgroundControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mOpaque:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->mVisible:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/SurfaceView$SurfaceControlWithBackground;->this$0:Landroid/view/SurfaceView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
