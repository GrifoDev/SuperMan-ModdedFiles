.class Landroid/media/WebVttRenderingWidget;
.super Landroid/view/ViewGroup;
.source "WebVttRenderer.java"

# interfaces
.implements Landroid/media/SubtitleTrack$RenderingWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WebVttRenderingWidget$1;,
        Landroid/media/WebVttRenderingWidget$CueLayout;,
        Landroid/media/WebVttRenderingWidget$RegionLayout;,
        Landroid/media/WebVttRenderingWidget$SpanLayout;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_CUE_BACKGROUND:I = -0x7f010000

.field private static final DEBUG_REGION_BACKGROUND:I = -0x7fffff01

.field private static final DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private static final LINE_HEIGHT_RATIO:F = 0.0533f


# instance fields
.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private final mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

.field private final mCueBoxes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/TextTrackCue;",
            "Landroid/media/WebVttRenderingWidget$CueLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mFontSize:F

.field private mHasChangeListener:Z

.field private mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private final mManager:Landroid/view/accessibility/CaptioningManager;

.field private final mRegionBoxes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/media/TextTrackRegion;",
            "Landroid/media/WebVttRenderingWidget$RegionLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/media/WebVttRenderingWidget;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .locals 1

    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/WebVttRenderingWidget;)F
    .locals 1

    iget v0, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    return v0
.end method

