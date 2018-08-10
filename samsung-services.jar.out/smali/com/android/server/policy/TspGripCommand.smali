.class public Lcom/android/server/policy/TspGripCommand;
.super Ljava/lang/Object;
.source "TspGripCommand.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_EDGE_ZONE:I = 0x3c

.field private static final DEFAULT_LAND_X1:I = 0xa

.field private static final DEFAULT_PORT_X1:I = 0xa

.field private static final DEFAULT_PORT_X2:I = 0x20

.field private static final DEFAULT_PORT_Y1:I = 0x300

.field private static final INDEX_DEADZONE_LAND_X1:I = 0x3

.field private static final INDEX_DEADZONE_PORT_X1:I = 0x0

.field private static final INDEX_DEADZONE_PORT_X2:I = 0x1

.field private static final INDEX_DEADZONE_PORT_Y1:I = 0x2

.field private static final INDEX_EDGE_LAND:I = 0x5

.field private static final INDEX_EDGE_PORT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "TspGripCommand"

.field private static final WQHD_MIN_HEIGHT:I = 0xa00

.field private static final WQHD_MIN_WIDTH:I = 0x5a0


# instance fields
.field mLandEdgeZone:I

.field mLandX1:I

.field mPortEdgeZone:I

.field mPortX1:I

.field mPortX2:I

.field mPortY1:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/TspGripCommand;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/policy/TspGripCommand;->reset()V

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/policy/TspGripCommand;->set(IIIIII)V

    return-void
.end method

.method private convertRation(III)I
    .locals 1

    if-ge p2, p3, :cond_0

    mul-int v0, p1, p2

    div-int/2addr v0, p3

    return v0

    :cond_0
    return p1
.end method

.method private convertToInt(IILjava/lang/String;I)I
    .locals 6

    const/4 v4, 0x0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v4

    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    int-to-float v3, p2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    return v3

    :cond_1
    const-string/jumbo v3, "px"

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    int-to-float v3, p2

    mul-float/2addr v3, v2

    int-to-float v4, p1

    div-float/2addr v3, v4

    float-to-int v3, v3

    return v3

    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v3, p2, p4}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v3

    return v3
.end method

.method public static getTspHeightPixel(IIIII)I
    .locals 4

    mul-int v2, p3, p4

    div-int v1, v2, p1

    sget-boolean v2, Lcom/android/server/policy/TspGripCommand;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v2, "getTspHeightPixel: init="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v2, " h="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "TspGripCommand"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method public static getTspWidthPixel(IIIII)I
    .locals 1

    mul-int v0, p2, p4

    div-int/2addr v0, p0

    return v0
.end method

.method private getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I
    .locals 3

    const/4 v2, -0x1

    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-direct {p0, v1, p5, p6}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v2

    return v2

    :cond_0
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return p3

    :cond_1
    invoke-direct {p0, p4, p5, v0, p6}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v2

    return v2
.end method

.method private setMiniumValue(II)V
    .locals 1

    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    if-ge v0, p1, :cond_0

    iput p1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    :cond_0
    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    if-ge v0, p2, :cond_1

    iput p2, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    :cond_1
    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    if-ge v0, p1, :cond_2

    iput p1, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    :cond_2
    return-void
.end method


# virtual methods
.method public convertToRation(II)V
    .locals 3

    const/16 v2, 0x5a0

    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    const/16 v1, 0xa00

    invoke-direct {p0, v0, p2, v1}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iget v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    return-void
.end method

.method public parse(IIIILandroid/os/Bundle;)Z
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILandroid/os/Bundle;Z)Z

    move-result v0

    return v0
.end method

.method public parse(IIIILandroid/os/Bundle;Z)Z
    .locals 21

    if-eqz p5, :cond_6

    const-string/jumbo v5, "deadzone_v2"

    const/4 v6, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v5, p0

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    return v5

    :cond_0
    const-string/jumbo v13, "dead_zone_port_x1"

    const/4 v14, -0x1

    const/16 v17, 0x5a0

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v15, p1

    move/from16 v16, p3

    invoke-direct/range {v11 .. v17}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v18

    const-string/jumbo v13, "dead_zone_port_x2"

    const/4 v14, -0x1

    const/16 v17, 0x5a0

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v15, p1

    move/from16 v16, p3

    invoke-direct/range {v11 .. v17}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v19

    const/4 v5, -0x1

    move/from16 v0, v18

    if-eq v0, v5, :cond_5

    const/4 v5, -0x1

    move/from16 v0, v19

    if-ne v0, v5, :cond_5

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    :cond_1
    :goto_0
    const/4 v5, -0x1

    move/from16 v0, v19

    if-eq v0, v5, :cond_2

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    :cond_2
    const-string/jumbo v13, "dead_zone_port_y1"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    const/16 v17, 0xa00

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v15, p2

    move/from16 v16, p4

    invoke-direct/range {v11 .. v17}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    const-string/jumbo v5, "dead_zone_port_real_y1"

    const/4 v6, -0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    const/4 v5, -0x1

    move/from16 v0, v20

    if-eq v0, v5, :cond_3

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/policy/TspGripCommand;->getTspHeightPixel(IIIII)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    :cond_3
    const-string/jumbo v13, "dead_zone_land_x1"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    const/16 v17, 0x5a0

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v15, p1

    move/from16 v16, p3

    invoke-direct/range {v11 .. v17}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    const-string/jumbo v13, "edge_zone_width"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    const/16 v17, 0x5a0

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v15, p1

    move/from16 v16, p3

    invoke-direct/range {v11 .. v17}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    const-string/jumbo v13, "edge_zone_land"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    const/16 v17, 0x5a0

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v15, p1

    move/from16 v16, p3

    invoke-direct/range {v11 .. v17}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    const-string/jumbo v13, "edge_zone_port"

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    const/16 v17, 0x5a0

    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v15, p1

    move/from16 v16, p3

    invoke-direct/range {v11 .. v17}, Lcom/android/server/policy/TspGripCommand;->getValueFromBundle(Landroid/os/Bundle;Ljava/lang/String;IIII)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    if-eqz p6, :cond_4

    const/16 v5, 0xa

    const/16 v6, 0x5a0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v5, v1, v6}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v5

    const/16 v6, 0xa

    const/16 v7, 0xa00

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v6, v1, v7}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/server/policy/TspGripCommand;->setMiniumValue(II)V

    :cond_4
    const/4 v5, 0x1

    return v5

    :cond_5
    const/4 v5, -0x1

    move/from16 v0, v18

    if-eq v0, v5, :cond_1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    return v5
