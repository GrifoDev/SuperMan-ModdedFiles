.class Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;
.super Ljava/lang/Object;
.source "VirtualTourMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/virtualtour/VirtualTourMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VTDepthMapGenRunnable"
.end annotation


# instance fields
.field private mcCurWalkSet:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;

.field final synthetic this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;


# direct methods
.method public constructor <init>(Lcom/samsung/android/media/virtualtour/VirtualTourMap;Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->mcCurWalkSet:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;

    iput-object p2, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->mcCurWalkSet:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;

    return-void
.end method

.method private generateDepthMap(Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;)Z
    .locals 42

    const-string/jumbo v4, "VirtualTourMap"

    const-string/jumbo v5, "generateDepthMap >>"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nStartID:I

    move/from16 v33, v0

    const/4 v4, 0x1

    new-array v9, v4, [I

    const-wide/16 v28, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    mul-int/lit8 v5, v5, 0x9

    invoke-static {v4, v5}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$000(Lcom/samsung/android/media/virtualtour/VirtualTourMap;I)[F

    move-result-object v8

    const/16 v25, 0x0

    check-cast v25, [[B

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    move-object/from16 v0, p1

    iget v5, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    add-int/lit8 v5, v5, -0x1

    mul-int/lit8 v5, v5, 0x6

    invoke-static {v4, v5}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$000(Lcom/samsung/android/media/virtualtour/VirtualTourMap;I)[F

    move-result-object v7

    const/16 v30, 0x0

    :goto_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    move/from16 v0, v30

    if-lt v0, v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v5}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$200(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v6}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$300(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v6

    invoke-static/range {v4 .. v9}, Lcom/samsung/android/media/virtualtour/CCreateSceneMapNative;->SNVTVInitScene(III[F[F[I)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v38

    const-wide/16 v12, 0x0

    add-long v28, v12, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$200(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v5}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$300(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v5

    mul-int/2addr v4, v5

    const/4 v5, 0x0

    aget v5, v9, v5

    mul-int/2addr v4, v5

    new-array v10, v4, [B

    const/4 v4, 0x0

    aget v4, v9, v4

    new-array v0, v4, [[B

    move-object/from16 v25, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-object/from16 v0, p1

    iget v11, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$200(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$300(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v13

    move-object v14, v8

    move-object v15, v9

    invoke-static/range {v10 .. v15}, Lcom/samsung/android/media/virtualtour/CCreateSceneMapNative;->SNVTVFetchSceneDepths([BIII[F[I)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v38

    add-long v28, v28, v4

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$200(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v5}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$300(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v5

    mul-int v27, v4, v5

    const/16 v30, 0x0

    :goto_1
    const/4 v4, 0x0

    aget v4, v9, v4

    move/from16 v0, v30

    if-lt v0, v4, :cond_3

    const/4 v7, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nStartID:I

    move/from16 v33, v0

    const/16 v30, 0x0

    :goto_2
    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    move/from16 v0, v30

    if-lt v0, v4, :cond_4

    const/16 v30, 0x0

    :goto_3
    const/4 v4, 0x0

    aget v4, v9, v4

    move/from16 v0, v30

    if-lt v0, v4, :cond_8

    const/16 v25, 0x0

    check-cast v25, [[B

    const/4 v9, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[TIME] DepthMapGeneration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "VirtualTourMap"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[TIME] DepthMapCropNResize "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "VirtualTourMap"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "VirtualTourMap"

    const-string/jumbo v5, "generateDepthMap <<"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    return v4

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$100(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)Ljava/util/LinkedList;

    move-result-object v4

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->getNextTransition()Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;

    move-result-object v34

    move-object/from16 v0, p1

    iget v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;->m_nCount:I

    add-int/lit8 v4, v4, -0x1

    move/from16 v0, v30

    if-lt v0, v4, :cond_2

    :cond_1
    invoke-virtual/range {v34 .. v34}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->getDestTileID()I

    move-result v33

    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_0

    :cond_2
    invoke-virtual/range {v34 .. v34}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->getAffine()[F

    move-result-object v23

    if-eqz v23, :cond_1

    mul-int/lit8 v32, v30, 0x6

    const/16 v31, 0x0

    :goto_4
    const/4 v4, 0x6

    move/from16 v0, v31

    if-ge v0, v4, :cond_1

    add-int v4, v32, v31

    add-int/lit8 v5, v31, 0x4

    aget v5, v23, v5

    aput v5, v7, v4

    add-int/lit8 v31, v31, 0x1

    goto :goto_4

    :cond_3
    move/from16 v0, v27

    new-array v4, v0, [B

    aput-object v4, v25, v30

    aget-object v4, v25, v30

    const/4 v5, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v0, v4, v5, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_1

    :cond_4
    mul-int/lit8 v35, v30, 0x9

    aget v4, v8, v35

    float-to-int v0, v4

    move/from16 v24, v0

    const/4 v4, 0x0

    aget v4, v9, v4

    move/from16 v0, v24

    if-gt v0, v4, :cond_7

    add-int/lit8 v4, v35, 0x1

    aget v18, v8, v4

    add-int/lit8 v4, v35, 0x2

    aget v19, v8, v4

    add-int/lit8 v4, v35, 0x5

    aget v40, v8, v4

    add-int/lit8 v4, v35, 0x6

    aget v41, v8, v4

    new-instance v36, Lcom/samsung/android/media/virtualtour/CRect;

    sub-float v4, v40, v18

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    sub-float v5, v41, v19

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    move-object/from16 v0, v36

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/samsung/android/media/virtualtour/CRect;-><init>(FFFF)V

    move-object/from16 v0, v36

    iget v4, v0, Lcom/samsung/android/media/virtualtour/CRect;->width:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_5

    const/high16 v4, 0x41200000    # 10.0f

    move-object/from16 v0, v36

    iput v4, v0, Lcom/samsung/android/media/virtualtour/CRect;->width:F

    :cond_5
    move-object/from16 v0, v36

    iget v4, v0, Lcom/samsung/android/media/virtualtour/CRect;->height:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_6

    const/high16 v4, 0x41200000    # 10.0f

    move-object/from16 v0, v36

    iput v4, v0, Lcom/samsung/android/media/virtualtour/CRect;->height:F

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$300(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v5}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$200(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v5

    mul-int/2addr v4, v5

    new-array v0, v4, [B

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$300(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v4

    int-to-float v11, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$200(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v4

    int-to-float v12, v4

    add-int/lit8 v4, v24, -0x1

    aget-object v13, v25, v4

    move-object/from16 v0, v36

    iget v15, v0, Lcom/samsung/android/media/virtualtour/CRect;->width:F

    move-object/from16 v0, v36

    iget v0, v0, Lcom/samsung/android/media/virtualtour/CRect;->height:F

    move/from16 v16, v0

    const/4 v14, 0x1

    invoke-static/range {v11 .. v19}, Lcom/samsung/android/media/virtualtour/CCreateSceneMapNative;->SNVTVCropNResizeImage(FF[BIFF[BFF)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v38

    add-long v20, v20, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v5}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$300(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v6}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$200(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)I

    move-result v6

    move-object/from16 v0, v17

    invoke-static {v4, v5, v6, v0}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$400(Lcom/samsung/android/media/virtualtour/VirtualTourMap;II[B)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;->setROI(Lcom/samsung/android/media/virtualtour/CRect;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->this$0:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-static {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->access$100(Lcom/samsung/android/media/virtualtour/VirtualTourMap;)Ljava/util/LinkedList;

    move-result-object v4

    move/from16 v0, v33

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;

    move-object/from16 v0, v22

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->setDepthMap(Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;)V

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->getNextTransition()Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->getDestTileID()I

    move-result v33

    const/16 v17, 0x0

    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_2

    :cond_7
    const/4 v4, 0x0

    return v4

    :cond_8
    const/4 v4, 0x0

    aput-object v4, v25, v30

    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_3
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->mcCurWalkSet:Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;

    invoke-direct {p0, v0}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTDepthMapGenRunnable;->generateDepthMap(Lcom/samsung/android/media/virtualtour/VirtualTourMap$VTWalkSet;)Z

    return-void
.end method
