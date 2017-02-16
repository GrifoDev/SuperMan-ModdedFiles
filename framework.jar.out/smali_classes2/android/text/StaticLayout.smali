.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$Builder;,
        Landroid/text/StaticLayout$LineBreaks;
    }
.end annotation


# static fields
.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CHAR_ZWS:C = '\u200b'

.field private static final CHN_LineBreak:I = 0x3

.field private static final COLUMNS_ELLIPSIZE:I = 0x6

.field private static final COLUMNS_NORMAL:I = 0x4

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x5

.field private static final ELLIPSIS_START:I = 0x4

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final HYPHEN:I = 0x3

.field private static final JPN_LineBreak:I = 0x2

.field private static final KOR_LineBreak:I = 0x1

.field private static final MYM_LineBreak:I = 0x4

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mCJKLineBreak:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mLeftIndents:[I

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mRightIndents:[I

.field private mTopPadding:I


# direct methods
.method static synthetic -wrap0(JJJIIZ)F
    .locals 2
    .param p0, "nativePtr"    # J
    .param p2, "nativePaint"    # J
    .param p4, "nativeTypeface"    # J
    .param p6, "start"    # I
    .param p7, "end"    # I
    .param p8, "isRtl"    # Z

    .prologue
    invoke-static/range {p0 .. p8}, Landroid/text/StaticLayout;->nAddStyleRun(JJJIIZ)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1()J
    .locals 2

    invoke-static {}, Landroid/text/StaticLayout;->nNewBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap2(JII[F)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddMeasuredRun(JII[F)V

    return-void
.end method

.method static synthetic -wrap3(JIIF)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "width"    # F

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddReplacementRun(JIIF)V

    return-void
.end method

.method static synthetic -wrap4(J)V
    .locals 0
    .param p0, "nativePtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFinishBuilder(J)V

    return-void
.end method

.method static synthetic -wrap5(J)V
    .locals 0
    .param p0, "nativePtr"    # J

    .prologue
    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFreeBuilder(J)V

    return-void
.end method

.method static synthetic -wrap6(J[I)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "indents"    # [I

    .prologue
    invoke-static {p0, p1, p2}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    return-void
.end method

.method static synthetic -wrap7(JLjava/lang/String;J)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "nativeHyphenator"    # J

    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nSetLocale(JLjava/lang/String;J)V

    return-void
.end method

.method private constructor <init>(Landroid/text/StaticLayout$Builder;)V
    .locals 8
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;

    .prologue
    .line 533
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    .line 534
    iget-object v1, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 538
    :goto_0
    iget-object v2, p1, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iget v3, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    iget-object v4, p1, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    iget v5, p1, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    iget v6, p1, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move-object v0, p0

    .line 533
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1884
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    .line 1951
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 540
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_2

    .line 541
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Layout$Ellipsizer;

    .line 543
    .local v7, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v7, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 544
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    iput v0, v7, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 545
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, v7, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 546
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 548
    const/4 v0, 0x6

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 554
    .end local v7    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 555
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 556
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 558
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    .line 559
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    .line 561
    iget-boolean v0, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iget-boolean v1, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 532
    return-void

    .line 535
    :cond_0
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    .line 536
    new-instance v1, Landroid/text/Layout$SpannedEllipsizer;

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 537
    :cond_1
    new-instance v1, Landroid/text/Layout$Ellipsizer;

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 550
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 551
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout;)V
    .locals 0
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;

    .prologue
    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    .line 525
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1884
    iput v3, p0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    .line 1951
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 527
    const/4 v0, 0x6

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 528
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 529
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 524
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z

    .prologue
    .line 443
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 442
    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 441
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    .prologue
    .line 465
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    .line 466
    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    .line 464
    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 463
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z

    .prologue
    .line 455
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 454
    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 453
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I

    .prologue
    .line 478
    if-nez p11, :cond_0

    move-object v3, p1

    :goto_0
    move-object v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1884
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    .line 1951
    const v2, 0x7fffffff

    iput v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 485
    invoke-static/range {p1 .. p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p9

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v10

    .line 501
    .local v10, "b":Landroid/text/StaticLayout$Builder;
    if-eqz p11, :cond_2

    .line 502
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Landroid/text/Layout$Ellipsizer;

    .line 504
    .local v11, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v11, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 505
    move/from16 v0, p12

    iput v0, v11, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 506
    move-object/from16 v0, p11

    iput-object v0, v11, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 507
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 509
    const/4 v2, 0x6

    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 515
    .end local v11    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    const-class v2, Landroid/text/Layout$Directions;

    iget v3, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/Layout$Directions;

    iput-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 516
    iget-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 517
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 519
    iget-boolean v2, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iget-boolean v3, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p0, v10, v2, v3}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 521
    invoke-static {v10}, Landroid/text/StaticLayout$Builder;->-wrap0(Landroid/text/StaticLayout$Builder;)V

    .line 477
    return-void

    .line 480
    .end local v10    # "b":Landroid/text/StaticLayout$Builder;
    :cond_0
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    .line 481
    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v3, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 482
    :cond_1
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v3, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 511
    .restart local v10    # "b":Landroid/text/StaticLayout$Builder;
    :cond_2
    const/4 v2, 0x4

    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 512
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 422
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 421
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 433
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 432
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z[C)V
    .locals 23
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "widths"    # [F
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z
    .param p11, "chs"    # [C

    .prologue
    .line 1452
    cmpg-float v20, p8, p5

    if-gtz v20, :cond_0

    if-eqz p10, :cond_4

    .line 1460
    :cond_0
    sget-object v20, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_5

    .line 1461
    sget-object v20, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    :goto_0
    const/16 v21, 0x0

    const/16 v22, 0x1

    .line 1459
    move-object/from16 v0, p9

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 1462
    .local v6, "ellipsisWidth":F
    const/4 v5, 0x0

    .line 1463
    .local v5, "ellipsisStart":I
    const/4 v4, 0x0

    .line 1464
    .local v4, "ellipsisCount":I
    sub-int v10, p2, p1

    .line 1467
    .local v10, "len":I
    sget-object v20, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 1468
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 1469
    const/16 v17, 0x0

    .line 1471
    .local v17, "sum":F
    move v14, v10

    .line 1473
    .local v14, "rightForZeroWidth":I
    move v7, v10

    .local v7, "i":I
    :goto_1
    if-ltz v7, :cond_1

    .line 1474
    if-nez v7, :cond_6

    move/from16 v0, p1

    move/from16 v1, p4

    if-ne v0, v1, :cond_6

    .line 1488
    :cond_1
    if-eqz v7, :cond_2

    .line 1489
    move v7, v14

    .line 1492
    :cond_2
    const/4 v5, 0x0

    .line 1493
    move v4, v7

    .line 1575
    .end local v7    # "i":I
    .end local v14    # "rightForZeroWidth":I
    .end local v17    # "sum":F
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v21, v0

    mul-int v21, v21, p7

    add-int/lit8 v21, v21, 0x4

    aput v5, v20, v21

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v21, v0

    mul-int v21, v21, p7

    add-int/lit8 v21, v21, 0x5

    aput v4, v20, v21

    .line 1451
    return-void

    .line 1454
    .end local v4    # "ellipsisCount":I
    .end local v5    # "ellipsisStart":I
    .end local v6    # "ellipsisWidth":F
    .end local v10    # "len":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v21, v0

    mul-int v21, v21, p7

    add-int/lit8 v21, v21, 0x4

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v21, v0

    mul-int v21, v21, p7

    add-int/lit8 v21, v21, 0x5

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 1456
    return-void

    .line 1461
    :cond_5
    sget-object v20, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    goto/16 :goto_0

    .line 1477
    .restart local v4    # "ellipsisCount":I
    .restart local v5    # "ellipsisStart":I
    .restart local v6    # "ellipsisWidth":F
    .restart local v7    # "i":I
    .restart local v10    # "len":I
    .restart local v14    # "rightForZeroWidth":I
    .restart local v17    # "sum":F
    :cond_6
    add-int/lit8 v20, v7, -0x1

    add-int v20, v20, p1

    sub-int v20, v20, p4

    aget v19, p3, v20

    .line 1479
    .local v19, "w":F
    add-float v20, v19, v17

    add-float v20, v20, v6

    cmpl-float v20, v20, p5

    if-gtz v20, :cond_1

    .line 1482
    const/16 v20, 0x0

    cmpl-float v20, v19, v20

    if-eqz v20, :cond_7

    .line 1483
    add-int/lit8 v14, v7, -0x1

    .line 1486
    :cond_7
    add-float v17, v17, v19

    .line 1473
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1495
    .end local v7    # "i":I
    .end local v14    # "rightForZeroWidth":I
    .end local v17    # "sum":F
    .end local v19    # "w":F
    :cond_8
    const-string/jumbo v20, "StaticLayout"

    const/16 v21, 0x5

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1496
    const-string/jumbo v20, "StaticLayout"

    const-string/jumbo v21, "Start Ellipsis only supported with one line"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1499
    :cond_9
    sget-object v20, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_a

    sget-object v20, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 1501
    :cond_a
    const/16 v17, 0x0

    .line 1504
    .restart local v17    # "sum":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v10, :cond_b

    .line 1505
    add-int v20, v7, p1

    sub-int v20, v20, p4

    aget v19, p3, v20

    .line 1507
    .restart local v19    # "w":F
    add-float v20, v19, v17

    add-float v20, v20, v6

    cmpl-float v20, v20, p5

    if-lez v20, :cond_11

    .line 1514
    .end local v19    # "w":F
    :cond_b
    :goto_4
    if-eqz p11, :cond_c

    if-lez v7, :cond_c

    if-ge v7, v10, :cond_c

    aget-char v20, p11, v7

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isArabicChar(C)Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1515
    new-instance v16, Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p11

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v7}, Ljava/lang/String;-><init>([CII)V

    .line 1516
    .local v16, "s":Ljava/lang/String;
    move-object/from16 v0, p9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v18

    .line 1517
    .local v18, "tmpwid":F
    add-float v20, v18, v6

    cmpg-float v20, v20, p5

    if-gtz v20, :cond_12

    .line 1523
    .end local v16    # "s":Ljava/lang/String;
    .end local v18    # "tmpwid":F
    :cond_c
    move v5, v7

    .line 1524
    sub-int v4, v10, v7

    .line 1525
    if-eqz p10, :cond_3

    if-nez v4, :cond_3

    if-lez v10, :cond_3

    .line 1526
    add-int/lit8 v5, v10, -0x1

    .line 1527
    :goto_5
    if-lez v5, :cond_13

    add-int v20, v5, p1

    sub-int v20, v20, p4

    aget v20, p3, v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_13

    if-eqz p11, :cond_13

    add-int v20, v5, p1

    sub-int v20, v20, p4

    aget-char v20, p11, v20

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    .line 1528
    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .line 1500
    .end local v7    # "i":I
    .end local v17    # "sum":F
    :cond_d
    sget-object v20, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_a

    .line 1533
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    .line 1534
    const/4 v11, 0x0

    .local v11, "lsum":F
    const/4 v15, 0x0

    .line 1535
    .local v15, "rsum":F
    const/4 v9, 0x0

    .local v9, "left":I
    move v13, v10

    .line 1536
    .local v13, "right":I
    move v14, v10

    .line 1538
    .restart local v14    # "rightForZeroWidth":I
    sub-float v20, p5, v6

    const/high16 v21, 0x40000000    # 2.0f

    div-float v12, v20, v21

    .line 1539
    .local v12, "ravail":F
    move v13, v10

    :goto_6
    if-lez v13, :cond_e

    .line 1540
    add-int/lit8 v20, v13, -0x1

    add-int v20, v20, p1

    sub-int v20, v20, p4

    aget v19, p3, v20

    .line 1542
    .restart local v19    # "w":F
    add-float v20, v19, v15

    cmpl-float v20, v20, v12

    if-lez v20, :cond_14

    .line 1551
    .end local v19    # "w":F
    :cond_e
    if-eqz v13, :cond_f

    .line 1552
    move v13, v14

    .line 1555
    :cond_f
    sub-float v20, p5, v6

    sub-float v8, v20, v15

    .line 1556
    .local v8, "lavail":F
    const/4 v9, 0x0

    :goto_7
    if-ge v9, v13, :cond_10

    .line 1557
    add-int v20, v9, p1

    sub-int v20, v20, p4

    aget v19, p3, v20

    .line 1559
    .restart local v19    # "w":F
    add-float v20, v19, v11

    cmpl-float v20, v20, v8

    if-lez v20, :cond_16

    .line 1566
    .end local v19    # "w":F
    :cond_10
    move v5, v9

    .line 1567
    sub-int v4, v13, v9

    goto/16 :goto_2

    .line 1511
    .end local v8    # "lavail":F
    .end local v9    # "left":I
    .end local v11    # "lsum":F
    .end local v12    # "ravail":F
    .end local v13    # "right":I
    .end local v14    # "rightForZeroWidth":I
    .end local v15    # "rsum":F
    .restart local v7    # "i":I
    .restart local v17    # "sum":F
    .restart local v19    # "w":F
    :cond_11
    add-float v17, v17, v19

    .line 1504
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    .line 1520
    .end local v19    # "w":F
    .restart local v16    # "s":Ljava/lang/String;
    .restart local v18    # "tmpwid":F
    :cond_12
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_4

    .line 1529
    .end local v16    # "s":Ljava/lang/String;
    .end local v18    # "tmpwid":F
    :cond_13
    sub-int v4, v10, v5

    goto/16 :goto_2

    .line 1545
    .end local v7    # "i":I
    .end local v17    # "sum":F
    .restart local v9    # "left":I
    .restart local v11    # "lsum":F
    .restart local v12    # "ravail":F
    .restart local v13    # "right":I
    .restart local v14    # "rightForZeroWidth":I
    .restart local v15    # "rsum":F
    .restart local v19    # "w":F
    :cond_14
    const/16 v20, 0x0

    cmpl-float v20, v19, v20

    if-eqz v20, :cond_15

    .line 1546
    add-int/lit8 v14, v13, -0x1

    .line 1549
    :cond_15
    add-float v15, v15, v19

    .line 1539
    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    .line 1563
    .restart local v8    # "lavail":F
    :cond_16
    add-float v11, v11, v19

    .line 1556
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 1569
    .end local v8    # "lavail":F
    .end local v9    # "left":I
    .end local v11    # "lsum":F
    .end local v12    # "ravail":F
    .end local v13    # "right":I
    .end local v14    # "rightForZeroWidth":I
    .end local v15    # "rsum":F
    .end local v19    # "w":F
    :cond_17
    const-string/jumbo v20, "StaticLayout"

    const/16 v21, 0x5

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1570
    const-string/jumbo v20, "StaticLayout"

    const-string/jumbo v21, "Middle Ellipsis only supported with one line"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method private generateForCJK(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 149
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;
    .param p2, "includepad"    # Z
    .param p3, "trackpad"    # Z

    .prologue
    .line 912
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 913
    .local v5, "source":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    move/from16 v99, v0

    .line 914
    .local v99, "bufStart":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    move/from16 v37, v0

    .line 915
    .local v37, "bufEnd":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v46, v0

    .line 916
    .local v46, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    move/from16 v135, v0

    .line 917
    .local v135, "outerWidth":I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 918
    .local v8, "textDir":Landroid/text/TextDirectionHeuristic;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    move/from16 v27, v0

    .line 919
    .local v27, "spacingmult":F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move/from16 v28, v0

    .line 920
    .local v28, "spacingadd":F
    move-object/from16 v0, p1

    iget v9, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    int-to-float v0, v9

    move/from16 v44, v0

    .line 921
    .local v44, "ellipsizedWidth":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v43, v0

    .line 922
    .local v43, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    invoke-virtual/range {v46 .. v46}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Landroid/text/StaticLayout$Builder;->-wrap1(Landroid/text/StaticLayout$Builder;Ljava/util/Locale;)V

    .line 924
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 926
    const/16 v26, 0x0

    .line 927
    .local v26, "v":I
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v27, v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    cmpl-float v9, v28, v9

    if-eqz v9, :cond_3

    :cond_0
    const/16 v33, 0x1

    .line 929
    .local v33, "needMultiply":Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v31, v0

    .line 930
    .local v31, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v30, 0x0

    .line 932
    .local v30, "chooseHtv":[I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    .line 934
    .local v4, "measured":Landroid/text/MeasuredText;
    const/16 v143, 0x0

    .line 935
    .local v143, "spanned":Landroid/text/Spanned;
    instance-of v9, v5, Landroid/text/Spanned;

    if-eqz v9, :cond_1

    move-object/from16 v143, v5

    .line 936
    check-cast v143, Landroid/text/Spanned;

    .line 939
    .end local v143    # "spanned":Landroid/text/Spanned;
    :cond_1
    move/from16 v6, v99

    .end local v30    # "chooseHtv":[I
    .local v6, "paraStart":I
    :goto_1
    move/from16 v0, v37

    if-gt v6, v0, :cond_40

    .line 940
    const/16 v9, 0xa

    move/from16 v0, v37

    invoke-static {v5, v9, v6, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    .line 941
    .local v7, "paraEnd":I
    if-gez v7, :cond_4

    .line 942
    move/from16 v7, v37

    .line 946
    :goto_2
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v109, v9, 0x1

    .line 947
    .local v109, "firstWidthLineLimit":I
    const/4 v15, 0x1

    .line 948
    .local v15, "firstWidthLineCount":I
    move/from16 v108, v135

    .line 949
    .local v108, "firstWidth":I
    move/from16 v136, v135

    .line 951
    .local v136, "restWidth":I
    const/16 v29, 0x0

    .line 953
    .local v29, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v143, :cond_6

    .line 955
    const-class v9, Landroid/text/style/LeadingMarginSpan;

    .line 954
    move-object/from16 v0, v143

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v139

    check-cast v139, [Landroid/text/style/LeadingMarginSpan;

    .line 956
    .local v139, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v117, 0x0

    .local v117, "i":I
    :goto_3
    move-object/from16 v0, v139

    array-length v9, v0

    move/from16 v0, v117

    if-ge v0, v9, :cond_5

    .line 957
    aget-object v125, v139, v117

    .line 958
    .local v125, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v9, v139, v117

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v108, v108, v9

    .line 959
    aget-object v9, v139, v117

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v136, v136, v9

    .line 963
    move-object/from16 v0, v125

    instance-of v9, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v9, :cond_2

    move-object/from16 v126, v125

    .line 964
    check-cast v126, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 965
    .local v126, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v143

    move-object/from16 v1, v126

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v127

    .line 967
    .local v127, "lmsFirstLine":I
    invoke-interface/range {v126 .. v126}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v9

    add-int v9, v9, v127

    .line 966
    move/from16 v0, v109

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v109

    .line 969
    invoke-interface/range {v126 .. v126}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v9

    .line 968
    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 956
    .end local v126    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v127    # "lmsFirstLine":I
    :cond_2
    add-int/lit8 v117, v117, 0x1

    goto :goto_3

    .line 927
    .end local v4    # "measured":Landroid/text/MeasuredText;
    .end local v6    # "paraStart":I
    .end local v7    # "paraEnd":I
    .end local v15    # "firstWidthLineCount":I
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v31    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v33    # "needMultiply":Z
    .end local v108    # "firstWidth":I
    .end local v109    # "firstWidthLineLimit":I
    .end local v117    # "i":I
    .end local v125    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v136    # "restWidth":I
    .end local v139    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_3
    const/16 v33, 0x0

    .restart local v33    # "needMultiply":Z
    goto/16 :goto_0

    .line 944
    .restart local v4    # "measured":Landroid/text/MeasuredText;
    .restart local v6    # "paraStart":I
    .restart local v7    # "paraEnd":I
    .restart local v31    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 973
    .restart local v15    # "firstWidthLineCount":I
    .restart local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v108    # "firstWidth":I
    .restart local v109    # "firstWidthLineLimit":I
    .restart local v117    # "i":I
    .restart local v136    # "restWidth":I
    .restart local v139    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_5
    const-class v9, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v143

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v29, [Landroid/text/style/LineHeightSpan;

    .line 975
    .local v29, "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v29

    array-length v9, v0

    if-nez v9, :cond_7

    .line 976
    const/16 v29, 0x0

    .line 1000
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v117    # "i":I
    .end local v139    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_6
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 1001
    iget-object v12, v4, Landroid/text/MeasuredText;->mChars:[C

    .line 1002
    .local v12, "chs":[C
    iget-object v0, v4, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v41, v0

    .line 1003
    .local v41, "widths":[F
    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v34, v0

    .line 1004
    .local v34, "chdirs":[B
    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v35, v0

    .line 1005
    .local v35, "dir":I
    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v36, v0

    .line 1008
    .local v36, "easy":Z
    const/16 v17, 0x0

    .line 1009
    .local v17, "variableTabStops":[I
    if-eqz v143, :cond_c

    .line 1011
    const-class v9, Landroid/text/style/TabStopSpan;

    .line 1010
    move-object/from16 v0, v143

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v145

    check-cast v145, [Landroid/text/style/TabStopSpan;

    .line 1012
    .local v145, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v145

    array-length v9, v0

    if-lez v9, :cond_c

    .line 1013
    move-object/from16 v0, v145

    array-length v9, v0

    new-array v0, v9, [I

    move-object/from16 v146, v0

    .line 1014
    .local v146, "stops":[I
    const/16 v117, 0x0

    .restart local v117    # "i":I
    :goto_4
    move-object/from16 v0, v145

    array-length v9, v0

    move/from16 v0, v117

    if-ge v0, v9, :cond_b

    .line 1015
    aget-object v9, v145, v117

    invoke-interface {v9}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v9

    aput v9, v146, v117

    .line 1014
    add-int/lit8 v117, v117, 0x1

    goto :goto_4

    .line 978
    .end local v12    # "chs":[C
    .end local v17    # "variableTabStops":[I
    .end local v34    # "chdirs":[B
    .end local v35    # "dir":I
    .end local v36    # "easy":Z
    .end local v41    # "widths":[F
    .end local v145    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v146    # "stops":[I
    .restart local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v139    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_7
    if-eqz v30, :cond_8

    .line 979
    move-object/from16 v0, v30

    array-length v9, v0

    move-object/from16 v0, v29

    array-length v10, v0

    if-ge v9, v10, :cond_9

    .line 980
    :cond_8
    move-object/from16 v0, v29

    array-length v9, v0

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v30

    .line 983
    :cond_9
    const/16 v117, 0x0

    :goto_5
    move-object/from16 v0, v29

    array-length v9, v0

    move/from16 v0, v117

    if-ge v0, v9, :cond_6

    .line 984
    aget-object v9, v29, v117

    move-object/from16 v0, v143

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v128

    .line 986
    .local v128, "o":I
    move/from16 v0, v128

    if-ge v0, v6, :cond_a

    .line 990
    move-object/from16 v0, p0

    move/from16 v1, v128

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    aput v9, v30, v117

    .line 983
    :goto_6
    add-int/lit8 v117, v117, 0x1

    goto :goto_5

    .line 994
    :cond_a
    aput v26, v30, v117

    goto :goto_6

    .line 1017
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v128    # "o":I
    .end local v139    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .restart local v12    # "chs":[C
    .restart local v17    # "variableTabStops":[I
    .restart local v34    # "chdirs":[B
    .restart local v35    # "dir":I
    .restart local v36    # "easy":Z
    .restart local v41    # "widths":[F
    .restart local v145    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v146    # "stops":[I
    :cond_b
    move-object/from16 v0, v146

    array-length v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, v146

    invoke-static {v0, v10, v9}, Ljava/util/Arrays;->sort([III)V

    .line 1018
    move-object/from16 v17, v146

    .line 1022
    .end local v17    # "variableTabStops":[I
    .end local v117    # "i":I
    .end local v145    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v146    # "stops":[I
    :cond_c
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    sub-int v13, v7, v6

    .line 1023
    move/from16 v0, v108

    int-to-float v14, v0

    move/from16 v0, v136

    int-to-float v0, v0

    move/from16 v16, v0

    .line 1024
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    move/from16 v20, v0

    const/16 v18, 0x14

    .line 1022
    invoke-static/range {v10 .. v20}, Landroid/text/StaticLayout;->nSetupParagraph(J[CIFIF[IIII)V

    .line 1026
    const/16 v118, 0x0

    .line 1027
    .local v118, "indents":[I
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_d

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v9, :cond_13

    .line 1031
    :cond_d
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_e

    const/16 v123, 0x0

    .line 1032
    .local v123, "leftLen":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_f

    const/16 v137, 0x0

    .line 1033
    .local v137, "rightLen":I
    :goto_8
    move/from16 v0, v123

    move/from16 v1, v137

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v119

    .line 1034
    .local v119, "indentsLen":I
    move/from16 v0, v119

    new-array v0, v0, [I

    move-object/from16 v118, v0

    .line 1035
    .local v118, "indents":[I
    const/16 v117, 0x0

    .restart local v117    # "i":I
    :goto_9
    move/from16 v0, v117

    move/from16 v1, v119

    if-ge v0, v1, :cond_12

    .line 1036
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_10

    const/16 v124, 0x0

    .line 1038
    .local v124, "leftMargin":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_11

    const/16 v138, 0x0

    .line 1040
    .local v138, "rightMargin":I
    :goto_b
    add-int v9, v124, v138

    aput v9, v118, v117

    .line 1035
    add-int/lit8 v117, v117, 0x1

    goto :goto_9

    .line 1031
    .end local v117    # "i":I
    .end local v119    # "indentsLen":I
    .end local v123    # "leftLen":I
    .end local v124    # "leftMargin":I
    .end local v137    # "rightLen":I
    .end local v138    # "rightMargin":I
    .local v118, "indents":[I
    :cond_e
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v0, v9

    move/from16 v123, v0

    .restart local v123    # "leftLen":I
    goto :goto_7

    .line 1032
    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v0, v9

    move/from16 v137, v0

    goto :goto_8

    .line 1037
    .restart local v117    # "i":I
    .local v118, "indents":[I
    .restart local v119    # "indentsLen":I
    .restart local v137    # "rightLen":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v117

    add-int/lit8 v11, v123, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v124, v9, v10

    .restart local v124    # "leftMargin":I
    goto :goto_a

    .line 1039
    :cond_11
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v117

    add-int/lit8 v11, v137, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v138, v9, v10

    goto :goto_b

    .line 1042
    .end local v124    # "leftMargin":I
    :cond_12
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v118

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    .line 1045
    .end local v117    # "i":I
    .end local v118    # "indents":[I
    .end local v119    # "indentsLen":I
    .end local v123    # "leftLen":I
    .end local v137    # "rightLen":I
    :cond_13
    move/from16 v147, v108

    .line 1046
    .local v147, "width":I
    move/from16 v148, v108

    .line 1047
    .local v148, "widthWithoutIndents":I
    if-eqz v118, :cond_14

    .line 1048
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, v118

    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    aget v9, v118, v9

    sub-int v148, v147, v9

    .line 1051
    :cond_14
    const/16 v74, 0x0

    .line 1053
    .local v74, "w":F
    move/from16 v20, v6

    .line 1057
    .local v20, "here":I
    move/from16 v129, v6

    .line 1051
    .local v129, "ok":I
    const/16 v134, 0x0

    .line 1059
    .local v134, "okWidth":F
    const/16 v130, 0x0

    .local v130, "okAscent":I
    const/16 v132, 0x0

    .local v132, "okDescent":I
    const/16 v133, 0x0

    .local v133, "okTop":I
    const/16 v131, 0x0

    .line 1063
    .local v131, "okBottom":I
    move/from16 v110, v6

    .line 1051
    .local v110, "fit":I
    const/16 v111, 0x0

    .line 1065
    .local v111, "fitWidth":F
    const/16 v51, 0x0

    .local v51, "fitAscent":I
    const/16 v52, 0x0

    .local v52, "fitDescent":I
    const/16 v53, 0x0

    .local v53, "fitTop":I
    const/16 v54, 0x0

    .line 1051
    .local v54, "fitBottom":I
    const/16 v112, 0x0

    .line 1069
    .local v112, "fitWidthGraphing":F
    const/16 v32, 0x0

    .line 1071
    .local v32, "hasTabOrEmoji":I
    const/16 v116, 0x0

    .local v116, "fmTop":I
    const/16 v114, 0x0

    .local v114, "fmBottom":I
    const/16 v113, 0x0

    .local v113, "fmAscent":I
    const/16 v115, 0x0

    .line 1073
    .local v115, "fmDescent":I
    move/from16 v142, v6

    .local v142, "spanStart":I
    :goto_c
    move/from16 v0, v142

    if-ge v0, v7, :cond_3d

    .line 1075
    if-nez v143, :cond_29

    .line 1076
    move/from16 v140, v7

    .line 1077
    .local v140, "spanEnd":I
    sub-int v141, v7, v142

    .line 1078
    .local v141, "spanLen":I
    move-object/from16 v0, v46

    move/from16 v1, v141

    move-object/from16 v2, v31

    invoke-virtual {v4, v0, v1, v2}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 1091
    :goto_d
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, v116

    if-ge v9, v0, :cond_15

    .line 1092
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v116, v0

    .line 1094
    :cond_15
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v0, v113

    if-ge v9, v0, :cond_16

    .line 1095
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v113, v0

    .line 1097
    :cond_16
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, v115

    if-le v9, v0, :cond_17

    .line 1098
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v115, v0

    .line 1100
    :cond_17
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v0, v114

    if-le v9, v0, :cond_18

    .line 1101
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v114, v0

    .line 1103
    :cond_18
    if-eqz v118, :cond_19

    .line 1104
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, v118

    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    aget v9, v118, v9

    sub-int v148, v147, v9

    .line 1107
    :cond_19
    const/16 v105, 0x0

    .line 1108
    .local v105, "bZeroWidthSpace":Z
    move/from16 v122, v142

    .local v122, "j":I
    :goto_e
    move/from16 v0, v122

    move/from16 v1, v140

    if-ge v0, v1, :cond_37

    .line 1109
    sub-int v9, v122, v6

    aget-char v106, v12, v9

    .line 1111
    .local v106, "c":C
    const/16 v9, 0xa

    move/from16 v0, v106

    if-ne v0, v9, :cond_2a

    .line 1117
    :goto_f
    const/16 v9, 0x20

    move/from16 v0, v106

    if-eq v0, v9, :cond_1a

    const/16 v9, 0x9

    move/from16 v0, v106

    if-ne v0, v9, :cond_2b

    :cond_1a
    const/16 v121, 0x1

    .line 1119
    .local v121, "isSpaceOrTab":Z
    :goto_10
    move/from16 v0, v148

    int-to-float v9, v0

    cmpg-float v9, v74, v9

    if-lez v9, :cond_1b

    if-eqz v121, :cond_34

    .line 1120
    :cond_1b
    move/from16 v111, v74

    .line 1121
    if-nez v121, :cond_1c

    .line 1122
    move/from16 v112, v74

    .line 1124
    :cond_1c
    add-int/lit8 v110, v122, 0x1

    .line 1126
    move/from16 v0, v116

    move/from16 v1, v53

    if-ge v0, v1, :cond_1d

    .line 1127
    move/from16 v53, v116

    .line 1128
    :cond_1d
    move/from16 v0, v113

    move/from16 v1, v51

    if-ge v0, v1, :cond_1e

    .line 1129
    move/from16 v51, v113

    .line 1130
    :cond_1e
    move/from16 v0, v115

    move/from16 v1, v52

    if-le v0, v1, :cond_1f

    .line 1131
    move/from16 v52, v115

    .line 1132
    :cond_1f
    move/from16 v0, v114

    move/from16 v1, v54

    if-le v0, v1, :cond_20

    .line 1133
    move/from16 v54, v114

    .line 1136
    :cond_20
    const/16 v9, 0x200b

    move/from16 v0, v106

    if-ne v0, v9, :cond_21

    .line 1137
    const/16 v105, 0x1

    .line 1140
    :cond_21
    const/16 v120, 0x0

    .line 1141
    .local v120, "isLineBreak":Z
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2f

    .line 1142
    if-nez v121, :cond_2c

    .line 1144
    const/16 v9, 0x2f

    move/from16 v0, v106

    if-eq v0, v9, :cond_22

    const/16 v9, 0x2d

    move/from16 v0, v106

    if-ne v0, v9, :cond_23

    .line 1145
    :cond_22
    add-int/lit8 v9, v122, 0x1

    move/from16 v0, v140

    if-ge v9, v0, :cond_2c

    add-int/lit8 v9, v122, 0x1

    sub-int/2addr v9, v6

    aget-char v9, v12, v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_2c

    .line 1148
    :cond_23
    if-nez v105, :cond_24

    const/16 v9, 0x2e80

    move/from16 v0, v106

    if-lt v0, v9, :cond_24

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v106

    invoke-direct {v0, v1, v9}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 1149
    add-int/lit8 v9, v122, 0x1

    move/from16 v0, v140

    if-ge v9, v0, :cond_24

    add-int/lit8 v9, v122, 0x1

    sub-int/2addr v9, v6

    aget-char v9, v12, v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v9

    .line 1142
    if-nez v9, :cond_2c

    .line 1150
    :cond_24
    if-nez v105, :cond_2e

    const/16 v9, 0x2e80

    move/from16 v0, v106

    if-lt v0, v9, :cond_2e

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v106

    invoke-direct {v0, v1, v9}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 1151
    add-int/lit8 v9, v122, 0x1

    move/from16 v0, v140

    if-ge v9, v0, :cond_2e

    add-int/lit8 v9, v122, 0x1

    sub-int/2addr v9, v6

    aget-char v9, v12, v9

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v9

    if-eqz v9, :cond_2d

    const/16 v120, 0x0

    .line 1163
    .end local v120    # "isLineBreak":Z
    :goto_11
    if-eqz v120, :cond_28

    .line 1164
    move/from16 v134, v112

    .line 1165
    add-int/lit8 v129, v122, 0x1

    .line 1167
    move/from16 v0, v53

    move/from16 v1, v133

    if-ge v0, v1, :cond_25

    .line 1168
    move/from16 v133, v53

    .line 1169
    :cond_25
    move/from16 v0, v51

    move/from16 v1, v130

    if-ge v0, v1, :cond_26

    .line 1170
    move/from16 v130, v51

    .line 1171
    :cond_26
    move/from16 v0, v52

    move/from16 v1, v132

    if-le v0, v1, :cond_27

    .line 1172
    move/from16 v132, v52

    .line 1173
    :cond_27
    move/from16 v0, v54

    move/from16 v1, v131

    if-le v0, v1, :cond_28

    .line 1174
    move/from16 v131, v54

    .line 1108
    :cond_28
    add-int/lit8 v122, v122, 0x1

    goto/16 :goto_e

    .line 1081
    .end local v105    # "bZeroWidthSpace":Z
    .end local v106    # "c":C
    .end local v121    # "isSpaceOrTab":Z
    .end local v122    # "j":I
    .end local v140    # "spanEnd":I
    .end local v141    # "spanLen":I
    :cond_29
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    .line 1080
    move-object/from16 v0, v143

    move/from16 v1, v142

    invoke-interface {v0, v1, v7, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v140

    .line 1082
    .restart local v140    # "spanEnd":I
    sub-int v141, v140, v142

    .line 1084
    .restart local v141    # "spanLen":I
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v143

    move/from16 v1, v142

    move/from16 v2, v140

    invoke-interface {v0, v1, v2, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v144

    check-cast v144, [Landroid/text/style/MetricAffectingSpan;

    .line 1085
    .local v144, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v144

    move-object/from16 v1, v143

    invoke-static {v0, v1, v9}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v144

    .end local v144    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v144, [Landroid/text/style/MetricAffectingSpan;

    .line 1086
    .restart local v144    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v46

    move-object/from16 v1, v144

    move/from16 v2, v141

    move-object/from16 v3, v31

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_d

    .line 1114
    .end local v144    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .restart local v105    # "bZeroWidthSpace":Z
    .restart local v106    # "c":C
    .restart local v122    # "j":I
    :cond_2a
    sub-int v9, v122, v6

    aget v9, v41, v9

    add-float v74, v74, v9

    goto/16 :goto_f

    .line 1117
    :cond_2b
    const/16 v9, 0x200b

    move/from16 v0, v106

    if-eq v0, v9, :cond_1a

    const/16 v121, 0x0

    .restart local v121    # "isSpaceOrTab":Z
    goto/16 :goto_10

    .line 1142
    .restart local v120    # "isLineBreak":Z
    :cond_2c
    const/16 v120, 0x1

    goto :goto_11

    .line 1151
    :cond_2d
    const/16 v120, 0x1

    goto :goto_11

    .line 1150
    :cond_2e
    const/16 v120, 0x0

    goto :goto_11

    .line 1153
    :cond_2f
    if-nez v121, :cond_32

    .line 1155
    const/16 v9, 0x2f

    move/from16 v0, v106

    if-eq v0, v9, :cond_30

    const/16 v9, 0x2d

    move/from16 v0, v106

    if-ne v0, v9, :cond_31

    .line 1156
    :cond_30
    add-int/lit8 v9, v122, 0x1

    move/from16 v0, v140

    if-ge v9, v0, :cond_32

    add-int/lit8 v9, v122, 0x1

    sub-int/2addr v9, v6

    aget-char v9, v12, v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_32

    .line 1159
    :cond_31
    const/16 v9, 0x2e80

    move/from16 v0, v106

    if-lt v0, v9, :cond_33

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v106

    invoke-direct {v0, v1, v9}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v9

    if-eqz v9, :cond_33

    .line 1160
    add-int/lit8 v9, v122, 0x1

    move/from16 v0, v140

    if-ge v9, v0, :cond_33

    add-int/lit8 v9, v122, 0x1

    sub-int/2addr v9, v6

    aget-char v9, v12, v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v120

    .local v120, "isLineBreak":Z
    goto/16 :goto_11

    .line 1153
    .local v120, "isLineBreak":Z
    :cond_32
    const/16 v120, 0x1

    goto/16 :goto_11

    .line 1159
    :cond_33
    const/16 v120, 0x0

    goto/16 :goto_11

    .line 1181
    .end local v120    # "isLineBreak":Z
    :cond_34
    move/from16 v0, v129

    move/from16 v1, v20

    if-eq v0, v1, :cond_38

    .line 1182
    move/from16 v107, v129

    .line 1183
    .local v107, "endPos":I
    move/from16 v22, v130

    .line 1184
    .local v22, "above":I
    move/from16 v23, v132

    .line 1185
    .local v23, "below":I
    move/from16 v24, v133

    .line 1186
    .local v24, "top":I
    move/from16 v25, v131

    .line 1187
    .local v25, "bottom":I
    move/from16 v45, v134

    .line 1214
    .local v45, "currentTextWidth":F
    :goto_12
    move/from16 v21, v107

    .line 1215
    .local v21, "ellipseEnd":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_35

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v43

    if-ne v0, v9, :cond_35

    .line 1216
    move/from16 v21, v7

    .line 1223
    :cond_35
    const/16 v47, 0x1

    move-object/from16 v18, p0

    move-object/from16 v19, v5

    move/from16 v38, p2

    move/from16 v39, p3

    move-object/from16 v40, v12

    move/from16 v42, v6

    .line 1218
    invoke-direct/range {v18 .. v47}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v26

    .line 1225
    move/from16 v0, v107

    move/from16 v1, v140

    if-ge v0, v1, :cond_3b

    .line 1227
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v116, v0

    .line 1228
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v114, v0

    .line 1229
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v113, v0

    .line 1230
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v115, v0

    .line 1235
    :goto_13
    move/from16 v20, v107

    .line 1236
    add-int/lit8 v122, v107, -0x1

    .line 1237
    move/from16 v110, v107

    move/from16 v129, v107

    .line 1238
    const/16 v74, 0x0

    const/16 v112, 0x0

    .line 1240
    const/16 v54, 0x0

    const/16 v53, 0x0

    const/16 v52, 0x0

    const/16 v51, 0x0

    .line 1241
    const/16 v131, 0x0

    const/16 v133, 0x0

    const/16 v132, 0x0

    const/16 v130, 0x0

    .line 1242
    const/16 v32, 0x0

    .line 1244
    add-int/lit8 v109, v109, -0x1

    if-gtz v109, :cond_36

    .line 1245
    move/from16 v147, v136

    .line 1248
    :cond_36
    move/from16 v0, v20

    move/from16 v1, v142

    if-ge v0, v1, :cond_3c

    .line 1251
    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/text/MeasuredText;->setPos(I)V

    .line 1252
    move/from16 v140, v20

    .line 1073
    .end local v21    # "ellipseEnd":I
    .end local v22    # "above":I
    .end local v23    # "below":I
    .end local v24    # "top":I
    .end local v25    # "bottom":I
    .end local v45    # "currentTextWidth":F
    .end local v106    # "c":C
    .end local v107    # "endPos":I
    .end local v121    # "isSpaceOrTab":Z
    :cond_37
    move/from16 v142, v140

    goto/16 :goto_c

    .line 1188
    .restart local v106    # "c":C
    .restart local v121    # "isSpaceOrTab":Z
    :cond_38
    move/from16 v0, v110

    move/from16 v1, v20

    if-eq v0, v1, :cond_39

    .line 1189
    move/from16 v107, v110

    .line 1190
    .restart local v107    # "endPos":I
    move/from16 v22, v51

    .line 1191
    .restart local v22    # "above":I
    move/from16 v23, v52

    .line 1192
    .restart local v23    # "below":I
    move/from16 v24, v53

    .line 1193
    .restart local v24    # "top":I
    move/from16 v25, v54

    .line 1194
    .restart local v25    # "bottom":I
    move/from16 v45, v111

    .restart local v45    # "currentTextWidth":F
    goto/16 :goto_12

    .line 1197
    .end local v22    # "above":I
    .end local v23    # "below":I
    .end local v24    # "top":I
    .end local v25    # "bottom":I
    .end local v45    # "currentTextWidth":F
    .end local v107    # "endPos":I
    :cond_39
    add-int/lit8 v107, v20, 0x1

    .line 1200
    .restart local v107    # "endPos":I
    :goto_14
    move/from16 v0, v107

    move/from16 v1, v140

    if-ge v0, v1, :cond_3a

    sub-int v9, v107, v6

    aget v9, v41, v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_3a

    .line 1201
    add-int/lit8 v107, v107, 0x1

    goto :goto_14

    .line 1203
    :cond_3a
    move/from16 v22, v113

    .line 1204
    .restart local v22    # "above":I
    move/from16 v23, v115

    .line 1205
    .restart local v23    # "below":I
    move/from16 v24, v116

    .line 1206
    .restart local v24    # "top":I
    move/from16 v25, v114

    .line 1207
    .restart local v25    # "bottom":I
    sub-int v9, v20, v6

    aget v45, v41, v9

    .restart local v45    # "currentTextWidth":F
    goto/16 :goto_12

    .line 1232
    .restart local v21    # "ellipseEnd":I
    :cond_3b
    const/16 v115, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x0

    const/16 v116, 0x0

    goto :goto_13

    .line 1256
    :cond_3c
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_28

    .line 1257
    return-void

    .line 1263
    .end local v21    # "ellipseEnd":I
    .end local v22    # "above":I
    .end local v23    # "below":I
    .end local v24    # "top":I
    .end local v25    # "bottom":I
    .end local v45    # "currentTextWidth":F
    .end local v105    # "bZeroWidthSpace":Z
    .end local v106    # "c":C
    .end local v107    # "endPos":I
    .end local v121    # "isSpaceOrTab":Z
    .end local v122    # "j":I
    .end local v140    # "spanEnd":I
    .end local v141    # "spanLen":I
    :cond_3d
    move/from16 v0, v20

    if-eq v7, v0, :cond_3f

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v9, v10, :cond_3f

    .line 1264
    or-int v9, v53, v54

    or-int v9, v9, v52

    or-int v9, v9, v51

    if-nez v9, :cond_3e

    .line 1265
    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1267
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v53, v0

    .line 1268
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v54, v0

    .line 1269
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v51, v0

    .line 1270
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v52, v0

    .line 1282
    :cond_3e
    move/from16 v0, v37

    if-eq v7, v0, :cond_43

    const/16 v76, 0x1

    :goto_15
    move-object/from16 v47, p0

    move-object/from16 v48, v5

    move/from16 v49, v20

    move/from16 v50, v7

    move/from16 v55, v26

    move/from16 v56, v27

    move/from16 v57, v28

    move-object/from16 v58, v29

    move-object/from16 v59, v30

    move-object/from16 v60, v31

    move/from16 v61, v32

    move/from16 v62, v33

    move-object/from16 v63, v34

    move/from16 v64, v35

    move/from16 v65, v36

    move/from16 v66, v37

    move/from16 v67, p2

    move/from16 v68, p3

    move-object/from16 v69, v12

    move-object/from16 v70, v41

    move/from16 v71, v6

    move-object/from16 v72, v43

    move/from16 v73, v44

    move-object/from16 v75, v46

    .line 1273
    invoke-direct/range {v47 .. v76}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v26

    .line 1285
    :cond_3f
    move v6, v7

    .line 1287
    move/from16 v0, v37

    if-eq v7, v0, :cond_40

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_44

    .line 1291
    .end local v7    # "paraEnd":I
    .end local v12    # "chs":[C
    .end local v15    # "firstWidthLineCount":I
    .end local v20    # "here":I
    .end local v32    # "hasTabOrEmoji":I
    .end local v34    # "chdirs":[B
    .end local v35    # "dir":I
    .end local v36    # "easy":Z
    .end local v41    # "widths":[F
    .end local v51    # "fitAscent":I
    .end local v52    # "fitDescent":I
    .end local v53    # "fitTop":I
    .end local v54    # "fitBottom":I
    .end local v74    # "w":F
    .end local v108    # "firstWidth":I
    .end local v109    # "firstWidthLineLimit":I
    .end local v110    # "fit":I
    .end local v111    # "fitWidth":F
    .end local v112    # "fitWidthGraphing":F
    .end local v113    # "fmAscent":I
    .end local v114    # "fmBottom":I
    .end local v115    # "fmDescent":I
    .end local v116    # "fmTop":I
    .end local v129    # "ok":I
    .end local v130    # "okAscent":I
    .end local v131    # "okBottom":I
    .end local v132    # "okDescent":I
    .end local v133    # "okTop":I
    .end local v134    # "okWidth":F
    .end local v136    # "restWidth":I
    .end local v142    # "spanStart":I
    .end local v147    # "width":I
    .end local v148    # "widthWithoutIndents":I
    :cond_40
    move/from16 v0, v37

    move/from16 v1, v99

    if-eq v0, v1, :cond_41

    add-int/lit8 v9, v37, -0x1

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_42

    .line 1292
    :cond_41
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v9, v10, :cond_42

    .line 1294
    const/16 v60, 0x0

    move-object/from16 v55, v4

    move-object/from16 v56, v5

    move/from16 v57, v37

    move/from16 v58, v37

    move-object/from16 v59, v8

    invoke-virtual/range {v55 .. v60}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 1296
    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1299
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v79, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v80, v0

    .line 1300
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v81, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v82, v0

    .line 1304
    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v91, v0

    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v92, v0

    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v93, v0

    .line 1307
    const/16 v102, 0x0

    .line 1302
    const/16 v86, 0x0

    .line 1303
    const/16 v87, 0x0

    const/16 v89, 0x0

    .line 1305
    const/16 v97, 0x0

    .line 1306
    const/16 v98, 0x0

    .line 1307
    const/16 v104, 0x0

    move-object/from16 v75, p0

    move-object/from16 v76, v5

    move/from16 v77, v37

    move/from16 v78, v37

    move/from16 v83, v26

    move/from16 v84, v27

    move/from16 v85, v28

    move-object/from16 v88, v31

    move/from16 v90, v33

    move/from16 v94, v37

    move/from16 v95, p2

    move/from16 v96, p3

    move-object/from16 v100, v43

    move/from16 v101, v44

    move-object/from16 v103, v46

    .line 1298
    invoke-direct/range {v75 .. v104}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v26

    .line 911
    :cond_42
    return-void

    .line 1282
    .restart local v7    # "paraEnd":I
    .restart local v12    # "chs":[C
    .restart local v15    # "firstWidthLineCount":I
    .restart local v20    # "here":I
    .restart local v32    # "hasTabOrEmoji":I
    .restart local v34    # "chdirs":[B
    .restart local v35    # "dir":I
    .restart local v36    # "easy":Z
    .restart local v41    # "widths":[F
    .restart local v51    # "fitAscent":I
    .restart local v52    # "fitDescent":I
    .restart local v53    # "fitTop":I
    .restart local v54    # "fitBottom":I
    .restart local v74    # "w":F
    .restart local v108    # "firstWidth":I
    .restart local v109    # "firstWidthLineLimit":I
    .restart local v110    # "fit":I
    .restart local v111    # "fitWidth":F
    .restart local v112    # "fitWidthGraphing":F
    .restart local v113    # "fmAscent":I
    .restart local v114    # "fmBottom":I
    .restart local v115    # "fmDescent":I
    .restart local v116    # "fmTop":I
    .restart local v129    # "ok":I
    .restart local v130    # "okAscent":I
    .restart local v131    # "okBottom":I
    .restart local v132    # "okDescent":I
    .restart local v133    # "okTop":I
    .restart local v134    # "okWidth":F
    .restart local v136    # "restWidth":I
    .restart local v142    # "spanStart":I
    .restart local v147    # "width":I
    .restart local v148    # "widthWithoutIndents":I
    :cond_43
    const/16 v76, 0x0

    goto/16 :goto_15

    .line 939
    :cond_44
    move v6, v7

    goto/16 :goto_1
.end method

.method private final isIdeographic(CZ)Z
    .locals 4
    .param p1, "c"    # C
    .param p2, "includeNonStarters"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1724
    const/16 v0, 0x2e80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2fff

    if-gt p1, v0, :cond_0

    .line 1725
    return v2

    .line 1727
    :cond_0
    const/16 v0, 0x3000

    if-ne p1, v0, :cond_1

    .line 1728
    return v2

    .line 1730
    :cond_1
    const/16 v0, 0x3040

    if-lt p1, v0, :cond_3

    const/16 v0, 0x309f

    if-gt p1, v0, :cond_3

    .line 1731
    if-nez p2, :cond_2

    .line 1732
    sparse-switch p1, :sswitch_data_0

    .line 1752
    :cond_2
    return v2

    .line 1749
    :sswitch_0
    return v3

    .line 1754
    :cond_3
    const/16 v0, 0x30a0

    if-lt p1, v0, :cond_5

    const/16 v0, 0x30ff

    if-gt p1, v0, :cond_5

    .line 1755
    if-nez p2, :cond_4

    .line 1756
    sparse-switch p1, :sswitch_data_1

    .line 1777
    :cond_4
    return v2

    .line 1774
    :sswitch_1
    return v3

    .line 1779
    :cond_5
    const/16 v0, 0x3400

    if-lt p1, v0, :cond_6

    const/16 v0, 0x4db5

    if-gt p1, v0, :cond_6

    .line 1780
    return v2

    .line 1782
    :cond_6
    const/16 v0, 0x4e00

    if-lt p1, v0, :cond_7

    const v0, 0x9fbb

    if-gt p1, v0, :cond_7

    .line 1783
    return v2

    .line 1785
    :cond_7
    const v0, 0xf900

    if-lt p1, v0, :cond_8

    const v0, 0xfad9

    if-gt p1, v0, :cond_8

    .line 1786
    return v2

    .line 1788
    :cond_8
    const v0, 0xa000

    if-lt p1, v0, :cond_9

    const v0, 0xa48f

    if-gt p1, v0, :cond_9

    .line 1789
    return v2

    .line 1791
    :cond_9
    const v0, 0xa490

    if-lt p1, v0, :cond_a

    const v0, 0xa4cf

    if-gt p1, v0, :cond_a

    .line 1792
    return v2

    .line 1794
    :cond_a
    const v0, 0xfe62

    if-lt p1, v0, :cond_b

    const v0, 0xfe66

    if-gt p1, v0, :cond_b

    .line 1795
    return v2

    .line 1797
    :cond_b
    const v0, 0xff10

    if-lt p1, v0, :cond_c

    const v0, 0xff19

    if-gt p1, v0, :cond_c

    .line 1798
    return v2

    .line 1801
    :cond_c
    iget v0, p0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 1802
    const/16 v0, 0x3001

    if-lt p1, v0, :cond_e

    const/16 v0, 0x301f

    if-gt p1, v0, :cond_e

    .line 1803
    if-nez p2, :cond_d

    .line 1804
    packed-switch p1, :pswitch_data_0

    .line 1817
    :cond_d
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    .line 1826
    :pswitch_1
    return v2

    .line 1814
    :pswitch_2
    return v3

    .line 1824
    :pswitch_3
    return v3

    .line 1829
    :cond_e
    const v0, 0xff01

    if-lt p1, v0, :cond_10

    const v0, 0xff9f

    if-gt p1, v0, :cond_10

    .line 1830
    if-nez p2, :cond_f

    .line 1831
    sparse-switch p1, :sswitch_data_2

    .line 1851
    :cond_f
    sparse-switch p1, :sswitch_data_3

    .line 1858
    return v2

    .line 1848
    :sswitch_2
    return v3

    .line 1856
    :sswitch_3
    return v3

    .line 1860
    :cond_10
    const/16 v0, 0x21

    if-lt p1, v0, :cond_12

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_12

    .line 1861
    if-nez p2, :cond_11

    .line 1862
    sparse-switch p1, :sswitch_data_4

    .line 1873
    :cond_11
    return v2

    .line 1870
    :sswitch_4
    return v3

    .line 1875
    :cond_12
    const/16 v0, 0x5d

    if-eq p1, v0, :cond_13

    const/16 v0, 0x7d

    if-ne p1, v0, :cond_14

    .line 1878
    :cond_13
    return p2

    .line 1875
    :cond_14
    const/16 v0, 0x90

    if-eq p1, v0, :cond_13

    const/16 v0, 0xb0

    if-eq p1, v0, :cond_13

    .line 1876
    const/16 v0, 0x2019

    if-eq p1, v0, :cond_13

    const/16 v0, 0x201d

    if-eq p1, v0, :cond_13

    const/16 v0, 0x2032

    if-eq p1, v0, :cond_13

    const/16 v0, 0x2033

    if-eq p1, v0, :cond_13

    .line 1877
    const/16 v0, 0x309b

    if-eq p1, v0, :cond_13

    const/16 v0, 0x309c

    if-eq p1, v0, :cond_13

    const/16 v0, 0x30fb

    if-eq p1, v0, :cond_13

    .line 1881
    :cond_15
    return v3

    .line 1732
    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    .line 1756
    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch

    .line 1804
    :pswitch_data_0
    .packed-switch 0x3001
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1817
    :pswitch_data_1
    .packed-switch 0x3008
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1831
    :sswitch_data_2
    .sparse-switch
        0xff01 -> :sswitch_2
        0xff09 -> :sswitch_2
        0xff0c -> :sswitch_2
        0xff0e -> :sswitch_2
        0xff1a -> :sswitch_2
        0xff1b -> :sswitch_2
        0xff1f -> :sswitch_2
        0xff3d -> :sswitch_2
        0xff5d -> :sswitch_2
        0xff61 -> :sswitch_2
        0xff63 -> :sswitch_2
        0xff64 -> :sswitch_2
        0xff65 -> :sswitch_2
        0xff70 -> :sswitch_2
        0xff9e -> :sswitch_2
        0xff9f -> :sswitch_2
    .end sparse-switch

    .line 1851
    :sswitch_data_3
    .sparse-switch
        0xff08 -> :sswitch_3
        0xff3b -> :sswitch_3
        0xff5b -> :sswitch_3
        0xff62 -> :sswitch_3
    .end sparse-switch

    .line 1862
    :sswitch_data_4
    .sparse-switch
        0x21 -> :sswitch_4
        0x29 -> :sswitch_4
        0x2c -> :sswitch_4
        0x2e -> :sswitch_4
        0x3a -> :sswitch_4
        0x3b -> :sswitch_4
        0x3f -> :sswitch_4
    .end sparse-switch
.end method

.method private static native nAddMeasuredRun(JII[F)V
.end method

.method private static native nAddReplacementRun(JIIF)V
.end method

.method private static native nAddStyleRun(JJJIIZ)F
.end method

.method private static native nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I
.end method

.method private static native nFinishBuilder(J)V
.end method

.method private static native nFreeBuilder(J)V
.end method

.method private static native nGetWidths(J[F)V
.end method

.method static native nLoadHyphenator(Ljava/nio/ByteBuffer;I)J
.end method

.method private static native nNewBuilder()J
.end method

.method private static native nSetIndents(J[I)V
.end method

.method private static native nSetLocale(JLjava/lang/String;J)V
.end method

.method private static native nSetupParagraph(J[CIFIF[IIII)V
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 29
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "flags"    # I
    .param p15, "needMultiply"    # Z
    .param p16, "chdirs"    # [B
    .param p17, "dir"    # I
    .param p18, "easy"    # Z
    .param p19, "bufEnd"    # I
    .param p20, "includePad"    # Z
    .param p21, "trackPad"    # Z
    .param p22, "chs"    # [C
    .param p23, "widths"    # [F
    .param p24, "widthStart"    # I
    .param p25, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p26, "ellipsisWidth"    # F
    .param p27, "textWidth"    # F
    .param p28, "paint"    # Landroid/text/TextPaint;
    .param p29, "moreChars"    # Z

    .prologue
    .line 1323
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v23, v0

    .line 1324
    .local v23, "j":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v27, v23, v2

    .line 1325
    .local v27, "off":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v27

    add-int/lit8 v28, v2, 0x1

    .line 1326
    .local v28, "want":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v26, v0

    .line 1328
    .local v26, "lines":[I
    move-object/from16 v0, v26

    array-length v2, v0

    move/from16 v0, v28

    if-lt v0, v2, :cond_0

    .line 1330
    const-class v2, Landroid/text/Layout$Directions;

    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    .line 1329
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/Layout$Directions;

    .line 1331
    .local v21, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 1332
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v3, v3

    .line 1331
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-static {v2, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1333
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 1335
    move-object/from16 v0, v21

    array-length v2, v0

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .line 1336
    .local v20, "grow":[I
    move-object/from16 v0, v26

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1337
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 1338
    move-object/from16 v26, v20

    .line 1341
    .end local v20    # "grow":[I
    .end local v21    # "grow2":[Landroid/text/Layout$Directions;
    :cond_0
    if-eqz p11, :cond_3

    .line 1342
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1343
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1344
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1345
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1347
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_2

    .line 1348
    aget-object v2, p11, v22

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 1349
    aget-object v2, p11, v22

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    .line 1350
    aget v6, p12, v22

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    .line 1349
    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 1347
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 1353
    :cond_1
    aget-object v2, p11, v22

    aget v6, p12, v22

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 1357
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 1358
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 1359
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 1360
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 1363
    .end local v22    # "i":I
    :cond_3
    if-nez v23, :cond_e

    const/16 v19, 0x1

    .line 1364
    .local v19, "firstLine":Z
    :goto_2
    add-int/lit8 v2, v23, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_f

    const/4 v14, 0x1

    .line 1365
    .local v14, "currentLineIsTheLastVisibleOne":Z
    :goto_3
    if-nez v14, :cond_4

    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_10

    :cond_4
    const/16 v24, 0x1

    .line 1367
    .local v24, "lastLine":Z
    :goto_4
    if-eqz v19, :cond_6

    .line 1368
    if-eqz p21, :cond_5

    .line 1369
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 1372
    :cond_5
    if-eqz p20, :cond_6

    .line 1373
    move/from16 p4, p6

    .line 1379
    :cond_6
    if-eqz v24, :cond_8

    .line 1380
    if-eqz p21, :cond_7

    .line 1381
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 1384
    :cond_7
    if-eqz p20, :cond_8

    .line 1385
    move/from16 p5, p7

    .line 1390
    :cond_8
    if-eqz p15, :cond_9

    if-eqz v24, :cond_11

    .line 1398
    :cond_9
    const/16 v18, 0x0

    .line 1401
    .local v18, "extra":I
    :goto_5
    add-int/lit8 v2, v27, 0x0

    aput p2, v26, v2

    .line 1402
    add-int/lit8 v2, v27, 0x1

    aput p8, v26, v2

    .line 1403
    add-int/lit8 v2, v27, 0x2

    add-int v3, p5, v18

    aput v3, v26, v2

    .line 1405
    sub-int v2, p5, p4

    add-int v2, v2, v18

    add-int p8, p8, v2

    .line 1406
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v27

    add-int/lit8 v2, v2, 0x0

    aput p3, v26, v2

    .line 1407
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v27

    add-int/lit8 v2, v2, 0x1

    aput p8, v26, v2

    .line 1411
    add-int/lit8 v2, v27, 0x0

    aget v3, v26, v2

    const/high16 v4, 0x20000000

    and-int v4, v4, p14

    or-int/2addr v3, v4

    aput v3, v26, v2

    .line 1412
    add-int/lit8 v2, v27, 0x3

    aput p14, v26, v2

    .line 1414
    add-int/lit8 v2, v27, 0x0

    aget v3, v26, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v26, v2

    .line 1415
    sget-object v25, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1419
    .local v25, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_13

    .line 1420
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v25, v2, v23

    .line 1426
    :goto_6
    if-eqz p25, :cond_d

    .line 1429
    if-eqz p29, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_14

    const/4 v12, 0x1

    .line 1432
    .local v12, "forceEllipsis":Z
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    if-nez p29, :cond_15

    :cond_a
    if-eqz v19, :cond_b

    if-eqz p29, :cond_15

    .line 1434
    :cond_b
    if-nez v19, :cond_c

    if-nez v14, :cond_16

    if-eqz p29, :cond_16

    :cond_c
    const/4 v15, 0x0

    .line 1436
    .local v15, "doEllipsis":Z
    :goto_8
    if-eqz v15, :cond_d

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v23

    move/from16 v10, p27

    move-object/from16 v11, p28

    move-object/from16 v13, p22

    .line 1437
    invoke-direct/range {v2 .. v13}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z[C)V

    .line 1443
    .end local v12    # "forceEllipsis":Z
    .end local v15    # "doEllipsis":Z
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1444
    return p8

    .line 1363
    .end local v14    # "currentLineIsTheLastVisibleOne":Z
    .end local v18    # "extra":I
    .end local v19    # "firstLine":Z
    .end local v24    # "lastLine":Z
    .end local v25    # "linedirs":Landroid/text/Layout$Directions;
    :cond_e
    const/16 v19, 0x0

    .restart local v19    # "firstLine":Z
    goto/16 :goto_2

    .line 1364
    :cond_f
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1365
    .restart local v14    # "currentLineIsTheLastVisibleOne":Z
    :cond_10
    const/16 v24, 0x0

    .restart local v24    # "lastLine":Z
    goto/16 :goto_4

    .line 1391
    :cond_11
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v0, v2

    move-wide/from16 v16, v0

    .line 1392
    .local v16, "ex":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_12

    .line 1393
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v16

    double-to-int v0, v2

    move/from16 v18, v0

    .restart local v18    # "extra":I
    goto/16 :goto_5

    .line 1395
    .end local v18    # "extra":I
    :cond_12
    move-wide/from16 v0, v16

    neg-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v18, v0

    .restart local v18    # "extra":I
    goto/16 :goto_5

    .line 1422
    .end local v16    # "ex":D
    .restart local v25    # "linedirs":Landroid/text/Layout$Directions;
    :cond_13
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    .line 1423
    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    .line 1422
    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v23

    goto/16 :goto_6

    .line 1429
    :cond_14
    const/4 v12, 0x0

    .restart local v12    # "forceEllipsis":Z
    goto/16 :goto_7

    .line 1433
    :cond_15
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-eq v0, v2, :cond_b

    .line 1432
    const/4 v15, 0x1

    goto :goto_8

    .line 1435
    :cond_16
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_17

    const/4 v2, 0x1

    :goto_9
    move v15, v2

    goto/16 :goto_8

    :cond_17
    const/4 v2, 0x0

    goto :goto_9
.end method


# virtual methods
.method generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 119
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;
    .param p2, "includepad"    # Z
    .param p3, "trackpad"    # Z

    .prologue
    .line 565
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 566
    .local v5, "source":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    move/from16 v72, v0

    .line 567
    .local v72, "bufStart":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    move/from16 v37, v0

    .line 568
    .local v37, "bufEnd":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v46, v0

    .line 569
    .local v46, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    move/from16 v101, v0

    .line 570
    .local v101, "outerWidth":I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 571
    .local v8, "textDir":Landroid/text/TextDirectionHeuristic;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    move/from16 v27, v0

    .line 572
    .local v27, "spacingmult":F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move/from16 v28, v0

    .line 573
    .local v28, "spacingadd":F
    move-object/from16 v0, p1

    iget v9, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    int-to-float v0, v9

    move/from16 v74, v0

    .line 574
    .local v74, "ellipsizedWidth":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v43, v0

    .line 575
    .local v43, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    new-instance v95, Landroid/text/StaticLayout$LineBreaks;

    invoke-direct/range {v95 .. v95}, Landroid/text/StaticLayout$LineBreaks;-><init>()V

    .line 577
    .local v95, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    const/4 v9, 0x4

    new-array v0, v9, [I

    move-object/from16 v108, v0

    .line 580
    .local v108, "spanEndCache":[I
    const/16 v9, 0x10

    new-array v0, v9, [I

    move-object/from16 v85, v0

    .line 581
    .local v85, "fmCache":[I
    invoke-virtual/range {v46 .. v46}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Landroid/text/StaticLayout$Builder;->-wrap1(Landroid/text/StaticLayout$Builder;Ljava/util/Locale;)V

    .line 584
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    .line 585
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    if-eqz v9, :cond_0

    .line 586
    const-string/jumbo v9, "ko"

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 587
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    .line 594
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    if-lez v9, :cond_4

    .line 595
    invoke-direct/range {p0 .. p3}, Landroid/text/StaticLayout;->generateForCJK(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 596
    return-void

    .line 588
    :cond_1
    const-string/jumbo v9, "ja"

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 589
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    goto :goto_0

    .line 590
    :cond_2
    const-string/jumbo v9, "my"

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string/jumbo v9, "ZG"

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 591
    :cond_3
    const/4 v9, 0x4

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    goto :goto_0

    .line 600
    :cond_4
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 602
    const/16 v26, 0x0

    .line 603
    .local v26, "v":I
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v27, v9

    if-nez v9, :cond_5

    const/4 v9, 0x0

    cmpl-float v9, v28, v9

    if-eqz v9, :cond_8

    :cond_5
    const/16 v33, 0x1

    .line 605
    .local v33, "needMultiply":Z
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v31, v0

    .line 606
    .local v31, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v30, 0x0

    .line 608
    .local v30, "chooseHtv":[I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    .line 610
    .local v4, "measured":Landroid/text/MeasuredText;
    const/16 v114, 0x0

    .line 611
    .local v114, "spanned":Landroid/text/Spanned;
    instance-of v9, v5, Landroid/text/Spanned;

    if-eqz v9, :cond_6

    move-object/from16 v114, v5

    .line 612
    check-cast v114, Landroid/text/Spanned;

    .line 615
    .end local v114    # "spanned":Landroid/text/Spanned;
    :cond_6
    move/from16 v6, v72

    .end local v30    # "chooseHtv":[I
    .local v6, "paraStart":I
    :goto_2
    move/from16 v0, v37

    if-gt v6, v0, :cond_35

    .line 616
    const/16 v9, 0xa

    move/from16 v0, v37

    invoke-static {v5, v9, v6, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    .line 617
    .local v7, "paraEnd":I
    if-gez v7, :cond_9

    .line 618
    move/from16 v7, v37

    .line 622
    :goto_3
    const/4 v15, 0x1

    .line 623
    .local v15, "firstWidthLineCount":I
    move/from16 v82, v101

    .line 624
    .local v82, "firstWidth":I
    move/from16 v103, v101

    .line 626
    .local v103, "restWidth":I
    const/16 v29, 0x0

    .line 628
    .local v29, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v114, :cond_b

    .line 630
    const-class v9, Landroid/text/style/LeadingMarginSpan;

    .line 629
    move-object/from16 v0, v114

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v106

    check-cast v106, [Landroid/text/style/LeadingMarginSpan;

    .line 631
    .local v106, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v89, 0x0

    .local v89, "i":I
    :goto_4
    move-object/from16 v0, v106

    array-length v9, v0

    move/from16 v0, v89

    if-ge v0, v9, :cond_a

    .line 632
    aget-object v97, v106, v89

    .line 633
    .local v97, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v9, v106, v89

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v82, v82, v9

    .line 634
    aget-object v9, v106, v89

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v103, v103, v9

    .line 638
    move-object/from16 v0, v97

    instance-of v9, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v9, :cond_7

    move-object/from16 v98, v97

    .line 639
    check-cast v98, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 641
    .local v98, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    invoke-interface/range {v98 .. v98}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v9

    .line 640
    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 631
    .end local v98    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    :cond_7
    add-int/lit8 v89, v89, 0x1

    goto :goto_4

    .line 603
    .end local v4    # "measured":Landroid/text/MeasuredText;
    .end local v6    # "paraStart":I
    .end local v7    # "paraEnd":I
    .end local v15    # "firstWidthLineCount":I
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v31    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v33    # "needMultiply":Z
    .end local v82    # "firstWidth":I
    .end local v89    # "i":I
    .end local v97    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v103    # "restWidth":I
    .end local v106    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_8
    const/16 v33, 0x0

    .restart local v33    # "needMultiply":Z
    goto :goto_1

    .line 620
    .restart local v4    # "measured":Landroid/text/MeasuredText;
    .restart local v6    # "paraStart":I
    .restart local v7    # "paraEnd":I
    .restart local v31    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 645
    .restart local v15    # "firstWidthLineCount":I
    .restart local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v82    # "firstWidth":I
    .restart local v89    # "i":I
    .restart local v103    # "restWidth":I
    .restart local v106    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_a
    const-class v9, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v114

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v29, [Landroid/text/style/LineHeightSpan;

    .line 647
    .local v29, "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v29

    array-length v9, v0

    if-nez v9, :cond_c

    .line 648
    const/16 v29, 0x0

    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v89    # "i":I
    .end local v106    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_b
    move-object/from16 v9, p1

    .line 672
    invoke-virtual/range {v4 .. v9}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 673
    iget-object v12, v4, Landroid/text/MeasuredText;->mChars:[C

    .line 674
    .local v12, "chs":[C
    iget-object v0, v4, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v41, v0

    .line 675
    .local v41, "widths":[F
    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v34, v0

    .line 676
    .local v34, "chdirs":[B
    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v35, v0

    .line 677
    .local v35, "dir":I
    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v36, v0

    .line 680
    .local v36, "easy":Z
    const/16 v17, 0x0

    .line 681
    .local v17, "variableTabStops":[I
    if-eqz v114, :cond_11

    .line 683
    const-class v9, Landroid/text/style/TabStopSpan;

    .line 682
    move-object/from16 v0, v114

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v116

    check-cast v116, [Landroid/text/style/TabStopSpan;

    .line 684
    .local v116, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v116

    array-length v9, v0

    if-lez v9, :cond_11

    .line 685
    move-object/from16 v0, v116

    array-length v9, v0

    new-array v0, v9, [I

    move-object/from16 v117, v0

    .line 686
    .local v117, "stops":[I
    const/16 v89, 0x0

    .restart local v89    # "i":I
    :goto_5
    move-object/from16 v0, v116

    array-length v9, v0

    move/from16 v0, v89

    if-ge v0, v9, :cond_10

    .line 687
    aget-object v9, v116, v89

    invoke-interface {v9}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v9

    aput v9, v117, v89

    .line 686
    add-int/lit8 v89, v89, 0x1

    goto :goto_5

    .line 650
    .end local v12    # "chs":[C
    .end local v17    # "variableTabStops":[I
    .end local v34    # "chdirs":[B
    .end local v35    # "dir":I
    .end local v36    # "easy":Z
    .end local v41    # "widths":[F
    .end local v116    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v117    # "stops":[I
    .restart local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v106    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_c
    if-eqz v30, :cond_d

    .line 651
    move-object/from16 v0, v30

    array-length v9, v0

    move-object/from16 v0, v29

    array-length v10, v0

    if-ge v9, v10, :cond_e

    .line 652
    :cond_d
    move-object/from16 v0, v29

    array-length v9, v0

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v30

    .line 655
    :cond_e
    const/16 v89, 0x0

    :goto_6
    move-object/from16 v0, v29

    array-length v9, v0

    move/from16 v0, v89

    if-ge v0, v9, :cond_b

    .line 656
    aget-object v9, v29, v89

    move-object/from16 v0, v114

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v100

    .line 658
    .local v100, "o":I
    move/from16 v0, v100

    if-ge v0, v6, :cond_f

    .line 662
    move-object/from16 v0, p0

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    aput v9, v30, v89

    .line 655
    :goto_7
    add-int/lit8 v89, v89, 0x1

    goto :goto_6

    .line 666
    :cond_f
    aput v26, v30, v89

    goto :goto_7

    .line 689
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v100    # "o":I
    .end local v106    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .restart local v12    # "chs":[C
    .restart local v17    # "variableTabStops":[I
    .restart local v34    # "chdirs":[B
    .restart local v35    # "dir":I
    .restart local v36    # "easy":Z
    .restart local v41    # "widths":[F
    .restart local v116    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v117    # "stops":[I
    :cond_10
    move-object/from16 v0, v117

    array-length v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, v117

    invoke-static {v0, v10, v9}, Ljava/util/Arrays;->sort([III)V

    .line 690
    move-object/from16 v17, v117

    .line 694
    .end local v17    # "variableTabStops":[I
    .end local v89    # "i":I
    .end local v116    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v117    # "stops":[I
    :cond_11
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    sub-int v13, v7, v6

    .line 695
    move/from16 v0, v82

    int-to-float v14, v0

    move/from16 v0, v103

    int-to-float v0, v0

    move/from16 v16, v0

    .line 696
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    move/from16 v20, v0

    const/16 v18, 0x14

    .line 694
    invoke-static/range {v10 .. v20}, Landroid/text/StaticLayout;->nSetupParagraph(J[CIFIF[IIII)V

    .line 697
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_12

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v9, :cond_18

    .line 701
    :cond_12
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_13

    const/16 v93, 0x0

    .line 702
    .local v93, "leftLen":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_14

    const/16 v104, 0x0

    .line 703
    .local v104, "rightLen":I
    :goto_9
    move/from16 v0, v93

    move/from16 v1, v104

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int/2addr v9, v10

    const/4 v10, 0x1

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v91

    .line 704
    .local v91, "indentsLen":I
    move/from16 v0, v91

    new-array v0, v0, [I

    move-object/from16 v90, v0

    .line 705
    .local v90, "indents":[I
    const/16 v89, 0x0

    .restart local v89    # "i":I
    :goto_a
    move/from16 v0, v89

    move/from16 v1, v91

    if-ge v0, v1, :cond_17

    .line 706
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_15

    const/16 v94, 0x0

    .line 708
    .local v94, "leftMargin":I
    :goto_b
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_16

    const/16 v105, 0x0

    .line 710
    .local v105, "rightMargin":I
    :goto_c
    add-int v9, v94, v105

    aput v9, v90, v89

    .line 705
    add-int/lit8 v89, v89, 0x1

    goto :goto_a

    .line 701
    .end local v89    # "i":I
    .end local v90    # "indents":[I
    .end local v91    # "indentsLen":I
    .end local v93    # "leftLen":I
    .end local v94    # "leftMargin":I
    .end local v104    # "rightLen":I
    .end local v105    # "rightMargin":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v0, v9

    move/from16 v93, v0

    .restart local v93    # "leftLen":I
    goto :goto_8

    .line 702
    :cond_14
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v0, v9

    move/from16 v104, v0

    goto :goto_9

    .line 707
    .restart local v89    # "i":I
    .restart local v90    # "indents":[I
    .restart local v91    # "indentsLen":I
    .restart local v104    # "rightLen":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v89

    add-int/lit8 v11, v93, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v94, v9, v10

    .restart local v94    # "leftMargin":I
    goto :goto_b

    .line 709
    :cond_16
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v89

    add-int/lit8 v11, v104, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v105, v9, v10

    goto :goto_c

    .line 712
    .end local v94    # "leftMargin":I
    :cond_17
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v90

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    .line 718
    .end local v89    # "i":I
    .end local v90    # "indents":[I
    .end local v91    # "indentsLen":I
    .end local v93    # "leftLen":I
    .end local v104    # "rightLen":I
    :cond_18
    const/16 v86, 0x0

    .line 719
    .local v86, "fmCacheCount":I
    const/16 v109, 0x0

    .line 720
    .local v109, "spanEndCacheCount":I
    move/from16 v113, v6

    .local v113, "spanStart":I
    :goto_d
    move/from16 v0, v113

    if-ge v0, v7, :cond_1c

    .line 721
    mul-int/lit8 v9, v86, 0x4

    move-object/from16 v0, v85

    array-length v10, v0

    if-lt v9, v10, :cond_19

    .line 722
    mul-int/lit8 v9, v86, 0x4

    mul-int/lit8 v9, v9, 0x2

    new-array v0, v9, [I

    move-object/from16 v88, v0

    .line 723
    .local v88, "grow":[I
    mul-int/lit8 v9, v86, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v85

    move-object/from16 v1, v88

    invoke-static {v0, v10, v1, v11, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 724
    move-object/from16 v85, v88

    .line 727
    .end local v88    # "grow":[I
    :cond_19
    move-object/from16 v0, v108

    array-length v9, v0

    move/from16 v0, v109

    if-lt v0, v9, :cond_1a

    .line 728
    mul-int/lit8 v9, v109, 0x2

    new-array v0, v9, [I

    move-object/from16 v88, v0

    .line 729
    .restart local v88    # "grow":[I
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v108

    move-object/from16 v1, v88

    move/from16 v2, v109

    invoke-static {v0, v9, v1, v10, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 730
    move-object/from16 v108, v88

    .line 733
    .end local v88    # "grow":[I
    :cond_1a
    if-nez v114, :cond_1b

    .line 734
    move/from16 v107, v7

    .line 735
    .local v107, "spanEnd":I
    sub-int v112, v7, v113

    .line 736
    .local v112, "spanLen":I
    move-object/from16 v0, v46

    move/from16 v1, v112

    move-object/from16 v2, v31

    invoke-virtual {v4, v0, v1, v2}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 749
    :goto_e
    mul-int/lit8 v9, v86, 0x4

    add-int/lit8 v9, v9, 0x0

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    aput v10, v85, v9

    .line 750
    mul-int/lit8 v9, v86, 0x4

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    aput v10, v85, v9

    .line 751
    mul-int/lit8 v9, v86, 0x4

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    aput v10, v85, v9

    .line 752
    mul-int/lit8 v9, v86, 0x4

    add-int/lit8 v9, v9, 0x3

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    aput v10, v85, v9

    .line 753
    add-int/lit8 v86, v86, 0x1

    .line 755
    aput v107, v108, v109

    .line 756
    add-int/lit8 v109, v109, 0x1

    .line 720
    move/from16 v113, v107

    goto :goto_d

    .line 739
    .end local v107    # "spanEnd":I
    .end local v112    # "spanLen":I
    :cond_1b
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    .line 738
    move-object/from16 v0, v114

    move/from16 v1, v113

    invoke-interface {v0, v1, v7, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v107

    .line 740
    .restart local v107    # "spanEnd":I
    sub-int v112, v107, v113

    .line 742
    .restart local v112    # "spanLen":I
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v114

    move/from16 v1, v113

    move/from16 v2, v107

    invoke-interface {v0, v1, v2, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v115

    check-cast v115, [Landroid/text/style/MetricAffectingSpan;

    .line 743
    .local v115, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v115

    move-object/from16 v1, v114

    invoke-static {v0, v1, v9}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v115

    .end local v115    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v115, [Landroid/text/style/MetricAffectingSpan;

    .line 744
    .restart local v115    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v46

    move-object/from16 v1, v115

    move/from16 v2, v112

    move-object/from16 v3, v31

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto :goto_e

    .line 759
    .end local v107    # "spanEnd":I
    .end local v112    # "spanLen":I
    .end local v115    # "spans":[Landroid/text/style/MetricAffectingSpan;
    :cond_1c
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v41

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nGetWidths(J[F)V

    .line 760
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v95

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v21, v0

    .line 761
    move-object/from16 v0, v95

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v95

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v95

    iget-object v9, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    array-length v0, v9

    move/from16 v24, v0

    move-object/from16 v20, v95

    .line 760
    invoke-static/range {v18 .. v24}, Landroid/text/StaticLayout;->nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I

    move-result v78

    .line 763
    .local v78, "breakCount":I
    move-object/from16 v0, v95

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v80, v0

    .line 764
    .local v80, "breaks":[I
    move-object/from16 v0, v95

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v96, v0

    .line 765
    .local v96, "lineWidths":[F
    move-object/from16 v0, v95

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v84, v0

    .line 767
    .local v84, "flags":[I
    const/16 v89, 0x0

    .restart local v89    # "i":I
    :goto_f
    add-int/lit8 v9, v78, -0x1

    move/from16 v0, v89

    if-ge v0, v9, :cond_1e

    .line 768
    aget v99, v80, v89

    .line 769
    .local v99, "nextPos":I
    :goto_10
    add-int v9, v6, v99

    if-ge v9, v7, :cond_1d

    aget v9, v41, v99

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1d

    .line 770
    add-int/lit8 v99, v99, 0x1

    goto :goto_10

    .line 772
    :cond_1d
    aput v99, v80, v89

    .line 773
    aget v9, v80, v89

    if-lt v9, v7, :cond_20

    .line 774
    add-int/lit8 v78, v78, -0x1

    .line 779
    .end local v99    # "nextPos":I
    :cond_1e
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int v102, v9, v10

    .line 780
    .local v102, "remainingLineCount":I
    if-eqz v43, :cond_24

    .line 781
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v43

    if-eq v0, v9, :cond_21

    .line 782
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_23

    .line 783
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v43

    if-eq v0, v9, :cond_22

    const/16 v81, 0x1

    .line 784
    .local v81, "ellipsisMayBeApplied":Z
    :goto_11
    if-lez v102, :cond_28

    move/from16 v0, v102

    move/from16 v1, v78

    if-ge v0, v1, :cond_28

    if-eqz v81, :cond_28

    .line 787
    const/16 v118, 0x0

    .line 788
    .local v118, "width":F
    const/16 v83, 0x0

    .line 789
    .local v83, "flag":I
    add-int/lit8 v89, v102, -0x1

    :goto_12
    move/from16 v0, v89

    move/from16 v1, v78

    if-ge v0, v1, :cond_27

    .line 790
    add-int/lit8 v9, v78, -0x1

    move/from16 v0, v89

    if-ne v0, v9, :cond_25

    .line 791
    aget v9, v96, v89

    add-float v118, v118, v9

    .line 797
    :cond_1f
    aget v9, v84, v89

    const/high16 v10, 0x20000000

    and-int/2addr v9, v10

    or-int v83, v83, v9

    .line 789
    add-int/lit8 v89, v89, 0x1

    goto :goto_12

    .line 767
    .end local v81    # "ellipsisMayBeApplied":Z
    .end local v83    # "flag":I
    .end local v102    # "remainingLineCount":I
    .end local v118    # "width":F
    .restart local v99    # "nextPos":I
    :cond_20
    add-int/lit8 v89, v89, 0x1

    goto :goto_f

    .line 781
    .end local v99    # "nextPos":I
    .restart local v102    # "remainingLineCount":I
    :cond_21
    const/16 v81, 0x1

    .restart local v81    # "ellipsisMayBeApplied":Z
    goto :goto_11

    .line 783
    .end local v81    # "ellipsisMayBeApplied":Z
    :cond_22
    const/16 v81, 0x0

    .restart local v81    # "ellipsisMayBeApplied":Z
    goto :goto_11

    .line 782
    .end local v81    # "ellipsisMayBeApplied":Z
    :cond_23
    const/16 v81, 0x0

    .restart local v81    # "ellipsisMayBeApplied":Z
    goto :goto_11

    .line 780
    .end local v81    # "ellipsisMayBeApplied":Z
    :cond_24
    const/16 v81, 0x0

    .restart local v81    # "ellipsisMayBeApplied":Z
    goto :goto_11

    .line 793
    .restart local v83    # "flag":I
    .restart local v118    # "width":F
    :cond_25
    if-nez v89, :cond_26

    const/16 v92, 0x0

    .local v92, "j":I
    :goto_13
    aget v9, v80, v89

    move/from16 v0, v92

    if-ge v0, v9, :cond_1f

    .line 794
    aget v9, v41, v92

    add-float v118, v118, v9

    .line 793
    add-int/lit8 v92, v92, 0x1

    goto :goto_13

    .end local v92    # "j":I
    :cond_26
    add-int/lit8 v9, v89, -0x1

    aget v92, v80, v9

    .restart local v92    # "j":I
    goto :goto_13

    .line 800
    .end local v92    # "j":I
    :cond_27
    add-int/lit8 v9, v102, -0x1

    add-int/lit8 v10, v78, -0x1

    aget v10, v80, v10

    aput v10, v80, v9

    .line 801
    add-int/lit8 v9, v102, -0x1

    aput v118, v96, v9

    .line 802
    add-int/lit8 v9, v102, -0x1

    aput v83, v84, v9

    .line 804
    move/from16 v78, v102

    .line 808
    .end local v83    # "flag":I
    .end local v118    # "width":F
    :cond_28
    move/from16 v20, v6

    .line 810
    .local v20, "here":I
    const/16 v24, 0x0

    .local v24, "fmTop":I
    const/16 v25, 0x0

    .local v25, "fmBottom":I
    const/16 v22, 0x0

    .local v22, "fmAscent":I
    const/16 v23, 0x0

    .line 811
    .local v23, "fmDescent":I
    const/16 v87, 0x0

    .line 812
    .local v87, "fmCacheIndex":I
    const/16 v110, 0x0

    .line 813
    .local v110, "spanEndCacheIndex":I
    const/16 v79, 0x0

    .line 814
    .local v79, "breakIndex":I
    move/from16 v113, v6

    move/from16 v111, v110

    .end local v110    # "spanEndCacheIndex":I
    .local v111, "spanEndCacheIndex":I
    :goto_14
    move/from16 v0, v113

    if-ge v0, v7, :cond_34

    .line 816
    add-int/lit8 v110, v111, 0x1

    .end local v111    # "spanEndCacheIndex":I
    .restart local v110    # "spanEndCacheIndex":I
    aget v107, v108, v111

    .line 819
    .restart local v107    # "spanEnd":I
    mul-int/lit8 v9, v87, 0x4

    add-int/lit8 v9, v9, 0x0

    aget v9, v85, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 820
    mul-int/lit8 v9, v87, 0x4

    add-int/lit8 v9, v9, 0x1

    aget v9, v85, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 821
    mul-int/lit8 v9, v87, 0x4

    add-int/lit8 v9, v9, 0x2

    aget v9, v85, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 822
    mul-int/lit8 v9, v87, 0x4

    add-int/lit8 v9, v9, 0x3

    aget v9, v85, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 823
    add-int/lit8 v87, v87, 0x1

    .line 825
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, v24

    if-ge v9, v0, :cond_29

    .line 826
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v24, v0

    .line 828
    :cond_29
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v0, v22

    if-ge v9, v0, :cond_2a

    .line 829
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    .line 831
    :cond_2a
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, v23

    if-le v9, v0, :cond_2b

    .line 832
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v23, v0

    .line 834
    :cond_2b
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v0, v25

    if-le v9, v0, :cond_2c

    .line 835
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v25, v0

    .line 839
    :cond_2c
    :goto_15
    move/from16 v0, v79

    move/from16 v1, v78

    if-ge v0, v1, :cond_2d

    aget v9, v80, v79

    add-int/2addr v9, v6

    move/from16 v0, v113

    if-ge v9, v0, :cond_2d

    .line 840
    add-int/lit8 v79, v79, 0x1

    goto :goto_15

    .line 843
    :cond_2d
    move/from16 v0, v79

    move/from16 v1, v78

    if-ge v0, v1, :cond_33

    aget v9, v80, v79

    add-int/2addr v9, v6

    move/from16 v0, v107

    if-gt v9, v0, :cond_33

    .line 844
    aget v9, v80, v79

    add-int v21, v6, v9

    .line 846
    .local v21, "endPos":I
    move/from16 v0, v21

    move/from16 v1, v37

    if-ge v0, v1, :cond_30

    const/16 v47, 0x1

    .line 849
    .local v47, "moreChars":Z
    :goto_16
    move/from16 v44, v74

    .line 851
    .local v44, "ellipsizedWidth_span":F
    if-nez v79, :cond_31

    move/from16 v0, v82

    move/from16 v1, v101

    if-eq v0, v1, :cond_31

    .line 852
    sub-int v9, v101, v82

    int-to-float v9, v9

    sub-float v44, v74, v9

    .line 856
    :cond_2e
    :goto_17
    const/4 v9, 0x0

    cmpg-float v9, v44, v9

    if-gez v9, :cond_2f

    move/from16 v44, v74

    .line 861
    :cond_2f
    aget v32, v84, v79

    .line 864
    aget v45, v96, v79

    move-object/from16 v18, p0

    move-object/from16 v19, v5

    move/from16 v38, p2

    move/from16 v39, p3

    move-object/from16 v40, v12

    move/from16 v42, v6

    .line 859
    invoke-direct/range {v18 .. v47}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v26

    .line 866
    move/from16 v0, v21

    move/from16 v1, v107

    if-ge v0, v1, :cond_32

    .line 868
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v24, v0

    .line 869
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v25, v0

    .line 870
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    .line 871
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v23, v0

    .line 876
    :goto_18
    move/from16 v20, v21

    .line 877
    add-int/lit8 v79, v79, 0x1

    .line 879
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_2d

    .line 880
    return-void

    .line 846
    .end local v44    # "ellipsizedWidth_span":F
    .end local v47    # "moreChars":Z
    :cond_30
    const/16 v47, 0x0

    .restart local v47    # "moreChars":Z
    goto :goto_16

    .line 853
    .restart local v44    # "ellipsizedWidth_span":F
    :cond_31
    if-eqz v79, :cond_2e

    move/from16 v0, v103

    move/from16 v1, v101

    if-eq v0, v1, :cond_2e

    .line 854
    sub-int v9, v101, v103

    int-to-float v9, v9

    sub-float v44, v74, v9

    goto :goto_17

    .line 873
    :cond_32
    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v24, 0x0

    goto :goto_18

    .line 814
    .end local v21    # "endPos":I
    .end local v44    # "ellipsizedWidth_span":F
    .end local v47    # "moreChars":Z
    :cond_33
    move/from16 v113, v107

    move/from16 v111, v110

    .end local v110    # "spanEndCacheIndex":I
    .restart local v111    # "spanEndCacheIndex":I
    goto/16 :goto_14

    .line 885
    .end local v107    # "spanEnd":I
    :cond_34
    move/from16 v0, v37

    if-ne v7, v0, :cond_38

    .line 889
    .end local v7    # "paraEnd":I
    .end local v12    # "chs":[C
    .end local v15    # "firstWidthLineCount":I
    .end local v20    # "here":I
    .end local v22    # "fmAscent":I
    .end local v23    # "fmDescent":I
    .end local v24    # "fmTop":I
    .end local v25    # "fmBottom":I
    .end local v34    # "chdirs":[B
    .end local v35    # "dir":I
    .end local v36    # "easy":Z
    .end local v41    # "widths":[F
    .end local v78    # "breakCount":I
    .end local v79    # "breakIndex":I
    .end local v80    # "breaks":[I
    .end local v81    # "ellipsisMayBeApplied":Z
    .end local v82    # "firstWidth":I
    .end local v84    # "flags":[I
    .end local v86    # "fmCacheCount":I
    .end local v87    # "fmCacheIndex":I
    .end local v89    # "i":I
    .end local v96    # "lineWidths":[F
    .end local v102    # "remainingLineCount":I
    .end local v103    # "restWidth":I
    .end local v109    # "spanEndCacheCount":I
    .end local v111    # "spanEndCacheIndex":I
    .end local v113    # "spanStart":I
    :cond_35
    move/from16 v0, v37

    move/from16 v1, v72

    if-eq v0, v1, :cond_36

    add-int/lit8 v9, v37, -0x1

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_37

    .line 890
    :cond_36
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v9, v10, :cond_37

    move-object/from16 v48, v4

    move-object/from16 v49, v5

    move/from16 v50, v37

    move/from16 v51, v37

    move-object/from16 v52, v8

    move-object/from16 v53, p1

    .line 893
    invoke-virtual/range {v48 .. v53}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 895
    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 898
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v52, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v53, v0

    .line 899
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v54, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v55, v0

    .line 903
    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v64, v0

    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v65, v0

    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v66, v0

    .line 906
    const/16 v75, 0x0

    .line 901
    const/16 v59, 0x0

    .line 902
    const/16 v60, 0x0

    const/16 v62, 0x0

    .line 904
    const/16 v70, 0x0

    .line 905
    const/16 v71, 0x0

    .line 906
    const/16 v77, 0x0

    move-object/from16 v48, p0

    move-object/from16 v49, v5

    move/from16 v50, v37

    move/from16 v51, v37

    move/from16 v56, v26

    move/from16 v57, v27

    move/from16 v58, v28

    move-object/from16 v61, v31

    move/from16 v63, v33

    move/from16 v67, v37

    move/from16 v68, p2

    move/from16 v69, p3

    move-object/from16 v73, v43

    move-object/from16 v76, v46

    .line 897
    invoke-direct/range {v48 .. v77}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v26

    .line 564
    :cond_37
    return-void

    .line 615
    .restart local v7    # "paraEnd":I
    .restart local v12    # "chs":[C
    .restart local v15    # "firstWidthLineCount":I
    .restart local v20    # "here":I
    .restart local v22    # "fmAscent":I
    .restart local v23    # "fmDescent":I
    .restart local v24    # "fmTop":I
    .restart local v25    # "fmBottom":I
    .restart local v34    # "chdirs":[B
    .restart local v35    # "dir":I
    .restart local v36    # "easy":Z
    .restart local v41    # "widths":[F
    .restart local v78    # "breakCount":I
    .restart local v79    # "breakIndex":I
    .restart local v80    # "breaks":[I
    .restart local v81    # "ellipsisMayBeApplied":Z
    .restart local v82    # "firstWidth":I
    .restart local v84    # "flags":[I
    .restart local v86    # "fmCacheCount":I
    .restart local v87    # "fmCacheIndex":I
    .restart local v89    # "i":I
    .restart local v96    # "lineWidths":[F
    .restart local v102    # "remainingLineCount":I
    .restart local v103    # "restWidth":I
    .restart local v109    # "spanEndCacheCount":I
    .restart local v111    # "spanEndCacheIndex":I
    .restart local v113    # "spanStart":I
    :cond_38
    move v6, v7

    goto/16 :goto_2
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 1646
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1691
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 1692
    const/4 v0, 0x0

    return v0

    .line 1695
    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1700
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 1701
    const/4 v0, 0x0

    return v0

    .line 1704
    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1709
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHyphen(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1654
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 5
    .param p1, "line"    # I
    .param p2, "align"    # Landroid/text/Layout$Alignment;

    .prologue
    const/4 v3, 0x0

    .line 1662
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_1

    .line 1663
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v2, :cond_0

    .line 1664
    return v3

    .line 1666
    :cond_0
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v2, v2, v3

    return v2

    .line 1668
    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_3

    .line 1669
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v2, :cond_2

    .line 1670
    return v3

    .line 1672
    :cond_2
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v2, v2, v3

    neg-int v2, v2

    return v2

    .line 1674
    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_6

    .line 1675
    const/4 v0, 0x0

    .line 1676
    .local v0, "left":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v2, :cond_4

    .line 1677
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v0, v2, v3

    .line 1679
    :cond_4
    const/4 v1, 0x0

    .line 1680
    .local v1, "right":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v2, :cond_5

    .line 1681
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v1, v2, v3

    .line 1683
    :cond_5
    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    return v2

    .line 1685
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unhandled alignment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getLineContainsTab(I)Z
    .locals 3
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x0

    .line 1631
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x0

    aget v1, v1, v2

    const/high16 v2, 0x20000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 1606
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1616
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1636
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 7
    .param p1, "vertical"    # I

    .prologue
    const/4 v6, 0x0

    .line 1585
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1586
    .local v1, "high":I
    const/4 v3, -0x1

    .line 1588
    .local v3, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 1589
    .local v2, "lines":[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 1590
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 1591
    .local v0, "guess":I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 1592
    move v1, v0

    goto :goto_0

    .line 1594
    :cond_0
    move v3, v0

    goto :goto_0

    .line 1597
    .end local v0    # "guess":I
    :cond_1
    if-gez v3, :cond_2

    .line 1598
    return v6

    .line 1600
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1621
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1611
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1626
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 1641
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