.method static synthetic -wrap0(II)I
    .locals 1
    .param p0, "layoutDirection"    # I
    .param p1, "alignment"    # I

    .prologue
    invoke-static {p0, p1}, Landroid/media/WebVttRenderingWidget;->resolveCueAlignment(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/media/WebVttRenderingWidget;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 0
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "fontSize"    # F

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1128
    sget-object v0, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    sput-object v0, Landroid/media/WebVttRenderingWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1164
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 1168
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/WebVttRenderingWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 1173
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 1138
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1137
    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    .line 1142
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1141
    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    .line 1525
    new-instance v0, Landroid/media/WebVttRenderingWidget$1;

    invoke-direct {v0, p0}, Landroid/media/WebVttRenderingWidget$1;-><init>(Landroid/media/WebVttRenderingWidget;)V

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    .line 1176
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1178
    const-string/jumbo v0, "captioning"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/CaptioningManager;

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    .line 1179
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1180
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x3d5a511a    # 0.0533f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    .line 1172
    return-void
.end method

.method private calculateLinePosition(Landroid/media/WebVttRenderingWidget$CueLayout;)I
    .locals 6
    .param p1, "cueBox"    # Landroid/media/WebVttRenderingWidget$CueLayout;

    .prologue
    const/16 v5, 0x64

    .line 1490
    invoke-virtual {p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->getCue()Landroid/media/TextTrackCue;

    move-result-object v1

    .line 1491
    .local v1, "cue":Landroid/media/TextTrackCue;
    iget-object v2, v1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 1492
    .local v2, "linePosition":Ljava/lang/Integer;
    iget-boolean v3, v1, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 1493
    .local v3, "snapToLines":Z
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1495
    .local v0, "autoPosition":Z
    :goto_0
    if-nez v3, :cond_0

    if-eqz v0, :cond_2

    .line 1498
    :cond_0
    if-nez v0, :cond_4

    .line 1500
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    return v4

    .line 1493
    .end local v0    # "autoPosition":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "autoPosition":Z
    goto :goto_0

    .line 1495
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v5, :cond_0

    .line 1497
    :cond_3
    return v5

    .line 1501
    :cond_4
    if-nez v3, :cond_5

    .line 1503
    return v5

    .line 1506
    :cond_5
    invoke-static {p1}, Landroid/media/WebVttRenderingWidget$CueLayout;->-get0(Landroid/media/WebVttRenderingWidget$CueLayout;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    return v4
.end method

.method private layoutCue(IILandroid/media/WebVttRenderingWidget$CueLayout;)V
    .locals 19
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "cueBox"    # Landroid/media/WebVttRenderingWidget$CueLayout;

    .prologue
    .line 1418
    invoke-virtual/range {p3 .. p3}, Landroid/media/WebVttRenderingWidget$CueLayout;->getCue()Landroid/media/TextTrackCue;

    move-result-object v4

    .line 1419
    .local v4, "cue":Landroid/media/TextTrackCue;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v6

    .line 1420
    .local v6, "direction":I
    iget v0, v4, Landroid/media/TextTrackCue;->mAlignment:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-static {v6, v0}, Landroid/media/WebVttRenderingWidget;->resolveCueAlignment(II)I

    move-result v3

    .line 1421
    .local v3, "absAlignment":I
    iget-boolean v5, v4, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 1423
    .local v5, "cueSnapToLines":Z
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    mul-int/lit8 v17, v17, 0x64

    div-int v12, v17, p1

    .line 1427
    .local v12, "size":I
    packed-switch v3, :pswitch_data_0

    .line 1436
    iget v0, v4, Landroid/media/TextTrackCue;->mTextPosition:I

    move/from16 v17, v0

    div-int/lit8 v18, v12, 0x2

    sub-int v15, v17, v18

    .line 1441
    .local v15, "xPosition":I
    :goto_0
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v6, v0, :cond_0

    .line 1442
    rsub-int/lit8 v15, v15, 0x64

    .line 1448
    :cond_0
    if-eqz v5, :cond_2

    .line 1449
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v17

    mul-int/lit8 v17, v17, 0x64

    div-int v9, v17, p1

    .line 1450
    .local v9, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v17

    mul-int/lit8 v17, v17, 0x64

    div-int v10, v17, p1

    .line 1451
    .local v10, "paddingRight":I
    if-ge v15, v9, :cond_1

    add-int v17, v15, v12

    move/from16 v0, v17

    if-le v0, v9, :cond_1

    .line 1452
    add-int/2addr v15, v9

    .line 1453
    sub-int/2addr v12, v9

    .line 1455
    :cond_1
    rsub-int/lit8 v17, v10, 0x64

    move/from16 v0, v17

    int-to-float v11, v0

    .line 1456
    .local v11, "rightEdge":F
    int-to-float v0, v15

    move/from16 v17, v0

    cmpg-float v17, v17, v11

    if-gez v17, :cond_2

    add-int v17, v15, v12

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    cmpl-float v17, v17, v11

    if-lez v17, :cond_2

    .line 1457
    sub-int/2addr v12, v10

    .line 1462
    .end local v9    # "paddingLeft":I
    .end local v10    # "paddingRight":I
    .end local v11    # "rightEdge":F
    :cond_2
    mul-int v17, v15, p1

    div-int/lit8 v8, v17, 0x64

    .line 1463
    .local v8, "left":I
    mul-int v17, v12, p1

    div-int/lit8 v14, v17, 0x64

    .line 1466
    .local v14, "width":I
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/media/WebVttRenderingWidget;->calculateLinePosition(Landroid/media/WebVttRenderingWidget$CueLayout;)I

    move-result v16

    .line 1469
    .local v16, "yPosition":I
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 1471
    .local v7, "height":I
    if-gez v16, :cond_3

    .line 1473
    mul-int v17, v16, v7

    add-int v13, p2, v17

    .line 1479
    .local v13, "top":I
    :goto_1
    add-int v17, v8, v14

    add-int v18, v13, v7

    move-object/from16 v0, p3

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v8, v13, v1, v2}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 1417
    return-void

    .line 1429
    .end local v7    # "height":I
    .end local v8    # "left":I
    .end local v13    # "top":I
    .end local v14    # "width":I
    .end local v15    # "xPosition":I
    .end local v16    # "yPosition":I
    :pswitch_0
    iget v15, v4, Landroid/media/TextTrackCue;->mTextPosition:I

    .restart local v15    # "xPosition":I
    goto :goto_0

    .line 1432
    .end local v15    # "xPosition":I
    :pswitch_1
    iget v0, v4, Landroid/media/TextTrackCue;->mTextPosition:I

    move/from16 v17, v0

    sub-int v15, v17, v12

    .line 1433
    .restart local v15    # "xPosition":I
    goto :goto_0

    .line 1475
    .restart local v7    # "height":I
    .restart local v8    # "left":I
    .restart local v14    # "width":I
    .restart local v16    # "yPosition":I
    :cond_3
    sub-int v17, p2, v7

    mul-int v17, v17, v16

    div-int/lit8 v13, v17, 0x64

    .restart local v13    # "top":I
    goto :goto_1

    .line 1427
    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private layoutRegion(IILandroid/media/WebVttRenderingWidget$RegionLayout;)V
    .locals 9
    .param p1, "viewportWidth"    # I
    .param p2, "viewportHeight"    # I
    .param p3, "regionBox"    # Landroid/media/WebVttRenderingWidget$RegionLayout;

    .prologue
    const/high16 v8, 0x42c80000    # 100.0f

    .line 1400
    invoke-virtual {p3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getRegion()Landroid/media/TextTrackRegion;

    move-result-object v1

    .line 1401
    .local v1, "region":Landroid/media/TextTrackRegion;
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1402
    .local v2, "regionHeight":I
    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1405
    .local v3, "regionWidth":I
    iget v5, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointX:F

    .line 1406
    .local v5, "x":F
    iget v6, v1, Landroid/media/TextTrackRegion;->mViewportAnchorPointY:F

    .line 1407
    .local v6, "y":F
    sub-int v7, p1, v3

    int-to-float v7, v7

    mul-float/2addr v7, v5

    div-float/2addr v7, v8

    float-to-int v0, v7

    .line 1408
    .local v0, "left":I
    sub-int v7, p2, v2

    int-to-float v7, v7

    mul-float/2addr v7, v6

    div-float/2addr v7, v8

    float-to-int v4, v7

    .line 1410
    .local v4, "top":I
    add-int v7, v0, v3

    add-int v8, v4, v2

    invoke-virtual {p3, v0, v4, v7, v8}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 1399
    return-void
.end method

.method private manageChangeListener()V
    .locals 5

    .prologue
    .line 1226
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    .line 1227
    .local v2, "needsListener":Z
    :goto_0
    iget-boolean v3, p0, Landroid/media/WebVttRenderingWidget;->mHasChangeListener:Z

    if-eq v3, v2, :cond_0

    .line 1228
    iput-boolean v2, p0, Landroid/media/WebVttRenderingWidget;->mHasChangeListener:Z

    .line 1230
    if-eqz v2, :cond_2

    .line 1231
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v4, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v3, v4}, Landroid/view/accessibility/CaptioningManager;->addCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    .line 1233
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getUserStyle()Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v0

    .line 1234
    .local v0, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    const v4, 0x3d5a511a    # 0.0533f

    mul-float v1, v3, v4

    .line 1235
    .local v1, "fontSize":F
    invoke-direct {p0, v0, v1}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1225
    .end local v0    # "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v1    # "fontSize":F
    :cond_0
    :goto_1
    return-void

    .line 1226
    .end local v2    # "needsListener":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "needsListener":Z
    goto :goto_0

    .line 1237
    :cond_2
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    iget-object v4, p0, Landroid/media/WebVttRenderingWidget;->mCaptioningListener:Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;

    invoke-virtual {v3, v4}, Landroid/view/accessibility/CaptioningManager;->removeCaptioningChangeListener(Landroid/view/accessibility/CaptioningManager$CaptioningChangeListener;)V

    goto :goto_1
.end method

.method private prepForPrune()V
    .locals 6

    .prologue
    .line 1342
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1343
    .local v4, "regionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1344
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1345
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->prepForPrune()V

    .line 1343
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1348
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_0
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1349
    .local v1, "cueCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 1350
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1351
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0}, Landroid/media/WebVttRenderingWidget$CueLayout;->prepForPrune()V

    .line 1349
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1341
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_1
    return-void
.end method

.method private prune()V
    .locals 6

    .prologue
    .line 1315
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1316
    .local v4, "regionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 1317
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1318
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->prune()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1319
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1320
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1321
    add-int/lit8 v4, v4, -0x1

    .line 1322
    add-int/lit8 v2, v2, -0x1

    .line 1316
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1326
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_1
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1327
    .local v1, "cueCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_3

    .line 1328
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1329
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0}, Landroid/media/WebVttRenderingWidget$CueLayout;->isActive()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1330
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1331
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1332
    add-int/lit8 v1, v1, -0x1

    .line 1333
    add-int/lit8 v2, v2, -0x1

    .line 1327
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1314
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_3
    return-void
