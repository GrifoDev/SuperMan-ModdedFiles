.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field private static final localLOGV:Z

.field private static final phoneNum1:Ljava/util/regex/Pattern;

.field private static final phoneNum2:Ljava/util/regex/Pattern;

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

    .prologue
    .line 50
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    .line 51
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    sput-object v0, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    .line 99
    const-string/jumbo v0, "[+][0-9]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/MeasuredText;->phoneNum1:Ljava/util/regex/Pattern;

    .line 100
    const-string/jumbo v0, "[0-9]+([-/*+=. ]+([0-9]+))+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/text/MeasuredText;->phoneNum2:Ljava/util/regex/Pattern;

    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 46
    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .locals 5

    .prologue
    .line 55
    sget-object v3, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 56
    :try_start_0
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v0, v2

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 57
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 58
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v2, v0

    .line 59
    .local v1, "mt":Landroid/text/MeasuredText;
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    const/4 v4, 0x0

    aput-object v4, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 60
    return-object v1

    .end local v1    # "mt":Landroid/text/MeasuredText;
    :cond_1
    monitor-exit v3

    .line 64
    new-instance v1, Landroid/text/MeasuredText;

    invoke-direct {v1}, Landroid/text/MeasuredText;-><init>()V

    .line 68
    .restart local v1    # "mt":Landroid/text/MeasuredText;
    return-object v1

    .line 55
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .locals 4
    .param p0, "mt"    # Landroid/text/MeasuredText;

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-virtual {p0}, Landroid/text/MeasuredText;->finish()V

    .line 73
    sget-object v2, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 74
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 75
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 76
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aput-object p0, v1, v0

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 82
    return-object v3

    .line 74
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 26
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "len"    # I
    .param p3, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 190
    if-eqz p3, :cond_0

    .line 191
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 194
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/MeasuredText;->mPos:I

    .line 195
    .local v4, "p":I
    add-int v2, v4, p2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/MeasuredText;->mPos:I

    .line 199
    const/4 v9, 0x0

    .line 200
    .local v9, "widths":[F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/text/TextPaint;

    if-eq v2, v3, :cond_2

    .line 201
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/MeasuredText;->mWidths:[F

    .line 203
    .end local v9    # "widths":[F
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v2, :cond_9

    .line 204
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mDir:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v8, 0x1

    .line 205
    .local v8, "isRtl":Z
    :goto_0
    const/16 v25, 0x0

    .line 206
    .local v25, "width":F
    if-eqz v9, :cond_5

    .line 207
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v2, p1

    move/from16 v5, p2

    move v6, v4

    move/from16 v7, p2

    move v10, v4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v25

    .line 208
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v2, :cond_3

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    add-int v3, v4, p2

    invoke-virtual {v2, v4, v3, v9}, Landroid/text/StaticLayout$Builder;->addMeasuredRun(II[F)V

    .line 215
    :cond_3
    :goto_1
    const/4 v2, 0x1

    move/from16 v0, p2

    if-lt v0, v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, p2, -0x1

    aget-char v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isRegionalCharHandling(C)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 216
    add-int/lit8 v19, p2, -0x1

    .line 217
    .local v19, "cPos":I
    const-string/jumbo v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v23

    .line 218
    .local v23, "spaceWid":F
    if-eqz v9, :cond_7

    .line 219
    :goto_2
    aget v2, v9, v19

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_6

    add-int/lit8 v19, v19, -0x1

    goto :goto_2

    .line 204
    .end local v8    # "isRtl":Z
    .end local v19    # "cPos":I
    .end local v23    # "spaceWid":F
    .end local v25    # "width":F
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "isRtl":Z
    goto :goto_0

    .line 212
    .restart local v25    # "width":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    add-int v3, v4, p2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3, v8}, Landroid/text/StaticLayout$Builder;->addStyleRun(Landroid/text/TextPaint;IIZ)F

    move-result v25

    goto :goto_1

    .line 220
    .restart local v19    # "cPos":I
    .restart local v23    # "spaceWid":F
    :cond_6
    aget v2, v9, v19

    add-float v2, v2, v23

    aput v2, v9, v19

    .line 222
    :cond_7
    add-float v25, v25, v23

    .line 224
    .end local v19    # "cPos":I
    .end local v23    # "spaceWid":F
    :cond_8
    return v25

    .line 227
    .end local v8    # "isRtl":Z
    .end local v25    # "width":F
    :cond_9
    const/16 v24, 0x0

    .line 228
    .local v24, "totalAdvance":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v22, v2, v4

    .line 229
    .local v22, "level":I
    move v12, v4

    .local v12, "q":I
    add-int/lit8 v21, v4, 0x1

    .local v21, "i":I
    add-int v20, v4, p2

    .line 230
    .local v20, "e":I
    :goto_3
    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v2, v2, v21

    move/from16 v0, v22

    if-eq v2, v0, :cond_f

    .line 231
    :cond_a
    and-int/lit8 v2, v22, 0x1

    if-eqz v2, :cond_c

    const/4 v8, 0x1

    .line 232
    .restart local v8    # "isRtl":Z
    :goto_4
    if-eqz v9, :cond_d

    .line 234
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

    .line 233
    add-float v24, v24, v2

    .line 235
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v2, :cond_b

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    move/from16 v0, v21

    invoke-virtual {v2, v12, v0, v9}, Landroid/text/StaticLayout$Builder;->addMeasuredRun(II[F)V

    .line 241
    :cond_b
    :goto_5
    move/from16 v0, v21

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 249
    const/4 v2, 0x1

    move/from16 v0, p2

    if-lt v0, v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, p2, -0x1

    aget-char v2, v2, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isRegionalCharHandling(C)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 250
    add-int/lit8 v19, p2, -0x1

    .line 251
    .restart local v19    # "cPos":I
    const-string/jumbo v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v23

    .line 252
    .restart local v23    # "spaceWid":F
    if-eqz v9, :cond_11

    .line 253
    :goto_6
    aget v2, v9, v19

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_10

    add-int/lit8 v19, v19, -0x1

    goto :goto_6

    .line 231
    .end local v8    # "isRtl":Z
    .end local v19    # "cPos":I
    .end local v23    # "spaceWid":F
    :cond_c
    const/4 v8, 0x0

    .restart local v8    # "isRtl":Z
    goto :goto_4

    .line 239
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v2, v0, v12, v1, v8}, Landroid/text/StaticLayout$Builder;->addStyleRun(Landroid/text/TextPaint;IIZ)F

    move-result v2

    add-float v24, v24, v2

    goto :goto_5

    .line 244
    :cond_e
    move/from16 v12, v21

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v22, v2, v21

    .line 229
    .end local v8    # "isRtl":Z
    :cond_f
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 254
    .restart local v8    # "isRtl":Z
    .restart local v19    # "cPos":I
    .restart local v23    # "spaceWid":F
    :cond_10
    aget v2, v9, v19

    add-float v2, v2, v23

    aput v2, v9, v19

    .line 256
    :cond_11
    add-float v24, v24, v23

    .line 258
    .end local v19    # "cPos":I
    .end local v23    # "spaceWid":F
    :cond_12
    return v24
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 11
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "spans"    # [Landroid/text/style/MetricAffectingSpan;
    .param p3, "len"    # I
    .param p4, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v1, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 265
    .local v1, "workPaint":Landroid/text/TextPaint;
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 267
    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v7, 0x0

    .end local v0    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v7, "i":I
    :goto_0
    array-length v2, p2

    if-ge v7, v2, :cond_1

    .line 271
    aget-object v8, p2, v7

    .line 272
    .local v8, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v2, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_0

    move-object v0, v8

    .line 273
    check-cast v0, Landroid/text/style/ReplacementSpan;

    .line 270
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 275
    :cond_0
    invoke-virtual {v8, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 280
    .end local v8    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_1
    if-nez v0, :cond_3

    .line 281
    invoke-virtual {p0, v1, p3, p4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 297
    .local v10, "wid":F
    :goto_2
    if-eqz p4, :cond_2

    .line 298
    iget v2, v1, Landroid/text/TextPaint;->baselineShift:I

    if-gez v2, :cond_6

    .line 299
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 300
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 307
    :cond_2
    :goto_3
    return v10

    .line 284
    .end local v10    # "wid":F
    :cond_3
    iget-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v3, v4

    .line 285
    iget v4, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v5, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    move-object v5, p4

    .line 284
    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v10, v2

    .line 286
    .restart local v10    # "wid":F
    iget-object v2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-nez v2, :cond_4

    .line 287
    iget-object v9, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 288
    .local v9, "w":[F
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    aput v10, v9, v2

    .line 289
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/lit8 v7, v2, 0x1

    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v6, v2, p3

    .local v6, "e":I
    :goto_4
    if-ge v7, v6, :cond_5

    .line 290
    const/4 v2, 0x0

    aput v2, v9, v7

    .line 289
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 292
    .end local v6    # "e":I
    .end local v9    # "w":[F
    :cond_4
    iget-object v2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    iget v3, p0, Landroid/text/MeasuredText;->mPos:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, p3

    invoke-virtual {v2, v3, v4, v10}, Landroid/text/StaticLayout$Builder;->addReplacementRun(IIF)V

    .line 294
    :cond_5
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v2, p3

    iput v2, p0, Landroid/text/MeasuredText;->mPos:I

    goto :goto_2

    .line 302
    :cond_6
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 303
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_3
.end method

.method breakText(IZF)I
    .locals 6
    .param p1, "limit"    # I
    .param p2, "forwards"    # Z
    .param p3, "width"    # F

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x0

    .line 311
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 312
    .local v1, "w":[F
    if-eqz p2, :cond_3

    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 315
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 316
    cmpg-float v2, p3, v4

    if-gez v2, :cond_1

    .line 319
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, -0x1

    aget-char v2, v2, v3

    if-ne v2, v5, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 317
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_2
    return v0

    .line 322
    .end local v0    # "i":I
    :cond_3
    add-int/lit8 v0, p1, -0x1

    .line 323
    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_4

    .line 324
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 325
    cmpg-float v2, p3, v4

    if-gez v2, :cond_6

    .line 328
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

    .line 326
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 329
    :cond_7
    sub-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iput-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 87
    iput-object v2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    .line 88
    iget v0, p0, Landroid/text/MeasuredText;->mLen:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 89
    iput-object v2, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 90
    iput-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 91
    iput-object v2, p0, Landroid/text/MeasuredText;->mLevels:[B

    .line 85
    :cond_0
    return-void
.end method

.method measure(II)F
    .locals 4
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .prologue
    .line 334
    const/4 v2, 0x0

    .line 335
    .local v2, "width":F
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 336
    .local v1, "w":[F
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 337
    aget v3, v1, v0

    add-float/2addr v2, v3

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 339
    :cond_0
    return v2
.end method

.method setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V
    .locals 21
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p5, "builder"    # Landroid/text/StaticLayout$Builder;

    .prologue
    .line 107
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    .line 108
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 109
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mTextStart:I

    .line 111
    sub-int v11, p3, p2

    .line 112
    .local v11, "len":I
    move-object/from16 v0, p0

    iput v11, v0, Landroid/text/MeasuredText;->mLen:I

    .line 113
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mPos:I

    .line 115
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

    .line 116
    :cond_0
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mWidths:[F

    .line 118
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

    .line 119
    :cond_2
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mChars:[C

    .line 121
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

    .line 123
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v14, p1

    .line 124
    check-cast v14, Landroid/text/Spanned;

    .line 126
    .local v14, "spanned":Landroid/text/Spanned;
    const-class v18, Landroid/text/style/ReplacementSpan;

    .line 125
    move/from16 v0, p2

    move/from16 v1, p3

    move-object/from16 v2, v18

    invoke-interface {v14, v0, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [Landroid/text/style/ReplacementSpan;

    .line 128
    .local v15, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v0, v15

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_7

    .line 129
    aget-object v18, v15, v8

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v18

    sub-int v16, v18, p2

    .line 130
    .local v16, "startInPara":I
    aget-object v18, v15, v8

    move-object/from16 v0, v18

    invoke-interface {v14, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v18

    sub-int v6, v18, p2

    .line 132
    .local v6, "endInPara":I
    if-gez v16, :cond_4

    const/16 v16, 0x0

    .line 133
    :cond_4
    if-le v6, v11, :cond_5

    move v6, v11

    .line 134
    :cond_5
    move/from16 v10, v16

    .local v10, "j":I
    :goto_1
    if-ge v10, v6, :cond_6

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    const v19, 0xfffc

    aput-char v19, v18, v10

    .line 134
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 128
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 140
    .end local v6    # "endInPara":I
    .end local v8    # "i":I
    .end local v10    # "j":I
    .end local v14    # "spanned":Landroid/text/Spanned;
    .end local v15    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v16    # "startInPara":I
    :cond_7
    sget-object v18, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 141
    sget-object v18, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 143
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v0, v1, v11}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v18

    .line 140
    if-eqz v18, :cond_b

    .line 144
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/text/MeasuredText;->mDir:I

    .line 145
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/MeasuredText;->mEasy:Z

    .line 106
    :cond_9
    return-void

    .line 142
    :cond_a
    sget-object v18, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_8

    .line 147
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

    .line 148
    :cond_c
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/MeasuredText;->mLevels:[B

    .line 151
    :cond_d
    sget-object v18, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 152
    const/4 v5, 0x1

    .line 163
    .local v5, "bidiRequest":I
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

    .line 164
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/MeasuredText;->mEasy:Z

    .line 165
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/MeasuredText;->mDir:I

    move/from16 v18, v0

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 166
    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v13, v0, v1, v11}, Ljava/lang/String;-><init>([CII)V

    .line 167
    .local v13, "newStr":Ljava/lang/String;
    sget-object v18, Landroid/text/MeasuredText;->phoneNum1:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 168
    .local v12, "m":Ljava/util/regex/Matcher;
    :cond_e
    :goto_3
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_14

    .line 169
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    .line 170
    .local v17, "startIndex":I
    if-ltz v17, :cond_e

    move/from16 v0, v17

    if-ge v0, v11, :cond_e

    .line 171
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

    .line 153
    .end local v5    # "bidiRequest":I
    .end local v12    # "m":Ljava/util/regex/Matcher;
    .end local v13    # "newStr":Ljava/lang/String;
    .end local v17    # "startIndex":I
    :cond_f
    sget-object v18, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 154
    const/4 v5, -0x1

    .restart local v5    # "bidiRequest":I
    goto :goto_2

    .line 155
    .end local v5    # "bidiRequest":I
    :cond_10
    sget-object v18, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 156
    const/4 v5, 0x2

    .restart local v5    # "bidiRequest":I
    goto/16 :goto_2

    .line 157
    .end local v5    # "bidiRequest":I
    :cond_11
    sget-object v18, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_12

    .line 158
    const/4 v5, -0x2

    .restart local v5    # "bidiRequest":I
    goto/16 :goto_2

    .line 160
    .end local v5    # "bidiRequest":I
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

    .line 161
    .local v9, "isRtl":Z
    if-eqz v9, :cond_13

    const/4 v5, -0x1

    .restart local v5    # "bidiRequest":I
    goto/16 :goto_2

    .end local v5    # "bidiRequest":I
    :cond_13
    const/4 v5, 0x1

    .restart local v5    # "bidiRequest":I
    goto/16 :goto_2

    .line 175
    .end local v9    # "isRtl":Z
    .restart local v12    # "m":Ljava/util/regex/Matcher;
    .restart local v13    # "newStr":Ljava/lang/String;
    :cond_14
    sget-object v18, Landroid/text/MeasuredText;->phoneNum2:Ljava/util/regex/Pattern;

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 176
    :cond_15
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->find()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 177
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->start()I

    move-result v17

    .line 178
    .restart local v17    # "startIndex":I
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->end()I

    move-result v18

    add-int/lit8 v7, v18, -0x1

    .line 179
    .local v7, "endIndex":I
    if-ltz v17, :cond_15

    move/from16 v0, v17

    if-ge v0, v11, :cond_15

    if-ltz v7, :cond_15

    if-ge v7, v11, :cond_15

    .line 180
    move/from16 v8, v17

    .restart local v8    # "i":I
    :goto_4
    if-gt v8, v7, :cond_15

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v19, v0

    aget-byte v19, v19, v17

    aput-byte v19, v18, v8

    .line 180
    add-int/lit8 v8, v8, 0x1

    goto :goto_4
.end method

.method setPos(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 96
    iget v0, p0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/text/MeasuredText;->mPos:I

    .line 95
    return-void
.end method