.end method

.method public parse(IIIILjava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public parse(IIIILjava/lang/String;Z)Z
    .locals 10

    if-eqz p5, :cond_d

    invoke-virtual {p5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_d

    const-string/jumbo v7, ","

    invoke-virtual {p5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    :try_start_0
    array-length v7, v6

    const/4 v8, 0x1

    if-gt v7, v8, :cond_3

    const/4 v7, 0x0

    aget-object v7, v6, v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_0
    const/16 v7, 0x5a0

    invoke-direct {p0, p1, p3, v4, v7}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    if-eqz p6, :cond_1

    const/16 v7, 0xa

    const/16 v8, 0x5a0

    invoke-direct {p0, v7, p3, v8}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v7

    const/16 v8, 0xa

    const/16 v9, 0xa00

    invoke-direct {p0, v8, p4, v9}, Lcom/android/server/policy/TspGripCommand;->convertRation(III)I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/server/policy/TspGripCommand;->setMiniumValue(II)V

    :cond_1
    const/4 v7, 0x1

    return v7

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    :try_start_1
    aget-object v7, v6, v7

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    :goto_2
    const/16 v7, 0x5a0

    invoke-direct {p0, p1, p3, v3, v7}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    array-length v7, v6

    const/4 v8, 0x3

    if-lt v7, v8, :cond_4

    const/4 v7, 0x1

    aget-object v7, v6, v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    :goto_3
    const/4 v7, 0x2

    aget-object v7, v6, v7

    if-eqz v7, :cond_9

    const/4 v7, 0x2

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    :goto_4
    const/16 v7, 0x5a0

    invoke-direct {p0, p1, p3, v4, v7}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    const/16 v7, 0xa00

    invoke-direct {p0, p2, p4, v5, v7}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    :cond_4
    array-length v7, v6

    const/4 v8, 0x4

    if-lt v7, v8, :cond_5

    const/4 v7, 0x3

    aget-object v7, v6, v7

    if-eqz v7, :cond_a

    const/4 v7, 0x3

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_5
    const/16 v7, 0x5a0

    invoke-direct {p0, p1, p3, v2, v7}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    :cond_5
    array-length v7, v6

    const/4 v8, 0x5

    if-lt v7, v8, :cond_6

    const/4 v7, 0x4

    aget-object v7, v6, v7

    if-eqz v7, :cond_b

    const/4 v7, 0x4

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_6
    const/16 v7, 0x5a0

    invoke-direct {p0, p1, p3, v1, v7}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    :cond_6
    iget v7, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iput v7, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    array-length v7, v6

    const/4 v8, 0x6

    if-lt v7, v8, :cond_0

    const/4 v7, 0x5

    aget-object v7, v6, v7

    if-eqz v7, :cond_c

    const/4 v7, 0x5

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_7
    const/16 v7, 0x5a0

    invoke-direct {p0, p1, p3, v1, v7}, Lcom/android/server/policy/TspGripCommand;->convertToInt(IILjava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto/16 :goto_1

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_8
    const/4 v4, 0x0

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    return v7
.end method

.method public reset()V
    .locals 3

    const/16 v2, 0x3c

    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    const/16 v0, 0x20

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    const/16 v0, 0x300

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    iput v1, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    iput v2, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iput v2, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    return-void
.end method

.method public set(IIIIII)V
    .locals 0

    iput p1, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    iput p2, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    iput p3, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    iput p4, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    iput p5, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iput p6, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    return-void
.end method

.method public set(Lcom/android/server/policy/TspGripCommand;)V
    .locals 1

    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iget v0, p1, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    iput v0, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "portX1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",portX2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",landX1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",portEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ",landEdge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
