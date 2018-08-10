.class Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sCached:[Landroid/text/TextLine;


# instance fields
.field private mAddedWidth:F

.field private final mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mChars:[C

.field private mCharsValid:Z

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mHasTabs:Z

.field private mLen:I

.field private final mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private final mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanned:Landroid/text/Spanned;

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;

.field private final mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    return-void
.end method

.method private adjustHyphenEdit(III)I
    .locals 2

    move v0, p3

    if-lez p1, :cond_0

    and-int/lit8 v0, p3, -0x19

    :cond_0
    iget v1, p0, Landroid/text/TextLine;->mLen:I

    if-ge p2, v1, :cond_1

    and-int/lit8 v0, v0, -0x8

    :cond_1
    return v0
.end method

.method private countStretchableSpaces(II)I
    .locals 3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2, p2}, Landroid/text/TextLine;->nextStretchableSpace(II)I

    move-result v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F
    .locals 14

    iget v1, p0, Landroid/text/TextLine;->mDir:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move/from16 v0, p4

    if-ne v1, v0, :cond_1

    const/4 v6, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    neg-float v13, v1

    add-float v7, p5, v13

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    return v13

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p3

    move/from16 v5, p4

    move-object v6, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v12, p9

    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v1

    return v1
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_0

    sub-int v4, p4, p3

    sub-int v6, p6, p5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    move/from16 v0, p9

    int-to-float v8, v0

    move-object/from16 v1, p1

    move/from16 v3, p3

    move/from16 v5, p5

    move/from16 v7, p8

    move/from16 v9, p7

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mStart:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v9, v17, p3

    add-int v10, v17, p4

    add-int v11, v17, p5

    add-int v12, v17, p6

    move/from16 v0, p9

    int-to-float v14, v0

    move-object/from16 v7, p1

    move/from16 v13, p8

    move/from16 v15, p7

    move-object/from16 v16, p2

    invoke-virtual/range {v7 .. v16}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 6

    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    return-void
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .locals 23

    if-ltz p1, :cond_0

    if-eqz p6, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    :goto_0
    move/from16 v0, p5

    if-ne v0, v3, :cond_3

    :cond_0
    if-eqz p6, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v3, v5

    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, p5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v3, v5

    return v3

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mAddedWidth:F

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setWordSpacing(F)V

    move/from16 v4, p2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v3, :cond_5

    move/from16 v20, p3

    :cond_4
    if-eqz p4, :cond_b

    const/4 v6, 0x1

    :goto_1
    if-eqz p6, :cond_c

    const/4 v8, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    sub-int v5, v20, v4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Landroid/text/TextPaint;->getTextRunCursor([CIIIII)I

    move-result v3

    return v3

    :cond_5
    if-eqz p6, :cond_6

    add-int/lit8 v22, p5, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v17, v3, p3

    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v4

    const-class v7, Landroid/text/style/MetricAffectingSpan;

    move/from16 v0, v17

    invoke-interface {v3, v5, v0, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v20, v3, v5

    move/from16 v0, v20

    move/from16 v1, v22

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v4

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, v20

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v3, v5, v7, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v21

    invoke-static {v0, v3, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v21

    array-length v3, v0

    if-lez v3, :cond_4

    const/16 v18, 0x0

    const/16 v16, 0x0

    :goto_5
    move-object/from16 v0, v21

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_9

    aget-object v19, v21, v16

    move-object/from16 v0, v19

    instance-of v3, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_8

    move-object/from16 v18, v19

    check-cast v18, Landroid/text/style/ReplacementSpan;

    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    :cond_6
    move/from16 v22, p5

    goto :goto_3

    :cond_7
    move/from16 v4, v20

    goto :goto_4

    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_6

    :cond_9
    if-eqz v18, :cond_4

    if-eqz p6, :cond_a

    :goto_7
    return v20

    :cond_a
    move/from16 v20, v4

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_1

    :cond_c
    const/4 v8, 0x2

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v11, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v12, v3, v20

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v14, v3, p5

    move-object v9, v2

    move v13, v6

    move v15, v8

    invoke-virtual/range {v9 .. v15}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v3, v5

    return v3
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 24

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v1, p3

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v1, p4

    if-nez p12, :cond_0

    if-eqz p6, :cond_2

    if-eqz p5, :cond_2

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz p11, :cond_6

    const/16 v22, 0x1

    :goto_0
    if-eqz v22, :cond_1

    move-object/from16 v0, p11

    iget v7, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move-object/from16 v0, p11

    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move-object/from16 v0, p11

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move-object/from16 v0, p11

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p11

    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v6, p11

    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    int-to-float v0, v1

    move/from16 v23, v0

    if-eqz v22, :cond_2

    move-object/from16 v6, p11

    invoke-static/range {v6 .. v11}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    :cond_2
    if-eqz p6, :cond_4

    if-eqz p5, :cond_3

    sub-float p7, p7, v23

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v12, p1

    move-object/from16 v13, p6

    move v15, v4

    move/from16 v16, v5

    move/from16 v17, p7

    move/from16 v18, p8

    move/from16 v19, p9

    move/from16 v20, p10

    move-object/from16 v21, p2

    invoke-virtual/range {v12 .. v21}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    :cond_4
    if-eqz p5, :cond_5

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    :cond_5
    return v23

    :cond_6
    const/16 v22, 0x0

    goto :goto_0
.end method

.method private handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 30

    move/from16 v0, p2

    move/from16 v1, p1

    if-lt v0, v1, :cond_0

    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "measureLimit ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ") is out of "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "start ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ") and limit ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ") bounds"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    if-eqz p10, :cond_2

    move-object/from16 v0, p10

    invoke-static {v0, v4}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_2
    const/4 v3, 0x0

    return v3

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {v4}, Landroid/text/TextPaint;->getHyphenEdit()I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move-object/from16 v15, p10

    move/from16 v16, p11

    move/from16 v17, p2

    invoke-direct/range {v3 .. v17}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZI)F

    move-result v3

    return v3

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, p1

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/TextLine;->mStart:I

    add-int v10, v10, p3

    invoke-virtual {v3, v5, v7, v10}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, p1

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/TextLine;->mStart:I

    add-int v10, v10, p3

    invoke-virtual {v3, v5, v7, v10}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    move/from16 v27, p6

    move/from16 v8, p1

    :goto_0
    move/from16 v0, p2

    if-ge v8, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v8

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, p3

    invoke-virtual {v3, v5, v7}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v25, v3, v5

    move/from16 v0, v25

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v12, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanStarts:[I

    aget v3, v3, v12

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v9

    if-ge v3, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanEnds:[I

    aget v3, v3, v12

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v8

    if-gt v3, v5, :cond_6

    :cond_5
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v3, [Landroid/text/style/MetricAffectingSpan;

    aget-object v29, v3, v12

    move-object/from16 v0, v29

    instance-of v3, v0, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_7

    move-object/from16 v6, v29

    check-cast v6, Landroid/text/style/ReplacementSpan;

    goto :goto_2

    :cond_7
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_2

    :cond_8
    if-eqz v6, :cond_c

    if-nez p11, :cond_9

    move/from16 v0, p2

    if-ge v9, v0, :cond_b

    :cond_9
    const/16 v17, 0x1

    :goto_3
    move-object/from16 v5, p0

    move-object v7, v4

    move/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    move-object/from16 v16, p10

    invoke-direct/range {v5 .. v17}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v3

    add-float p6, p6, v3

    :cond_a
    move/from16 v8, v25

    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x0

    goto :goto_3

    :cond_c
    move v12, v8

    :goto_4
    if-ge v12, v9, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v12

    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int v7, v7, v25

    invoke-virtual {v3, v5, v7}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    sub-int v13, v3, v5

    invoke-static {v13, v9}, Ljava/lang/Math;->min(II)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    const/16 v26, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    move/from16 v0, v26

    if-ge v0, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanStarts:[I

    aget v3, v3, v26

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, v24

    if-ge v3, v5, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanEnds:[I

    aget v3, v3, v26

    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v12

    if-gt v3, v5, :cond_e

    :cond_d
    :goto_6
    add-int/lit8 v26, v26, 0x1

    goto :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v3, [Landroid/text/style/CharacterStyle;

    aget-object v28, v3, v26

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    goto :goto_6

    :cond_f
    invoke-virtual {v4}, Landroid/text/TextPaint;->getHyphenEdit()I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v3}, Landroid/text/TextLine;->adjustHyphenEdit(III)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    if-nez p11, :cond_10

    move/from16 v0, p2

    if-ge v13, v0, :cond_11

    :cond_10
    const/16 v23, 0x1

    :goto_7
    move-object/from16 v10, p0

    move-object v11, v4

    move v14, v8

    move/from16 v15, v25

    move/from16 v16, p4

    move-object/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    move/from16 v21, p9

    move-object/from16 v22, p10

    invoke-direct/range {v10 .. v24}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZI)F

    move-result v3

    add-float p6, p6, v3

    move v12, v13

    goto/16 :goto_4

    :cond_11
    const/16 v23, 0x0

    goto :goto_7

    :cond_12
    sub-float v3, p6, v27

    return v3
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZI)F
    .locals 21

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mAddedWidth:F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setWordSpacing(F)V

    if-eqz p12, :cond_0

    move-object/from16 v0, p12

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_0
    sub-int v20, p3, p2

    if-nez v20, :cond_1

    const/4 v2, 0x0

    return v2

    :cond_1
    const/16 v19, 0x0

    if-nez p13, :cond_2

    if-eqz p7, :cond_3

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-nez v2, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    if-eqz v2, :cond_a

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    move-object/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p14

    invoke-virtual/range {v2 .. v9}, Landroid/text/TextPaint;->getRunAdvance([CIIIIZI)F

    move-result v19

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move/from16 v0, p3

    if-ne v2, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->semNeedMoreWidth(C)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, " "

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float v19, v19, v2

    :cond_4
    if-eqz p7, :cond_8

    if-eqz p6, :cond_5

    sub-float p8, p8, v19

    :cond_5
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v18

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v0, p9

    int-to-float v4, v0

    add-float v5, p8, v19

    move/from16 v0, p11

    int-to-float v6, v0

    move-object/from16 v2, p7

    move/from16 v3, p8

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    :cond_6
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    if-eqz v2, :cond_7

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v2, v2, p10

    int-to-float v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    const v5, 0x3de38e39

    mul-float/2addr v3, v5

    add-float v4, v2, v3

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v16

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    add-float v5, p8, v19

    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->underlineThickness:F

    add-float v6, v4, v2

    move-object/from16 v2, p7

    move/from16 v3, p8

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    :cond_7
    move-object/from16 v0, p1

    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    add-int v14, p10, v2

    move-object/from16 v5, p0

    move-object/from16 v6, p7

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p8

    invoke-direct/range {v5 .. v14}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    :cond_8
    if-eqz p6, :cond_9

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v19, v0

    :cond_9
    return v19

    :cond_a
    if-eqz p6, :cond_3

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/TextLine;->mStart:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v4, v15, p2

    add-int v5, v15, p3

    add-int v6, v15, p4

    add-int v7, v15, p5

    add-int v9, v15, p14

    move-object/from16 v2, p1

    move/from16 v8, p6

    invoke-virtual/range {v2 .. v9}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    move-result v19

    goto/16 :goto_1
.end method

.method public static isLineEndSpace(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-eq p0, v1, :cond_0

    const/16 v1, 0x9

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x1680

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2000

    if-gt v1, p0, :cond_2

    const/16 v1, 0x200a

    if-gt p0, v1, :cond_2

    const/16 v1, 0x2007

    if-ne p0, v1, :cond_0

    :cond_2
    const/16 v1, 0x205f

    if-eq p0, v1, :cond_0

    const/16 v1, 0x3000

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStretchableWhitespace(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa0

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 12

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v10, p5

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    return v0
.end method

.method private nextStretchableSpace(II)I
    .locals 4

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_2

    iget-boolean v2, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/TextLine;->mChars:[C

    aget-char v0, v2, v1

    :goto_1
    invoke-direct {p0, v0}, Landroid/text/TextLine;->isStretchableWhitespace(I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_0
    iget-object v2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method static obtain()Landroid/text/TextLine;
    .locals 5

    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v0, v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v1, v2, v0

    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    const/4 v4, 0x0

    aput-object v4, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v1

    :cond_1
    monitor-exit v3

    new-instance v1, Landroid/text/TextLine;

    invoke-direct {v1}, Landroid/text/TextLine;-><init>()V

    return-object v1

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .locals 4

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iput-object v3, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    iput-object v3, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iput-object v3, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iput-object v3, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    iput-object v3, p0, Landroid/text/TextLine;->mChars:[C

    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v2

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aput-object p0, v1, v0
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

.method static updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .locals 1

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;FIII)V
    .locals 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    return-void

    :cond_1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v1, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v1, v0

    add-int/lit8 v14, v1, -0x2

    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, v17

    array-length v1, v0

    if-ge v13, v1, :cond_c

    aget v16, v17, v13

    add-int/lit8 v1, v13, 0x1

    aget v1, v17, v1

    const v2, 0x3ffffff

    and-int/2addr v1, v2

    add-int v15, v16, v1

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-le v15, v1, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Landroid/text/TextLine;->mLen:I

    :cond_2
    add-int/lit8 v1, v13, 0x1

    aget v1, v17, v1

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    const/4 v5, 0x1

    :goto_1
    move/from16 v3, v16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_5

    move/from16 v4, v16

    :goto_2
    if-gt v4, v15, :cond_b

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_6

    if-ge v4, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mChars:[C

    aget-char v11, v1, v4

    const v1, 0xd800

    if-lt v11, v1, :cond_6

    const v1, 0xdc00

    if-ge v11, v1, :cond_6

    add-int/lit8 v1, v4, 0x1

    if-ge v1, v15, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v1, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v11

    const v1, 0xffff

    if-le v11, v1, :cond_6

    add-int/lit8 v4, v4, 0x1

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    :cond_5
    move v4, v15

    goto :goto_2

    :cond_6
    if-eq v4, v15, :cond_7

    const/16 v1, 0x9

    if-ne v11, v1, :cond_3

    :cond_7
    add-float v6, p2, v12

    if-ne v13, v14, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-eq v4, v1, :cond_a

    :cond_8
    const/4 v10, 0x1

    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v1 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    move-result v1

    add-float/2addr v12, v1

    const/16 v1, 0x9

    if-ne v11, v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v2, v2

    mul-float/2addr v2, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/TextLine;->nextTab(F)F

    move-result v2

    mul-float v12, v1, v2

    :cond_9
    add-int/lit8 v3, v4, 0x1

    goto :goto_3

    :cond_a
    const/4 v10, 0x0

    goto :goto_4

    :cond_b
    add-int/lit8 v13, v13, 0x2

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method getOffsetToLeftRightOf(IZ)I
    .locals 29

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mDir:I

    const/4 v7, -0x1

    if-ne v2, v7, :cond_2

    const/16 v20, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v0, v2, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v27, v0

    const/16 v26, 0x0

    const/4 v4, 0x0

    move/from16 v5, v16

    const/16 v18, -0x1

    const/16 v28, 0x0

    if-nez p1, :cond_3

    const/4 v3, -0x2

    :cond_0
    :goto_1
    move/from16 v0, p2

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    const/4 v8, 0x1

    :goto_2
    if-eqz v8, :cond_10

    const/4 v2, 0x2

    :goto_3
    add-int v10, v3, v2

    if-ltz v10, :cond_18

    move-object/from16 v0, v27

    array-length v2, v0

    if-ge v10, v2, :cond_18

    aget v2, v27, v10

    add-int/lit8 v11, v2, 0x0

    add-int/lit8 v2, v10, 0x1

    aget v2, v27, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v12, v11, v2

    move/from16 v0, v16

    if-le v12, v0, :cond_1

    move/from16 v12, v16

    :cond_1
    add-int/lit8 v2, v10, 0x1

    aget v2, v27, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v19, v2, 0x3f

    and-int/lit8 v2, v19, 0x1

    if-eqz v2, :cond_11

    const/4 v13, 0x1

    :goto_4
    move/from16 v0, p2

    if-ne v0, v13, :cond_12

    const/4 v8, 0x1

    :goto_5
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_15

    if-eqz v8, :cond_13

    move v14, v11

    :goto_6
    move-object/from16 v9, p0

    move v15, v8

    invoke-direct/range {v9 .. v15}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v18

    if-eqz v8, :cond_14

    :goto_7
    move/from16 v0, v18

    if-ne v0, v12, :cond_16

    move v3, v10

    move/from16 v26, v19

    goto :goto_1

    :cond_2
    const/16 v20, 0x0

    goto :goto_0

    :cond_3
    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    move-object/from16 v0, v27

    array-length v3, v0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_8
    move-object/from16 v0, v27

    array-length v2, v0

    if-ge v3, v2, :cond_7

    aget v2, v27, v3

    add-int/lit8 v4, v2, 0x0

    move/from16 v0, p1

    if-lt v0, v4, :cond_a

    add-int/lit8 v2, v3, 0x1

    aget v2, v27, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v5, v4, v2

    move/from16 v0, v16

    if-le v5, v0, :cond_5

    move/from16 v5, v16

    :cond_5
    move/from16 v0, p1

    if-ge v0, v5, :cond_a

    add-int/lit8 v2, v3, 0x1

    aget v2, v27, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v26, v2, 0x3f

    move/from16 v0, p1

    if-ne v0, v4, :cond_7

    add-int/lit8 v21, p1, -0x1

    const/16 v22, 0x0

    :goto_9
    move-object/from16 v0, v27

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_7

    aget v2, v27, v22

    add-int/lit8 v25, v2, 0x0

    move/from16 v0, v21

    move/from16 v1, v25

    if-lt v0, v1, :cond_9

    add-int/lit8 v2, v22, 0x1

    aget v2, v27, v2

    const v7, 0x3ffffff

    and-int/2addr v2, v7

    add-int v24, v25, v2

    move/from16 v0, v24

    move/from16 v1, v16

    if-le v0, v1, :cond_6

    move/from16 v24, v16

    :cond_6
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_9

    add-int/lit8 v2, v22, 0x1

    aget v2, v27, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v23, v2, 0x3f

    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_9

    move/from16 v3, v22

    move/from16 v26, v23

    move/from16 v4, v25

    move/from16 v5, v24

    const/16 v28, 0x1

    :cond_7
    move-object/from16 v0, v27

    array-length v2, v0

    if-eq v3, v2, :cond_0

    and-int/lit8 v2, v26, 0x1

    if-eqz v2, :cond_b

    const/4 v6, 0x1

    :goto_a
    move/from16 v0, p2

    if-ne v0, v6, :cond_c

    const/4 v8, 0x1

    :goto_b
    if-eqz v8, :cond_d

    move v2, v5

    :goto_c
    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    move/from16 v0, v28

    if-eq v8, v0, :cond_0

    :cond_8
    move-object/from16 v2, p0

    move/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v18

    if-eqz v8, :cond_e

    move v2, v5

    :goto_d
    move/from16 v0, v18

    if-eq v0, v2, :cond_0

    return v18

    :cond_9
    add-int/lit8 v22, v22, 0x2

    goto :goto_9

    :cond_a
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_8

    :cond_b
    const/4 v6, 0x0

    goto :goto_a

    :cond_c
    const/4 v8, 0x0

    goto :goto_b

    :cond_d
    move v2, v4

    goto :goto_c

    :cond_e
    move v2, v4

    goto :goto_d

    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_2

    :cond_10
    const/4 v2, -0x2

    goto/16 :goto_3

    :cond_11
    const/4 v13, 0x0

    goto/16 :goto_4

    :cond_12
    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_13
    move v14, v12

    goto/16 :goto_6

    :cond_14
    move v12, v11

    goto/16 :goto_7

    :cond_15
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_16

    if-eqz v8, :cond_17

    move/from16 v18, v11

    :cond_16
    :goto_e
    return v18

    :cond_17
    move/from16 v18, v12

    goto :goto_e

    :cond_18
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_1a

    if-eqz v8, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    add-int/lit8 v18, v2, 0x1

    goto :goto_e

    :cond_19
    const/16 v18, -0x1

    goto :goto_e

    :cond_1a
    move/from16 v0, v18

    move/from16 v1, v16

    if-gt v0, v1, :cond_16

    if-eqz v8, :cond_1b

    move/from16 v18, v16

    goto :goto_e

    :cond_1b
    const/16 v18, 0x0

    goto :goto_e
.end method

.method justify(F)V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Landroid/text/TextLine;->mLen:I

    :goto_0
    if-lez v0, :cond_0

    iget-object v3, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v4, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v5, v0}, Landroid/text/TextLine;->countStretchableSpaces(II)I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v5, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float v3, p1, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Landroid/text/TextLine;->mAddedWidth:F

    return-void
.end method

.method measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 18

    if-eqz p2, :cond_0

    add-int/lit8 v16, p1, -0x1

    :goto_0
    if-gez v16, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_0
    move/from16 v16, p1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    return v1

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v3, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    return v1

    :cond_3
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/TextLine;->mChars:[C

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v15, v1, Landroid/text/Layout$Directions;->mDirections:[I

    const/4 v11, 0x0

    :goto_1
    array-length v1, v15

    if-ge v11, v1, :cond_13

    aget v14, v15, v11

    add-int/lit8 v1, v11, 0x1

    aget v1, v15, v1

    const v3, 0x3ffffff

    and-int/2addr v1, v3

    add-int v13, v14, v1

    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-le v13, v1, :cond_4

    move-object/from16 v0, p0

    iget v13, v0, Landroid/text/TextLine;->mLen:I

    :cond_4
    add-int/lit8 v1, v11, 0x1

    aget v1, v15, v1

    const/high16 v3, 0x4000000

    and-int/2addr v1, v3

    if-eqz v1, :cond_6

    const/4 v5, 0x1

    :goto_2
    move v2, v14

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_7

    move v4, v14

    :goto_3
    if-gt v4, v13, :cond_12

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v1, :cond_8

    if-ge v4, v13, :cond_8

    aget-char v9, v8, v4

    const v1, 0xd800

    if-lt v9, v1, :cond_8

    const v1, 0xdc00

    if-ge v9, v1, :cond_8

    add-int/lit8 v1, v4, 0x1

    if-ge v1, v13, :cond_8

    invoke-static {v8, v4}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v9

    const v1, 0xffff

    if-le v9, v1, :cond_8

    add-int/lit8 v4, v4, 0x1

    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    goto :goto_2

    :cond_7
    move v4, v13

    goto :goto_3

    :cond_8
    if-eq v4, v13, :cond_9

    const/16 v1, 0x9

    if-ne v9, v1, :cond_5

    :cond_9
    move/from16 v0, v16

    if-lt v0, v2, :cond_a

    move/from16 v0, v16

    if-ge v0, v4, :cond_a

    const/4 v12, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_b

    const/4 v1, 0x1

    :goto_6
    if-ne v1, v5, :cond_c

    const/4 v7, 0x1

    :goto_7
    if-eqz v12, :cond_d

    if-eqz v7, :cond_d

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v10, v1

    return v10

    :cond_a
    const/4 v12, 0x0

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    goto :goto_6

    :cond_c
    const/4 v7, 0x0

    goto :goto_7

    :cond_d
    move-object/from16 v1, p0

    move v3, v4

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v17

    if-eqz v7, :cond_e

    :goto_8
    add-float v10, v10, v17

    if-eqz v12, :cond_f

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    add-float/2addr v10, v1

    return v10

    :cond_e
    move/from16 v0, v17

    neg-float v0, v0

    move/from16 v17, v0

    goto :goto_8

    :cond_f
    const/16 v1, 0x9

    if-ne v9, v1, :cond_11

    move/from16 v0, p1

    if-ne v0, v4, :cond_10

    return v10

    :cond_10
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v3, v3

    mul-float/2addr v3, v10

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/TextLine;->nextTab(F)F

    move-result v3

    mul-float v10, v1, v3

    move/from16 v0, v16

    if-ne v0, v4, :cond_11

    return v10

    :cond_11
    add-int/lit8 v2, v4, 0x1

    goto :goto_4

    :cond_12
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_1

    :cond_13
    return v10
.end method

.method metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 2

    iget v0, p0, Landroid/text/TextLine;->mLen:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v0

    return v0
.end method

.method nextTab(F)F
    .locals 1

    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x14

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v0

    return v0
.end method

.method set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V
    .locals 9

    iput-object p1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    iput-object p2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iput p3, p0, Landroid/text/TextLine;->mStart:I

    sub-int v7, p4, p3

    iput v7, p0, Landroid/text/TextLine;->mLen:I

    iput p5, p0, Landroid/text/TextLine;->mDir:I

    iput-object p6, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v7, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "Directions cannot be null"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    move/from16 v0, p7

    iput-boolean v0, p0, Landroid/text/TextLine;->mHasTabs:Z

    const/4 v7, 0x0

    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const/4 v3, 0x0

    instance-of v7, p2, Landroid/text/Spanned;

    if-eqz v7, :cond_1

    move-object v7, p2

    check-cast v7, Landroid/text/Spanned;

    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-virtual {v7, v8, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget v7, v7, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v7, :cond_5

    const/4 v3, 0x1

    :cond_1
    :goto_0
    if-nez v3, :cond_2

    if-nez p7, :cond_2

    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq p6, v7, :cond_6

    :cond_2
    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    iget-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    array-length v7, v7

    iget v8, p0, Landroid/text/TextLine;->mLen:I

    if-ge v7, v8, :cond_4

    :cond_3
    iget v7, p0, Landroid/text/TextLine;->mLen:I

    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v7

    iput-object v7, p0, Landroid/text/TextLine;->mChars:[C

    :cond_4
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    const/4 v8, 0x0

    invoke-static {p2, p3, p4, v7, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    if-eqz v3, :cond_8

    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    move v4, p3

    :goto_2
    if-ge v4, p4, :cond_8

    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, p4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v5

    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v7, v4, v5}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result v7

    if-eqz v7, :cond_7

    sub-int v7, v4, p3

    const v8, 0xfffc

    aput-char v8, v1, v7

    sub-int v7, v4, p3

    add-int/lit8 v6, v7, 0x1

    sub-int v2, v5, p3

    :goto_3
    if-ge v6, v2, :cond_7

    const v7, 0xfeff

    aput-char v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_1

    :cond_7
    move v4, v5

    goto :goto_2

    :cond_8
    move-object/from16 v0, p8

    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    const/4 v7, 0x0

    iput v7, p0, Landroid/text/TextLine;->mAddedWidth:F

    return-void
.end method
