.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field private static final arithmetic:Ljava/util/regex/Pattern;

.field private static final localLOGV:Z

.field private static final phoneNum:Ljava/util/regex/Pattern;

.field private static final sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field private mBuilder:Landroid/text/StaticLayout$Builder;

.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    sput-object v0, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    const-string/jumbo v0, "[+][0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/MeasuredText;->phoneNum:Ljava/util/regex/Pattern;

    const-string/jumbo v0, "[0-9]+([-/*+=. ]+([0-9]+))+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/MeasuredText;->arithmetic:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .locals 5

    sget-object v3, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v0, v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v2, v0

    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    const/4 v4, 0x0

    aput-object v4, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v1

    :cond_1
    monitor-exit v3

    new-instance v1, Landroid/text/MeasuredText;

    invoke-direct {v1}, Landroid/text/MeasuredText;-><init>()V

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/text/MeasuredText;->finish()V

    sget-object v2, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aput-object p0, v1, v0

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-object v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 26

    if-eqz p3, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/MeasuredText;->mPos:I

    add-int v2, v4, p2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/MeasuredText;->mPos:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/text/TextPaint;

    if-eq v2, v3, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/MeasuredText;->mWidths:[F

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mDir:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v8, 0x1

    :goto_0
    const/16 v25, 0x0

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v2, p1

    move/from16 v5, p2

    move v6, v4

    move/from16 v7, p2

    move v10, v4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v25

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    add-int v3, v4, p2

    invoke-virtual {v2, v4, v3, v9}, Landroid/text/StaticLayout$Builder;->addMeasuredRun(II[F)V

    :cond_3
    :goto_1
    const/4 v2, 0x1

    move/from16 v0, p2

    if-lt v0, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, p2, -0x1

    aget-char v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->semNeedMoreWidth(C)Z

    move-result v2

    if-eqz v2, :cond_8

    add-int/lit8 v19, p2, -0x1

    const-string/jumbo v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v23

    if-eqz v9, :cond_7

    :goto_2
    aget v2, v9, v19

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6

    add-int/lit8 v19, v19, -0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    add-int v3, v4, p2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3, v8}, Landroid/text/StaticLayout$Builder;->addStyleRun(Landroid/text/TextPaint;IIZ)F

    move-result v25

    goto :goto_1

    :cond_6
    aget v2, v9, v19

    add-float v2, v2, v23

    aput v2, v9, v19

    :cond_7
    add-float v25, v25, v23

    :cond_8
    return v25

    :cond_9
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v22, v2, v4

    move v12, v4

    add-int/lit8 v21, v4, 0x1

    add-int v20, v4, p2

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v2, v2, v21

    move/from16 v0, v22

    if-eq v2, v0, :cond_f

    :cond_a
    and-int/lit8 v2, v22, 0x1

    if-eqz v2, :cond_c

    const/4 v8, 0x1

    :goto_4
    if-eqz v9, :cond_d

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/MeasuredText;->mChars:[C

    sub-int v13, v21, v12

    sub-int v15, v21, v12

    move-object/from16 v10, p1

    move v14, v12

    move/from16 v16, v8

    move-object/from16 v17, v9

    move/from16 v18, v12

    invoke-virtual/range {v10 .. v18}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v2

    add-float v24, v24, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    move/from16 v0, v21

    invoke-virtual {v2, v12, v0, v9}, Landroid/text/StaticLayout$Builder;->addMeasuredRun(II[F)V

    :cond_b
    :goto_5
    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    const/4 v2, 0x1

    move/from16 v0, p2

    if-lt v0, v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, p2, -0x1

    aget-char v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->semNeedMoreWidth(C)Z

    move-result v2

    if-eqz v2, :cond_12

    add-int/lit8 v19, p2, -0x1

    const-string/jumbo v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v23

    if-eqz v9, :cond_11

    :goto_6
    aget v2, v9, v19

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_10

    add-int/lit8 v19, v19, -0x1

    goto :goto_6

    :cond_c
    const/4 v8, 0x0

    goto :goto_4

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v2, v0, v12, v1, v8}, Landroid/text/StaticLayout$Builder;->addStyleRun(Landroid/text/TextPaint;IIZ)F

    move-result v2

    add-float v24, v24, v2

    goto :goto_5

    :cond_e
    move/from16 v12, v21

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v22, v2, v21

    :cond_f
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    :cond_10
    aget v2, v9, v19

    add-float v2, v2, v23

    aput v2, v9, v19

    :cond_11
    add-float v24, v24, v23

    :cond_12
    return v24
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 11

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    const/4 v0, 0x0

    const/4 v7, 0x0

    :goto_0
    array-length v2, p2

    if-ge v7, v2, :cond_1

    aget-object v8, p2, v7

    instance-of v2, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_0

    move-object v0, v8

    check-cast v0, Landroid/text/style/ReplacementSpan;

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v8, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_1

    :cond_1
    if-nez v0, :cond_3

    invoke-virtual {p0, v1, p3, p4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    :goto_2
    if-eqz p4, :cond_2

    iget v2, v1, Landroid/text/TextPaint;->baselineShift:I

    if-gez v2, :cond_6

    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    :cond_2
    :goto_3
    return v10

    :cond_3
    iget-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v3, v4

    iget v4, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v5, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v10, v2

    iget-object v2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-nez v2, :cond_4

    iget-object v9, p0, Landroid/text/MeasuredText;->mWidths:[F

    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    aput v10, v9, v2

    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/lit8 v7, v2, 0x1

    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v6, v2, p3

    :goto_4
    if-ge v7, v6, :cond_5

    const/4 v2, 0x0

    aput v2, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    iget-object v2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    iget v3, p0, Landroid/text/MeasuredText;->mPos:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, p3

    invoke-virtual {v2, v3, v4, v10}, Landroid/text/StaticLayout$Builder;->addReplacementRun(IIF)V

    :cond_5
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v2, p3

    iput v2, p0, Landroid/text/MeasuredText;->mPos:I

    goto :goto_2

    :cond_6
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_3
.end method

.method breakText(IZF)I
    .locals 6

    const/16 v5, 0x20

    const/4 v4, 0x0

    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget v2, v1, v0

    sub-float/2addr p3, v2

    cmpg-float v2, p3, v4

    if-gez v2, :cond_1

    :cond_0
    :goto_1
    if-lez v0, :cond_2

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, -0x1

    aget-char v2, v2, v3

    if-ne v2, v5, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    add-int/lit8 v0, p1, -0x1

    :goto_2
    if-ltz v0, :cond_4

    aget v2, v1, v0

    sub-float/2addr p3, v2

    cmpg-float v2, p3, v4

    if-gez v2, :cond_6

    :cond_4
    :goto_3
    add-int/lit8 v2, p1, -0x1

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v2, v2, v3

    if-eq v2, v5, :cond_5

    add-int/lit8 v2, v0, 0x1

    aget v2, v1, v2

    cmpl-float v2, v2, v4

    if-nez v2, :cond_7

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_7
    sub-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method finish()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    iget v0, p0, Landroid/text/MeasuredText;->mLen:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    iput-object v2, p0, Landroid/text/MeasuredText;->mWidths:[F

    iput-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    iput-object v2, p0, Landroid/text/MeasuredText;->mLevels:[B

    :cond_0
    return-void
.end method

.method measure(II)F
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    aget v3, v1, v0

    add-float/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V
    .locals 21

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mTextStart:I

    sub-int v11, p3, p2

    move-object/from16 v0, p0

    iput v11, v0, Landroid/text/MeasuredText;->mLen:I

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mPos:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v11, :cond_1

    :cond_0
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mWidths:[F

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v11, :cond_3

    :cond_2
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mChars:[C

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, v18

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v14, p1

    check-cast v14, Landroid/text/Spanned;

    const-class v18, Landroid/text/style/ReplacementSpan;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v18

    invoke-interface {v14, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/text/style/ReplacementSpan;

    const/4 v8, 0x0

    :goto_0
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_7

    aget-object v18, v15, v8

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    sub-int v16, v18, p2

    aget-object v18, v15, v8

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v18

    sub-int v6, v18, p2

    if-gez v16, :cond_4

    const/16 v16, 0x0

    :cond_4
    if-le v6, v11, :cond_5

    move v6, v11

    :cond_5
    move/from16 v10, v16

    :goto_1
    if-ge v10, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    const v19, 0xfffc

    aput-char v19, v18, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_7
    sget-object v18, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_8

    sget-object v18, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v11}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mDir:I

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/MeasuredText;->mEasy:Z

    :cond_9
    return-void

    :cond_a
    sget-object v18, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_8

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v18, v0

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v0, v11, :cond_d

    :cond_c
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mLevels:[B

    :cond_d
    sget-object v18, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_f

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v5, v0, v1, v11, v2}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mDir:I

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/MeasuredText;->mEasy:Z

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v13, v0, v1, v11}, Ljava/lang/String;-><init>([CII)V

    sget-object v18, Landroid/text/MeasuredText;->phoneNum:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    :cond_e
    :goto_3
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_14

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    if-ltz v17, :cond_e

    move/from16 v0, v17

    if-ge v0, v11, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v19, v0

    add-int/lit8 v20, v17, 0x1

    aget-byte v19, v19, v20

    aput-byte v19, v18, v17

    goto :goto_3

    :cond_f
    sget-object v18, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_10

    const/4 v5, -0x1

    goto :goto_2

    :cond_10
    sget-object v18, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_11

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_11
    sget-object v18, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    const/4 v5, -0x2

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2, v11}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v9

    if-eqz v9, :cond_13

    const/4 v5, -0x1

    goto/16 :goto_2

    :cond_13
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_14
    sget-object v18, Landroid/text/MeasuredText;->arithmetic:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    :cond_15
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_9

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v18

    add-int/lit8 v7, v18, -0x1

    if-ltz v17, :cond_15

    move/from16 v0, v17

    if-ge v0, v11, :cond_15

    if-ltz v7, :cond_15

    if-ge v7, v11, :cond_15

    move/from16 v8, v17

    :goto_4
    if-gt v8, v7, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v19, v0

    aget-byte v19, v19, v17

    aput-byte v19, v18, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4
.end method

.method setPos(I)V
    .locals 1

    iget v0, p0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/text/MeasuredText;->mPos:I

    return-void
.end method