.end method

.method private static resolveCueAlignment(II)I
    .locals 2
    .param p0, "layoutDirection"    # I
    .param p1, "alignment"    # I

    .prologue
    const/16 v1, 0xcc

    const/16 v0, 0xcb

    .line 1514
    packed-switch p1, :pswitch_data_0

    .line 1522
    return p1

    .line 1516
    :pswitch_0
    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1517
    goto :goto_0

    .line 1519
    :pswitch_1
    if-nez p0, :cond_1

    :goto_1
    return v1

    :cond_1
    move v1, v0

    .line 1520
    goto :goto_1

    .line 1514
    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 6
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "fontSize"    # F

    .prologue
    .line 1294
    sget-object v5, Landroid/media/WebVttRenderingWidget;->DEFAULT_CAPTION_STYLE:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    invoke-virtual {v5, p1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->applyStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object p1

    .line 1295
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1296
    iput p2, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    .line 1298
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1299
    .local v1, "cueCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1300
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1301
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1299
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1304
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_0
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1305
    .local v4, "regionCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    .line 1306
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1307
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1305
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1293
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_1
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1194
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1196
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    .line 1193
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1201
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1203
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    .line 1200
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1374
    sub-int v6, p4, p2

    .line 1375
    .local v6, "viewportWidth":I
    sub-int v5, p5, p3

    .line 1377
    .local v5, "viewportHeight":I
    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1378
    iget-object v8, p0, Landroid/media/WebVttRenderingWidget;->mManager:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v8}, Landroid/view/accessibility/CaptioningManager;->getFontScale()F

    move-result v8

    const v9, 0x3d5a511a    # 0.0533f

    mul-float/2addr v8, v9

    int-to-float v9, v5

    mul-float/2addr v8, v9

    .line 1377
    invoke-direct {p0, v7, v8}, Landroid/media/WebVttRenderingWidget;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1380
    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1381
    .local v4, "regionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1382
    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1383
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-direct {p0, v6, v5, v3}, Landroid/media/WebVttRenderingWidget;->layoutRegion(IILandroid/media/WebVttRenderingWidget$RegionLayout;)V

    .line 1381
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1386
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_0
    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1387
    .local v1, "cueCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 1388
    iget-object v7, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1389
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-direct {p0, v6, v5, v0}, Landroid/media/WebVttRenderingWidget;->layoutCue(IILandroid/media/WebVttRenderingWidget$CueLayout;)V

    .line 1387
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1373
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1357
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 1359
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1360
    .local v4, "regionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 1361
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1362
    .local v3, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-virtual {v3, p1, p2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->measureForParent(II)V

    .line 1360
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1365
    .end local v3    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :cond_0
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 1366
    .local v1, "cueCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 1367
    iget-object v5, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1368
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->measureForParent(II)V

    .line 1366
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1356
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_1
    return-void
.end method

.method public setActiveCues(Ljava/util/Vector;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "activeCues":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/SubtitleTrack$Cue;>;"
    const/4 v12, -0x2

    .line 1243
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1244
    .local v1, "context":Landroid/content/Context;
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1245
    .local v0, "captionStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    iget v5, p0, Landroid/media/WebVttRenderingWidget;->mFontSize:F

    .line 1247
    .local v5, "fontSize":F
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->prepForPrune()V

    .line 1250
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    .line 1251
    .local v2, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_3

    .line 1252
    invoke-virtual {p1, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/TextTrackCue;

    .line 1253
    .local v3, "cue":Landroid/media/TextTrackCue;
    iget-object v8, v3, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    .line 1254
    .local v8, "region":Landroid/media/TextTrackRegion;
    if-eqz v8, :cond_1

    .line 1255
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .line 1256
    .local v9, "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    if-nez v9, :cond_0

    .line 1257
    new-instance v9, Landroid/media/WebVttRenderingWidget$RegionLayout;

    .end local v9    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    invoke-direct {v9, v1, v8, v0, v5}, Landroid/media/WebVttRenderingWidget$RegionLayout;-><init>(Landroid/content/Context;Landroid/media/TextTrackRegion;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1258
    .restart local v9    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mRegionBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v11, v8, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    invoke-virtual {p0, v9, v12, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1261
    :cond_0
    invoke-virtual {v9, v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->put(Landroid/media/TextTrackCue;)V

    .line 1251
    .end local v9    # "regionBox":Landroid/media/WebVttRenderingWidget$RegionLayout;
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1263
    :cond_1
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v11, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1264
    .local v4, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    if-nez v4, :cond_2

    .line 1265
    new-instance v4, Landroid/media/WebVttRenderingWidget$CueLayout;

    .end local v4    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-direct {v4, v1, v3, v0, v5}, Landroid/media/WebVttRenderingWidget$CueLayout;-><init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1266
    .restart local v4    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mCueBoxes:Landroid/util/ArrayMap;

    invoke-virtual {v11, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    invoke-virtual {p0, v4, v12, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 1269
    :cond_2
    invoke-virtual {v4}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    .line 1270
    invoke-virtual {v4, v7}, Landroid/media/WebVttRenderingWidget$CueLayout;->setOrder(I)V

    goto :goto_1

    .line 1274
    .end local v3    # "cue":Landroid/media/TextTrackCue;
    .end local v4    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    .end local v8    # "region":Landroid/media/TextTrackRegion;
    :cond_3
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->prune()V

    .line 1277
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    .line 1278
    .local v10, "width":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    .line 1282
    .local v6, "height":I
    if-lez v10, :cond_5

    if-lez v6, :cond_5

    .line 1283
    invoke-virtual {p0, v10, v6}, Landroid/media/WebVttRenderingWidget;->setSize(II)V

    .line 1288
    :goto_2
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-eqz v11, :cond_4

    .line 1289
    iget-object v11, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {v11, p0}, Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;->onChanged(Landroid/media/SubtitleTrack$RenderingWidget;)V

    .line 1242
    :cond_4
    return-void

    .line 1285
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setActiveCues width : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", height : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .prologue
    .line 1208
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget;->mListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 1207
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 1185
    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1186
    .local v1, "widthSpec":I
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1188
    .local v0, "heightSpec":I
    invoke-virtual {p0, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1189
    invoke-virtual {p0, v2, v2, p1, p2}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 1184
    return-void
.end method

.method public setVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 1213
    if-eqz p1, :cond_0

    .line 1214
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    :goto_0
    invoke-direct {p0}, Landroid/media/WebVttRenderingWidget;->manageChangeListener()V

    .line 1212
    return-void

    .line 1216
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
