.class public Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;
.super Ljava/lang/Object;
.source "VirtualTourViewerEngineSRIB.java"

# interfaces
.implements Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine;
.implements Lcom/samsung/android/media/virtualtour/IVirtualTourViewerOffScreenEngine;
.implements Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VirtualTourViewerEngine[SRIB]"

.field private static final forwardSpeed:I = 0x1

.field public static final mVelocityIncrementFactor:I = 0x4

.field private static final sidewardSpeed:I


# instance fields
.field private mAppContext:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngineEventListener;

.field private mAutoModeState:Z

.field private mContext:Landroid/content/Context;

.field private mHeight:I

.field private mOffRenderer:Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;

.field private mPicFormat:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;

.field private mRenderType:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

.field private mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

.field private mSourceURL:Ljava/lang/String;

.field private mWidth:I

.field private mbInitialized:Z

.field private mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

.field private mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mAppContext:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngineEventListener;

    iput-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mSourceURL:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    iput-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mOffRenderer:Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;

    iput-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    sget-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;->NONE:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderType:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    iput-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iput-boolean v2, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mAutoModeState:Z

    iput-boolean v2, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mbInitialized:Z

    iput v2, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mWidth:I

    iput v2, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mHeight:I

    return-void
.end method

.method private initializeScene()Z
    .locals 26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB$1;->$SwitchMap$com$samsung$android$media$virtualtour$VirtualTourDataManager$MetadataFormat:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v4, v4, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->eViewerMetadataMode:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;

    invoke-virtual {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager$MetadataFormat;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    invoke-virtual {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->getNoOfImages()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v2, v2, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-virtual {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v4, v4, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-virtual {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->getHeight()I

    move-result v4

    move/from16 v0, v22

    invoke-static {v0, v2, v4}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->createScene(III)Lcom/samsung/android/srib/virtualtourAPI/Scene;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    invoke-virtual {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->getaTranslations()[Lcom/samsung/android/media/virtualtour/CVector3;

    move-result-object v25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "num of Images = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    invoke-virtual {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->getNoOfImages()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "VirtualTourViewerEngine[SRIB]"

    invoke-static {v4, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v4}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->First(I[B)V

    const/4 v3, 0x1

    :goto_0
    move/from16 v0, v22

    if-lt v3, v0, :cond_a

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->End()V

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v2, v2, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-virtual {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->isDataReady()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v2, v2, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-virtual {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->getTileCount()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v2, v2, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-virtual {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v4, v4, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-virtual {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->getHeight()I

    move-result v4

    move/from16 v0, v22

    invoke-static {v0, v2, v4}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->createScene(III)Lcom/samsung/android/srib/virtualtourAPI/Scene;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v2, v2, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->getTile(I)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->getDepthMap()Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;

    move-result-object v16

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->getNextTransition()Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;

    move-result-object v17

    if-nez v16, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->m_nID:I

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->First(I[B)V

    :goto_1
    const/16 v21, 0x1

    :goto_2
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v2, v2, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->getTile(I)Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;

    move-result-object v18

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->getType()I

    move-result v2

    const/16 v4, 0x9

    if-ne v2, v4, :cond_6

    :cond_2
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->getDepthMap()Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;->getROI()Lcom/samsung/android/media/virtualtour/CRect;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->m_nID:I

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;->getDepthMap_Array()[B

    move-result-object v4

    iget v5, v14, Lcom/samsung/android/media/virtualtour/CRect;->topLeftx:F

    iget v6, v14, Lcom/samsung/android/media/virtualtour/CRect;->topLefty:F

    iget v7, v14, Lcom/samsung/android/media/virtualtour/CRect;->topLeftx:F

    iget v8, v14, Lcom/samsung/android/media/virtualtour/CRect;->width:F

    add-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v7, v8

    iget v8, v14, Lcom/samsung/android/media/virtualtour/CRect;->topLefty:F

    iget v9, v14, Lcom/samsung/android/media/virtualtour/CRect;->topLeftx:F

    iget v10, v14, Lcom/samsung/android/media/virtualtour/CRect;->width:F

    add-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v9, v10

    iget v10, v14, Lcom/samsung/android/media/virtualtour/CRect;->topLefty:F

    iget v11, v14, Lcom/samsung/android/media/virtualtour/CRect;->height:F

    add-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v10, v11

    iget v11, v14, Lcom/samsung/android/media/virtualtour/CRect;->topLeftx:F

    iget v12, v14, Lcom/samsung/android/media/virtualtour/CRect;->topLefty:F

    iget v13, v14, Lcom/samsung/android/media/virtualtour/CRect;->height:F

    add-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v12, v13

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->getNextTransition()Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;

    move-result-object v13

    invoke-virtual {v13}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->getAmount()F

    move-result v13

    invoke-virtual/range {v2 .. v13}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->Forward(I[BFFFFFFFFF)V

    :goto_3
    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->getNextTransition()Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;

    move-result-object v17

    add-int/lit8 v21, v21, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    return v2

    :cond_4
    const/4 v2, 0x0

    return v2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->m_nID:I

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourDepthMap;->getDepthMap_Array()[B

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->First(I[B)V

    goto :goto_1

    :cond_6
    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->getType()I

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->getVector()Lcom/samsung/android/media/virtualtour/CVector3;

    move-result-object v2

    iget v2, v2, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v24, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageSize()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v4, v4, v24

    mul-float v19, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getFocusPoint()F

    move-result v2

    div-float v19, v19, v2

    move/from16 v0, v19

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    double-to-float v15, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getFOV()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v15, v2

    invoke-virtual/range {v17 .. v17}, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTransition;->getAmount()F

    move-result v20

    const/16 v23, 0x1

    const/4 v2, 0x0

    cmpg-float v2, v20, v2

    if-gez v2, :cond_7

    const/16 v23, -0x1

    :cond_7
    move/from16 v0, v23

    int-to-float v2, v0

    mul-float/2addr v15, v2

    sub-float v2, v15, v20

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x3d75c28f    # 0.06f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_8

    move/from16 v15, v20

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourMap$VirtualTourTile;->m_nID:I

    invoke-virtual {v2, v4, v15}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->Turn(IF)V

    goto/16 :goto_3

    :cond_9
    const/4 v2, 0x0

    return v2

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    invoke-virtual {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->getTransitionType()[I

    move-result-object v2

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    const/16 v4, 0x9

    if-ne v2, v4, :cond_d

    :cond_b
    add-int/lit8 v2, v3, -0x1

    aget-object v2, v25, v2

    if-nez v2, :cond_f

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    invoke-virtual {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->getmAngles()Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->Forward(I[BF)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    invoke-virtual {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->getTransitionType()[I

    move-result-object v2

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    const/16 v4, 0xa

    if-eq v2, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    invoke-virtual {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->getTransitionType()[I

    move-result-object v2

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    const/4 v4, 0x1

    if-ne v2, v4, :cond_10

    :cond_e
    add-int/lit8 v2, v3, -0x1

    aget-object v2, v25, v2

    if-nez v2, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    invoke-virtual {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->getmAngles()Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v4, v3, v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->Turn(IF)V

    goto :goto_4

    :cond_f
    add-int/lit8 v2, v3, -0x1

    aget-object v2, v25, v2

    iget v2, v2, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_c

    add-int/lit8 v2, v3, -0x1

    aget-object v2, v25, v2

    iget v2, v2, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_c

    add-int/lit8 v2, v3, -0x1

    aget-object v2, v25, v2

    iget v2, v2, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    add-int/lit8 v4, v3, -0x1

    aget-object v4, v25, v4

    iget v5, v4, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    add-int/lit8 v4, v3, -0x1

    aget-object v4, v25, v4

    iget v6, v4, Lcom/samsung/android/media/virtualtour/CVector3;->y:F

    add-int/lit8 v4, v3, -0x1

    aget-object v4, v25, v4

    iget v7, v4, Lcom/samsung/android/media/virtualtour/CVector3;->z:F

    const/4 v4, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->Forward(I[BFFF)V

    goto :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    invoke-virtual {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->getTransitionType()[I

    move-result-object v2

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    const/4 v4, 0x2

    if-eq v2, v4, :cond_e

    goto/16 :goto_4

    :cond_11
    add-int/lit8 v2, v3, -0x1

    aget-object v2, v25, v2

    iget v2, v2, Lcom/samsung/android/media/virtualtour/CVector3;->x:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v4}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v24, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageSize()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v2, v4

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float v4, v4, v24

    mul-float v19, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getFocusPoint()F

    move-result v2

    div-float v19, v19, v2

    move/from16 v0, v19

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    double-to-float v15, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v2}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getFOV()F

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v2, v4

    add-float/2addr v15, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    invoke-virtual {v2}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->getmAngles()Ljava/util/ArrayList;

    move-result-object v2

    add-int/lit8 v4, v3, -0x1

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v20

    const/16 v23, 0x1

    const/4 v2, 0x0

    cmpg-float v2, v20, v2

    if-gez v2, :cond_12

    const/16 v23, -0x1

    :cond_12
    move/from16 v0, v23

    int-to-float v2, v0

    mul-float/2addr v15, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " ang calc = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " and ang_heuristic = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "Trans = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v4, v3, -0x1

    aget-object v4, v25, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "VirtualTourViewerEngine[SRIB]"

    invoke-static {v4, v2}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sub-float v2, v15, v20

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x3d75c28f    # 0.06f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_13

    move/from16 v15, v20

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v2, v3, v15}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->Turn(IF)V

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public animateToNearestNode(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->onTouchAnimation(I)V

    return-void
.end method

.method public configure(Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mPicFormat:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;

    return-void
.end method

.method public deInit()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    if-nez v1, :cond_0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    if-nez v1, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderType:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    sget-object v2, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;->ONSCREEN_RENDERER:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderType:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    sget-object v2, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;->OFFSCREEN_RENDERER:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    if-eq v1, v2, :cond_6

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    iput-object v3, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget-object v1, v1, Lcom/samsung/android/srib/virtualtourAPI/Scene;->data:[Lcom/samsung/android/srib/virtualtourAPI/ImageNode;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v1, v1, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    if-nez v1, :cond_3

    :goto_4
    iput-object v3, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v1, v1, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-virtual {v1}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->release()V

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    if-nez v1, :cond_5

    :goto_5
    iput-object v3, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->onDestroy()V

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mOffRenderer:Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;

    if-nez v1, :cond_7

    :goto_6
    iput-object v3, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mOffRenderer:Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mOffRenderer:Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;

    invoke-virtual {v1}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->dispose()V

    goto :goto_6
.end method

.method public getAspectRatio()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->getAspectRatio()F

    move-result v0

    return v0
.end method

.method public getAutoMode()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->getAutoMode()Z

    move-result v0

    return v0
.end method

.method public getCameraState(Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraState;)Z
    .locals 2

    sget-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB$1;->$SwitchMap$com$samsung$android$media$virtualtour$IVirtualTourViewerEngine$ECameraState:[I

    invoke-virtual {p1}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->isZoomed()Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getConfig()I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mPicFormat:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;->CONFIG_ARGB_8888:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mPicFormat:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;->CONFIG_RGB_565:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$EPicFormat;

    if-eq v0, v1, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getCurFOV()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->getCurrentFOV()F

    move-result v0

    return v0
.end method

.method public getEngineVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    const-string/jumbo v0, "1.4.5  2017/Jan/19"

    return-object v0
.end method

.method public getImageHeight()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImagePositions()[I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->getImagePositions()[I

    move-result-object v0

    return-object v0
.end method

.method public getImageWidth()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourAPI/Scene;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getMaxFOV()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->getMaxFOV()F

    move-result v0

    return v0
.end method

.method public getMaxSeekTime()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->getMaxSeekTime()I

    move-result v0

    return v0
.end method

.method public getMinFOV()F
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->getMinFOV()F

    move-result v0

    return v0
.end method

.method public getNextFrameAsByteBuffer(Ljava/nio/ByteBuffer;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mOffRenderer:Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;

    invoke-virtual {v0, p1}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;->getNextFrameAsByteBuffer(Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method public getSEFParserObj()Lcom/samsung/android/media/virtualtour/IVirtualTourSEFParser;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    return-object v0
.end method

.method public getVelocityIncrementFactor()F
    .locals 1

    const/high16 v0, 0x40800000    # 4.0f

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    return-object v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mSourceURL:Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    invoke-direct {v1}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v2, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mSourceURL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->decodeSEF(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-object p3, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderType:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderType:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    sget-object v2, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;->ONSCREEN_RENDERER:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderType:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    sget-object v2, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;->OFFSCREEN_RENDERER:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    if-eq v1, v2, :cond_6

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v1, "VirtualTourViewerEngine[SRIB]"

    const-string/jumbo v2, "SEF Parser null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    const-string/jumbo v1, "VirtualTourViewerEngine[SRIB]"

    const-string/jumbo v2, "SEF Decode failed"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    new-instance v1, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    iget-object v2, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v3, v3, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_cImageProvider:Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;

    iget-object v4, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    invoke-virtual {v4}, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->getNoOfImages()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v5, v5, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-virtual {v5}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->getCaptureOrientation()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;-><init>(Landroid/content/Context;Lcom/samsung/android/srib/virtualtourAPI/ImageProvider;II)V

    iput-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v1, v1, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-virtual {v1}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->processMap()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->initializeScene()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    iget-object v2, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    invoke-virtual {v1, v2}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->init(Lcom/samsung/android/srib/virtualtourAPI/Scene;)V

    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->notifyThread(Z)V

    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v1, p0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setOnRendererChangeListener(Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView$onRendererChangeListener;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "VirtualTourViewerEngine[SRIB]"

    const-string/jumbo v2, "mRenderer is null"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_5
    const-string/jumbo v1, "VirtualTourViewerEngine[SRIB]"

    const-string/jumbo v2, "Virtual Tour Map failed"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v1, v1, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-virtual {v1}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->processMap()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->initializeScene()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v1, "VirtualTourViewerEngine[SRIB]"

    const-string/jumbo v2, "Virtual Tour Scene failed"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_7
    const-string/jumbo v1, "VirtualTourViewerEngine[SRIB]"

    const-string/jumbo v2, "Virtual Tour Map failed"

    invoke-static {v1, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isARModeSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onAnimationComplete()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mAppContext:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngineEventListener;

    invoke-interface {v0}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngineEventListener;->onAnimationComplete()V

    return-void
.end method

.method public onAutoModeStateChanged(ZJ)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mAppContext:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngineEventListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngineEventListener;->onAutoModeStateChanged(ZJ)V

    return-void
.end method

.method public onImageChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mAppContext:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngineEventListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngineEventListener;->onImageChanged(II)V

    return-void
.end method

.method public onPositionChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mAppContext:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngineEventListener;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngineEventListener;->onPositionChanged(II)V

    return-void
.end method

.method public onTourReady()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mAppContext:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngineEventListener;

    invoke-interface {v0}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngineEventListener;->onTourReady()V

    return-void
.end method

.method public pause()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->getAutoMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mAutoModeState:Z

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setAutoMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->onPause()V

    return-void

    :cond_0
    const-string/jumbo v0, "VirtualTourViewerEngine[SRIB]"

    const-string/jumbo v1, "pause - Virtual Tour Engine NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->onResume()V

    iget-boolean v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mbInitialized:Z

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "VirtualTourViewerEngine[SRIB]"

    const-string/jumbo v1, "resume - Virtual Tour Engine NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    iget-boolean v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mAutoModeState:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setAutoMode(Z)V

    goto :goto_0
.end method

.method public seek(F)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    float-to-int v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setSeekBarTime(I)V

    return-void

    :cond_0
    const-string/jumbo v0, "VirtualTourViewerEngine[SRIB]"

    const-string/jumbo v1, "seek - Virtual Tour Engine NULL"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAutoDriveVelocity(Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;->FAST_FORWARD:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;->NORMAL_FORWARD:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;->FAST_BACKWARD:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;->NORMAL_BACKWARD:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraVelocity;

    if-eq p1, v0, :cond_3

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setVelocity(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setVelocity(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setVelocity(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setVelocity(I)V

    goto :goto_0
.end method

.method public setAutoMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v0, p1}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setAutoMode(Z)V

    return-void
.end method

.method public setCameraAnimation(Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;FF)V
    .locals 2

    sget-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB$1;->$SwitchMap$com$samsung$android$media$virtualtour$IVirtualTourViewerEngine$ECameraAnimation:[I

    invoke-virtual {p1}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraAnimation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->animateFovZoomIn()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v0}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->animateFovZoomOut()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCameraState(Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraState;FFF)V
    .locals 2

    sget-object v0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB$1;->$SwitchMap$com$samsung$android$media$virtualtour$IVirtualTourViewerEngine$ECameraState:[I

    invoke-virtual {p1}, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ECameraState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setZoomIncrement(FFF)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderer:Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/srib/virtualtourRenderer/RendererEngineView;->setPanDisplacement(FF)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEventListener(Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngineEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mAppContext:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngineEventListener;

    return-void
.end method

.method public setResolution(II)Z
    .locals 2

    iput p1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mWidth:I

    iput p2, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mHeight:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setResolution W "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " H "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "VirtualTourViewerEngine[SRIB]"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public start()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mRenderType:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    sget-object v1, Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;->OFFSCREEN_RENDERER:Lcom/samsung/android/media/virtualtour/IVirtualTourViewerEngine$ERenderType;

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;

    iget-object v1, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcCurScene:Lcom/samsung/android/srib/virtualtourAPI/Scene;

    iget v3, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mWidth:I

    iget v4, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mHeight:I

    iget-object v5, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v5, v5, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_cImageProvider:Lcom/samsung/android/media/virtualtour/SEFImageProviderSRIB;

    iget-object v6, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mcSEFParser:Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;

    iget-object v6, v6, Lcom/samsung/android/media/virtualtour/VirtualTourDataManager;->m_oVTMap:Lcom/samsung/android/media/virtualtour/VirtualTourMap;

    invoke-virtual {v6}, Lcom/samsung/android/media/virtualtour/VirtualTourMap;->getCaptureOrientation()I

    move-result v6

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;-><init>(Landroid/content/Context;Lcom/samsung/android/srib/virtualtourAPI/Scene;IILcom/samsung/android/srib/virtualtourAPI/ImageProvider;I)V

    iput-object v0, p0, Lcom/samsung/android/media/virtualtour/VirtualTourViewerEngineSRIB;->mOffRenderer:Lcom/samsung/android/srib/virtualtourRenderer/OffscreenRendererEngine;

    goto :goto_0
.end method
