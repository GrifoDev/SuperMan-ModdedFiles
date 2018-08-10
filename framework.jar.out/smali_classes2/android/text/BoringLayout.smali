.class public Landroid/text/BoringLayout;
.super Landroid/text/Layout;
.source "BoringLayout.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BoringLayout$Metrics;
    }
.end annotation


# instance fields
.field mBottom:I

.field private mBottomPadding:I

.field mDesc:I

.field private mDirect:Ljava/lang/String;

.field private mEllipsizedCount:I

.field private mEllipsizedStart:I

.field private mEllipsizedWidth:I

.field private mMax:F

.field private mPaint:Landroid/graphics/Paint;

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V
    .locals 10

    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 11

    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    if-eqz p9, :cond_0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p9

    if-ne v0, v1, :cond_1

    :cond_0
    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    return-void

    :cond_1
    move/from16 v0, p10

    int-to-float v3, v0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p9

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    move/from16 v0, p10

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v10, 0x0

    goto :goto_0
.end method

.method private static hasAnyInterestingChars(Ljava/lang/CharSequence;I)Z
    .locals 9

    const/4 v8, 0x0

    const/16 v0, 0x1f4

    const/16 v7, 0x1f4

    invoke-static {v7}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, p1, :cond_3

    add-int/lit16 v7, v6, 0x1f4

    :try_start_0
    invoke-static {v7, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v7, 0x0

    invoke-static {p0, v6, v3, v1, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v5, v3, v6

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_2

    aget-char v2, v1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v7, 0xa

    if-eq v2, v7, :cond_0

    const/16 v7, 0x9

    if-ne v2, v7, :cond_1

    :cond_0
    const/4 v7, 0x1

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    return v7

    :cond_1
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->couldAffectRtl(C)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit16 v6, v6, 0x1f4

    goto :goto_0

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    return v8

    :catchall_0
    move-exception v7

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    throw v7
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;
    .locals 2

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 1

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, v0, p2}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 12

    const/4 v3, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    invoke-static {p0, v4}, Landroid/text/BoringLayout;->hasAnyInterestingChars(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v8

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2, p0, v3, v4}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v8

    :cond_1
    instance-of v1, p0, Landroid/text/Spanned;

    if-eqz v1, :cond_2

    move-object v10, p0

    check-cast v10, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/ParagraphStyle;

    invoke-interface {v10, v3, v4, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    array-length v1, v11

    if-lez v1, :cond_2

    return-object v8

    :cond_2
    move-object v9, p3

    if-nez p3, :cond_3

    new-instance v9, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v9}, Landroid/text/BoringLayout$Metrics;-><init>()V

    :goto_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    sget-object v6, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p0

    move v7, v3

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    invoke-virtual {v0, v9}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    iput v1, v9, Landroid/text/BoringLayout$Metrics;->width:I

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return-object v9

    :cond_3
    invoke-static {p3}, Landroid/text/BoringLayout$Metrics;->-wrap0(Landroid/text/BoringLayout$Metrics;)V

    goto :goto_0
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 9

    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V

    return-object v0
.end method

.method public static make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 11

    new-instance v0, Landroid/text/BoringLayout;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 4

    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Landroid/text/BoringLayout;->mBottom:I

    iget v3, p0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    goto :goto_0
.end method

.method public ellipsized(II)V
    .locals 1

    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    sub-int v0, p2, p1

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return-void
.end method

.method public getBottomPadding()I
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public getLineContainsTab(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getLineCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getLineDescent(I)I
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mDesc:I

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1

    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public getLineMax(I)F
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    return v0
.end method

.method public getLineStart(I)I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public getLineTop(I)I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public getLineWidth(I)F
    .locals 1

    if-nez p1, :cond_0

    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParagraphDirection(I)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    return v0
.end method

.method init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V
    .locals 12

    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p4

    if-ne v0, v3, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    :goto_0
    iput-object p2, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz p8, :cond_2

    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/text/BoringLayout$Metrics;->top:I

    sub-int v11, v3, v4

    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    iput v3, p0, Landroid/text/BoringLayout;->mDesc:I

    :goto_1
    iput v11, p0, Landroid/text/BoringLayout;->mBottom:I

    if-eqz p9, :cond_3

    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v3, v3

    iput v3, p0, Landroid/text/BoringLayout;->mMax:F

    :goto_2
    if-eqz p8, :cond_0

    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->top:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/text/BoringLayout;->mTopPadding:I

    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->bottom:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    sub-int/2addr v3, v4

    iput v3, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    move-object/from16 v0, p7

    iget v4, v0, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int v11, v3, v4

    move-object/from16 v0, p7

    iget v3, v0, Landroid/text/BoringLayout$Metrics;->descent:I

    iput v3, p0, Landroid/text/BoringLayout;->mDesc:I

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sget-object v8, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p2

    move-object v4, p1

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    int-to-float v3, v3

    iput v3, p0, Landroid/text/BoringLayout;->mMax:F

    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    goto :goto_2
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 10

    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    return-object p0
.end method

.method public replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 11

    if-eqz p9, :cond_0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p9

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    iput p3, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    const/4 v10, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v10}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZZ)V

    return-object p0

    :cond_1
    move/from16 v0, p10

    int-to-float v3, v0

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v4, p9

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    move/from16 v0, p10

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v10, 0x0

    goto :goto_0
.end method
