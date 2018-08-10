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

.field private static final HYPHEN_MASK:I = 0xff

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

.field private mEllipsized:Z

.field private mEllipsizedWidth:I

.field private mLeftIndents:[I

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaxLineHeight:I

.field private mMaximumVisibleLineCount:I

.field private mRightIndents:[I

.field private mTopPadding:I


# direct methods
.method static synthetic -wrap0(JJJIIZ)F
    .locals 2

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

    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddMeasuredRun(JII[F)V

    return-void
.end method

.method static synthetic -wrap3(JIIF)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddReplacementRun(JIIF)V

    return-void
.end method

.method static synthetic -wrap4(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFinishBuilder(J)V

    return-void
.end method

.method static synthetic -wrap5(J)V
    .locals 0

    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFreeBuilder(J)V

    return-void
.end method

.method static synthetic -wrap6(J[I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    return-void
.end method

.method static synthetic -wrap7(JLjava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nSetLocale(JLjava/lang/String;J)V

    return-void
.end method

.method private constructor <init>(Landroid/text/StaticLayout$Builder;)V
    .locals 8

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    :goto_0
    iget-object v2, p1, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iget v3, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    iget-object v4, p1, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    iget v5, p1, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    iget v6, p1, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Layout$Ellipsizer;

    iput-object p0, v7, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    iput v0, v7, Landroid/text/Layout$Ellipsizer;->mWidth:I

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, v7, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v0, 0x6

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    :goto_1
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v0, p1, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget v0, p1, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout;->setJustificationMode(I)V

    iget-boolean v0, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iget-boolean v1, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    return-void

    :cond_0
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/text/Layout$SpannedEllipsizer;

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/text/Layout$Ellipsizer;

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    iget v0, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    iput v3, p0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    const/4 v0, -0x1

    iput v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v0, 0x6

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12

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

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14

    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

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

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14

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

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 12

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

    const/4 v2, 0x0

    iput v2, p0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    const/4 v2, -0x1

    iput v2, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    const v2, 0x7fffffff

    iput v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

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

    if-eqz p11, :cond_2

    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Landroid/text/Layout$Ellipsizer;

    iput-object p0, v11, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    move/from16 v0, p12

    iput v0, v11, Landroid/text/Layout$Ellipsizer;->mWidth:I

    move-object/from16 v0, p11

    iput-object v0, v11, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    const/4 v2, 0x6

    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    :goto_1
    const-class v2, Landroid/text/Layout$Directions;

    iget v3, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/Layout$Directions;

    iput-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget-boolean v2, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iget-boolean v3, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p0, v10, v2, v3}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    invoke-static {v10}, Landroid/text/StaticLayout$Builder;->-wrap0(Landroid/text/StaticLayout$Builder;)V

    return-void

    :cond_0
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v3, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v3, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x4

    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10

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

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11

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

    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z[C)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/text/StaticLayout;->getTotalInsets(I)F

    move-result v17

    sub-float p5, p5, v17

    cmpg-float v17, p8, p5

    if-gtz v17, :cond_0

    xor-int/lit8 v17, p10, 0x1

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    const/16 v19, 0x0

    aput v19, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x5

    const/16 v19, 0x0

    aput v19, v17, v18

    return-void

    :cond_0
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    sget-object v17, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    :goto_0
    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, p9

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    const/4 v5, 0x0

    const/4 v4, 0x0

    sub-int v10, p2, p1

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    const/4 v15, 0x0

    move v7, v10

    :goto_1
    if-lez v7, :cond_3

    add-int/lit8 v17, v7, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_2

    :goto_2
    if-ge v7, v10, :cond_3

    add-int v17, v7, p1

    sub-int v17, v17, p4

    aget v17, p3, v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    sget-object v17, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    goto :goto_0

    :cond_2
    add-float v15, v15, v16

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    move v4, v7

    :cond_4
    :goto_3
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/text/StaticLayout;->mEllipsized:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x4

    aput v5, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v18, v0

    mul-int v18, v18, p7

    add-int/lit8 v18, v18, 0x5

    aput v4, v17, v18

    return-void

    :cond_5
    const-string/jumbo v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_4

    const-string/jumbo v17, "StaticLayout"

    const-string/jumbo v18, "Start Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    sget-object v17, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_9

    :cond_7
    const/4 v15, 0x0

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v10, :cond_8

    add-int v17, v7, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    add-float v17, v16, v15

    add-float v17, v17, v6

    cmpl-float v17, v17, p5

    if-lez v17, :cond_a

    :cond_8
    move v5, v7

    sub-int v4, v10, v7

    if-eqz p10, :cond_4

    if-nez v4, :cond_4

    if-lez v10, :cond_4

    add-int/lit8 v5, v10, -0x1

    :goto_5
    if-lez v5, :cond_b

    add-int v17, v5, p1

    sub-int v17, v17, p4

    aget v17, p3, v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_b

    if-eqz p11, :cond_b

    add-int v17, v5, p1

    sub-int v17, v17, p4

    aget-char v17, p11, v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_9
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    const/4 v11, 0x0

    const/4 v14, 0x0

    const/4 v9, 0x0

    move v13, v10

    sub-float v17, p5, v6

    const/high16 v18, 0x40000000    # 2.0f

    div-float v12, v17, v18

    move v13, v10

    :goto_6
    if-lez v13, :cond_d

    add-int/lit8 v17, v13, -0x1

    add-int v17, v17, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    add-float v17, v16, v14

    cmpl-float v17, v17, v12

    if-lez v17, :cond_c

    :goto_7
    if-ge v13, v10, :cond_d

    add-int v17, v13, p1

    sub-int v17, v17, p4

    aget v17, p3, v17

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-nez v17, :cond_d

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_a
    add-float v15, v15, v16

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_4

    :cond_b
    sub-int v4, v10, v5

    goto/16 :goto_3

    :cond_c
    add-float v14, v14, v16

    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    :cond_d
    sub-float v17, p5, v6

    sub-float v8, v17, v14

    const/4 v9, 0x0

    :goto_8
    if-ge v9, v13, :cond_e

    add-int v17, v9, p1

    sub-int v17, v17, p4

    aget v16, p3, v17

    add-float v17, v16, v11

    cmpl-float v17, v17, v8

    if-lez v17, :cond_f

    :cond_e
    move v5, v9

    sub-int v4, v13, v9

    goto/16 :goto_3

    :cond_f
    add-float v11, v11, v16

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_10
    const-string/jumbo v17, "StaticLayout"

    const/16 v18, 0x5

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_4

    const-string/jumbo v17, "StaticLayout"

    const-string/jumbo v18, "Middle Ellipsis only supported with one line"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private generateForCJK(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 149

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    move/from16 v99, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    move/from16 v37, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v46, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    move/from16 v135, v0

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v9, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    int-to-float v0, v9

    move/from16 v44, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v43, v0

    invoke-virtual/range {v46 .. v46}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Landroid/text/StaticLayout$Builder;->-wrap1(Landroid/text/StaticLayout$Builder;Ljava/util/Locale;)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    const/16 v26, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v27, v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    cmpl-float v9, v28, v9

    if-eqz v9, :cond_3

    :cond_0
    const/16 v33, 0x1

    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v31, v0

    const/16 v30, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    const/16 v143, 0x0

    instance-of v9, v5, Landroid/text/Spanned;

    if-eqz v9, :cond_1

    move-object/from16 v143, v5

    check-cast v143, Landroid/text/Spanned;

    :cond_1
    move/from16 v6, v99

    :goto_1
    move/from16 v0, v37

    if-gt v6, v0, :cond_42

    const/16 v9, 0xa

    move/from16 v0, v37

    invoke-static {v5, v9, v6, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    if-gez v7, :cond_4

    move/from16 v7, v37

    :goto_2
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v109, v9, 0x1

    const/4 v15, 0x1

    move/from16 v108, v135

    move/from16 v136, v135

    const/16 v29, 0x0

    if-eqz v143, :cond_6

    const-class v9, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v143

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v139

    check-cast v139, [Landroid/text/style/LeadingMarginSpan;

    const/16 v117, 0x0

    :goto_3
    move-object/from16 v0, v139

    array-length v9, v0

    move/from16 v0, v117

    if-ge v0, v9, :cond_5

    aget-object v125, v139, v117

    aget-object v9, v139, v117

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v108, v108, v9

    aget-object v9, v139, v117

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v136, v136, v9

    move-object/from16 v0, v125

    instance-of v9, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v9, :cond_2

    move-object/from16 v126, v125

    check-cast v126, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    move-object/from16 v0, v143

    move-object/from16 v1, v126

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v127

    invoke-interface/range {v126 .. v126}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v9

    add-int v9, v9, v127

    move/from16 v0, v109

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v109

    invoke-interface/range {v126 .. v126}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v9

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    :cond_2
    add-int/lit8 v117, v117, 0x1

    goto :goto_3

    :cond_3
    const/16 v33, 0x0

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    const-class v9, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v143

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v29

    array-length v9, v0

    if-nez v9, :cond_7

    const/16 v29, 0x0

    :cond_6
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    iget-object v12, v4, Landroid/text/MeasuredText;->mChars:[C

    iget-object v0, v4, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v41, v0

    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v34, v0

    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v35, v0

    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v36, v0

    const/16 v17, 0x0

    if-eqz v143, :cond_c

    const-class v9, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v143

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v145

    check-cast v145, [Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v145

    array-length v9, v0

    if-lez v9, :cond_c

    move-object/from16 v0, v145

    array-length v9, v0

    new-array v0, v9, [I

    move-object/from16 v146, v0

    const/16 v117, 0x0

    :goto_4
    move-object/from16 v0, v145

    array-length v9, v0

    move/from16 v0, v117

    if-ge v0, v9, :cond_b

    aget-object v9, v145, v117

    invoke-interface {v9}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v9

    aput v9, v146, v117

    add-int/lit8 v117, v117, 0x1

    goto :goto_4

    :cond_7
    if-eqz v30, :cond_8

    move-object/from16 v0, v30

    array-length v9, v0

    move-object/from16 v0, v29

    array-length v10, v0

    if-ge v9, v10, :cond_9

    :cond_8
    move-object/from16 v0, v29

    array-length v9, v0

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v30

    :cond_9
    const/16 v117, 0x0

    :goto_5
    move-object/from16 v0, v29

    array-length v9, v0

    move/from16 v0, v117

    if-ge v0, v9, :cond_6

    aget-object v9, v29, v117

    move-object/from16 v0, v143

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v128

    move/from16 v0, v128

    if-ge v0, v6, :cond_a

    move-object/from16 v0, p0

    move/from16 v1, v128

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    aput v9, v30, v117

    :goto_6
    add-int/lit8 v117, v117, 0x1

    goto :goto_5

    :cond_a
    aput v26, v30, v117

    goto :goto_6

    :cond_b
    move-object/from16 v0, v146

    array-length v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, v146

    invoke-static {v0, v10, v9}, Ljava/util/Arrays;->sort([III)V

    move-object/from16 v17, v146

    :cond_c
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    sub-int v13, v7, v6

    move/from16 v0, v108

    int-to-float v14, v0

    move/from16 v0, v136

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v9, v0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    if-eqz v9, :cond_e

    const/16 v21, 0x1

    :goto_7
    const/16 v18, 0x14

    invoke-static/range {v10 .. v21}, Landroid/text/StaticLayout;->nSetupParagraph(J[CIFIF[IIIIZ)V

    const/16 v118, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_d

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v9, :cond_14

    :cond_d
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_f

    const/16 v123, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_10

    const/16 v137, 0x0

    :goto_9
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

    move/from16 v0, v119

    new-array v0, v0, [I

    move-object/from16 v118, v0

    const/16 v117, 0x0

    :goto_a
    move/from16 v0, v117

    move/from16 v1, v119

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_11

    const/16 v124, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_12

    const/16 v138, 0x0

    :goto_c
    add-int v9, v124, v138

    aput v9, v118, v117

    add-int/lit8 v117, v117, 0x1

    goto :goto_a

    :cond_e
    const/16 v21, 0x0

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v0, v9

    move/from16 v123, v0

    goto :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v0, v9

    move/from16 v137, v0

    goto :goto_9

    :cond_11
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v117

    add-int/lit8 v11, v123, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v124, v9, v10

    goto :goto_b

    :cond_12
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v117

    add-int/lit8 v11, v137, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v138, v9, v10

    goto :goto_c

    :cond_13
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v118

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    :cond_14
    move/from16 v147, v108

    move/from16 v148, v108

    if-eqz v118, :cond_15

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, v118

    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    aget v9, v118, v9

    sub-int v148, v147, v9

    :cond_15
    const/16 v74, 0x0

    move/from16 v20, v6

    move/from16 v129, v6

    const/16 v134, 0x0

    const/16 v130, 0x0

    const/16 v132, 0x0

    const/16 v133, 0x0

    const/16 v131, 0x0

    move/from16 v110, v6

    const/16 v111, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v112, 0x0

    const/16 v32, 0x0

    const/16 v116, 0x0

    const/16 v114, 0x0

    const/16 v113, 0x0

    const/16 v115, 0x0

    move/from16 v142, v6

    :goto_d
    move/from16 v0, v142

    if-ge v0, v7, :cond_3e

    if-nez v143, :cond_2a

    move/from16 v140, v7

    sub-int v141, v7, v142

    move-object/from16 v0, v46

    move/from16 v1, v141

    move-object/from16 v2, v31

    invoke-virtual {v4, v0, v1, v2}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    :goto_e
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, v116

    if-ge v9, v0, :cond_16

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v116, v0

    :cond_16
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v0, v113

    if-ge v9, v0, :cond_17

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v113, v0

    :cond_17
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, v115

    if-le v9, v0, :cond_18

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v115, v0

    :cond_18
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v0, v114

    if-le v9, v0, :cond_19

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v114, v0

    :cond_19
    if-eqz v118, :cond_1a

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, v118

    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    aget v9, v118, v9

    sub-int v148, v147, v9

    :cond_1a
    const/16 v105, 0x0

    move/from16 v122, v142

    :goto_f
    move/from16 v0, v122

    move/from16 v1, v140

    if-ge v0, v1, :cond_38

    sub-int v9, v122, v6

    aget-char v106, v12, v9

    const/16 v9, 0xa

    move/from16 v0, v106

    if-ne v0, v9, :cond_2b

    :goto_10
    const/16 v9, 0x20

    move/from16 v0, v106

    if-eq v0, v9, :cond_1b

    const/16 v9, 0x9

    move/from16 v0, v106

    if-ne v0, v9, :cond_2c

    :cond_1b
    const/16 v121, 0x1

    :goto_11
    move/from16 v0, v148

    int-to-float v9, v0

    cmpg-float v9, v74, v9

    if-lez v9, :cond_1c

    if-eqz v121, :cond_34

    :cond_1c
    move/from16 v111, v74

    if-nez v121, :cond_1d

    move/from16 v112, v74

    :cond_1d
    add-int/lit8 v110, v122, 0x1

    move/from16 v0, v116

    move/from16 v1, v53

    if-ge v0, v1, :cond_1e

    move/from16 v53, v116

    :cond_1e
    move/from16 v0, v113

    move/from16 v1, v51

    if-ge v0, v1, :cond_1f

    move/from16 v51, v113

    :cond_1f
    move/from16 v0, v115

    move/from16 v1, v52

    if-le v0, v1, :cond_20

    move/from16 v52, v115

    :cond_20
    move/from16 v0, v114

    move/from16 v1, v54

    if-le v0, v1, :cond_21

    move/from16 v54, v114

    :cond_21
    const/16 v9, 0x200b

    move/from16 v0, v106

    if-ne v0, v9, :cond_22

    const/16 v105, 0x1

    :cond_22
    const/16 v120, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2f

    if-nez v121, :cond_2d

    const/16 v9, 0x2f

    move/from16 v0, v106

    if-eq v0, v9, :cond_23

    const/16 v9, 0x2d

    move/from16 v0, v106

    if-ne v0, v9, :cond_24

    :cond_23
    add-int/lit8 v9, v122, 0x1

    move/from16 v0, v140

    if-ge v9, v0, :cond_2d

    add-int/lit8 v9, v122, 0x1

    sub-int/2addr v9, v6

    aget-char v9, v12, v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_2d

    :cond_24
    if-nez v105, :cond_25

    const/16 v9, 0x2e80

    move/from16 v0, v106

    if-lt v0, v9, :cond_25

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v106

    invoke-direct {v0, v1, v9}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v9

    if-eqz v9, :cond_25

    add-int/lit8 v9, v122, 0x1

    move/from16 v0, v140

    if-ge v9, v0, :cond_25

    add-int/lit8 v9, v122, 0x1

    sub-int/2addr v9, v6

    aget-char v9, v12, v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v9

    if-nez v9, :cond_2d

    :cond_25
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

    xor-int/lit8 v120, v9, 0x1

    :goto_12
    if-eqz v120, :cond_29

    move/from16 v134, v112

    add-int/lit8 v129, v122, 0x1

    move/from16 v0, v53

    move/from16 v1, v133

    if-ge v0, v1, :cond_26

    move/from16 v133, v53

    :cond_26
    move/from16 v0, v51

    move/from16 v1, v130

    if-ge v0, v1, :cond_27

    move/from16 v130, v51

    :cond_27
    move/from16 v0, v52

    move/from16 v1, v132

    if-le v0, v1, :cond_28

    move/from16 v132, v52

    :cond_28
    move/from16 v0, v54

    move/from16 v1, v131

    if-le v0, v1, :cond_29

    move/from16 v131, v54

    :cond_29
    add-int/lit8 v122, v122, 0x1

    goto/16 :goto_f

    :cond_2a
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v143

    move/from16 v1, v142

    invoke-interface {v0, v1, v7, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v140

    sub-int v141, v140, v142

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v143

    move/from16 v1, v142

    move/from16 v2, v140

    invoke-interface {v0, v1, v2, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v144

    check-cast v144, [Landroid/text/style/MetricAffectingSpan;

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v144

    move-object/from16 v1, v143

    invoke-static {v0, v1, v9}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v144

    check-cast v144, [Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v46

    move-object/from16 v1, v144

    move/from16 v2, v141

    move-object/from16 v3, v31

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto/16 :goto_e

    :cond_2b
    sub-int v9, v122, v6

    aget v9, v41, v9

    add-float v74, v74, v9

    goto/16 :goto_10

    :cond_2c
    const/16 v9, 0x200b

    move/from16 v0, v106

    if-eq v0, v9, :cond_1b

    const/16 v121, 0x0

    goto/16 :goto_11

    :cond_2d
    const/16 v120, 0x1

    goto :goto_12

    :cond_2e
    const/16 v120, 0x0

    goto :goto_12

    :cond_2f
    if-nez v121, :cond_32

    const/16 v9, 0x2f

    move/from16 v0, v106

    if-eq v0, v9, :cond_30

    const/16 v9, 0x2d

    move/from16 v0, v106

    if-ne v0, v9, :cond_31

    :cond_30
    add-int/lit8 v9, v122, 0x1

    move/from16 v0, v140

    if-ge v9, v0, :cond_32

    add-int/lit8 v9, v122, 0x1

    sub-int/2addr v9, v6

    aget-char v9, v12, v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_32

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

    goto/16 :goto_12

    :cond_32
    const/16 v120, 0x1

    goto/16 :goto_12

    :cond_33
    const/16 v120, 0x0

    goto/16 :goto_12

    :cond_34
    move/from16 v0, v129

    move/from16 v1, v20

    if-eq v0, v1, :cond_39

    move/from16 v107, v129

    move/from16 v22, v130

    move/from16 v23, v132

    move/from16 v24, v133

    move/from16 v25, v131

    move/from16 v45, v134

    :goto_13
    const/16 v9, 0xa

    move/from16 v0, v106

    if-ne v0, v9, :cond_35

    add-int/lit8 v107, v107, 0x1

    :cond_35
    move/from16 v21, v107

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_36

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v43

    if-ne v0, v9, :cond_36

    move/from16 v21, v7

    :cond_36
    const/16 v47, 0x1

    move-object/from16 v18, p0

    move-object/from16 v19, v5

    move/from16 v38, p2

    move/from16 v39, p3

    move-object/from16 v40, v12

    move/from16 v42, v6

    invoke-direct/range {v18 .. v47}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v26

    move/from16 v0, v107

    move/from16 v1, v140

    if-ge v0, v1, :cond_3c

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v116, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v114, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v113, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v115, v0

    :goto_14
    move/from16 v20, v107

    add-int/lit8 v122, v107, -0x1

    move/from16 v110, v107

    move/from16 v129, v107

    const/16 v74, 0x0

    const/16 v112, 0x0

    const/16 v54, 0x0

    const/16 v53, 0x0

    const/16 v52, 0x0

    const/16 v51, 0x0

    const/16 v131, 0x0

    const/16 v133, 0x0

    const/16 v132, 0x0

    const/16 v130, 0x0

    const/16 v32, 0x0

    add-int/lit8 v109, v109, -0x1

    if-gtz v109, :cond_37

    move/from16 v147, v136

    :cond_37
    move/from16 v0, v20

    move/from16 v1, v142

    if-ge v0, v1, :cond_3d

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/text/MeasuredText;->setPos(I)V

    move/from16 v140, v20

    :cond_38
    move/from16 v142, v140

    goto/16 :goto_d

    :cond_39
    move/from16 v0, v110

    move/from16 v1, v20

    if-eq v0, v1, :cond_3a

    move/from16 v107, v110

    move/from16 v22, v51

    move/from16 v23, v52

    move/from16 v24, v53

    move/from16 v25, v54

    move/from16 v45, v111

    goto/16 :goto_13

    :cond_3a
    add-int/lit8 v107, v20, 0x1

    :goto_15
    move/from16 v0, v107

    move/from16 v1, v140

    if-ge v0, v1, :cond_3b

    sub-int v9, v107, v6

    aget v9, v41, v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_3b

    add-int/lit8 v107, v107, 0x1

    goto :goto_15

    :cond_3b
    move/from16 v22, v113

    move/from16 v23, v115

    move/from16 v24, v116

    move/from16 v25, v114

    sub-int v9, v20, v6

    aget v45, v41, v9

    goto/16 :goto_13

    :cond_3c
    const/16 v115, 0x0

    const/16 v113, 0x0

    const/16 v114, 0x0

    const/16 v116, 0x0

    goto :goto_14

    :cond_3d
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_29

    move-object/from16 v0, p0

    iget-boolean v9, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v9, :cond_29

    return-void

    :cond_3e
    move/from16 v0, v20

    if-eq v7, v0, :cond_41

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_3f

    move-object/from16 v0, p0

    iget-boolean v9, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_41

    :cond_3f
    or-int v9, v53, v54

    or-int v9, v9, v52

    or-int v9, v9, v51

    if-nez v9, :cond_40

    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v53, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v54, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v51, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v52, v0

    :cond_40
    move/from16 v0, v37

    if-eq v7, v0, :cond_46

    const/16 v76, 0x1

    :goto_16
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

    invoke-direct/range {v47 .. v76}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v26

    :cond_41
    move v6, v7

    move/from16 v0, v37

    if-eq v7, v0, :cond_42

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_47

    move-object/from16 v0, p0

    iget-boolean v9, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v9, :cond_47

    :cond_42
    move/from16 v0, v37

    move/from16 v1, v99

    if-eq v0, v1, :cond_43

    add-int/lit8 v9, v37, -0x1

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_45

    :cond_43
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_44

    move-object/from16 v0, p0

    iget-boolean v9, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_45

    :cond_44
    const/16 v60, 0x0

    move-object/from16 v55, v4

    move-object/from16 v56, v5

    move/from16 v57, v37

    move/from16 v58, v37

    move-object/from16 v59, v8

    invoke-virtual/range {v55 .. v60}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v79, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v80, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v81, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v82, v0

    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v91, v0

    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v92, v0

    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v93, v0

    const/16 v102, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v89, 0x0

    const/16 v97, 0x0

    const/16 v98, 0x0

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

    invoke-direct/range {v75 .. v104}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v26

    :cond_45
    return-void

    :cond_46
    const/16 v76, 0x0

    goto/16 :goto_16

    :cond_47
    move v6, v7

    goto/16 :goto_1
.end method

.method private getTotalInsets(I)F
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    :cond_0
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    :cond_1
    int-to-float v1, v0

    return v1
.end method

.method private final isIdeographic(CZ)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/16 v0, 0x2e80

    if-lt p1, v0, :cond_0

    const/16 v0, 0x2fff

    if-gt p1, v0, :cond_0

    return v2

    :cond_0
    const/16 v0, 0x3000

    if-ne p1, v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x3040

    if-lt p1, v0, :cond_3

    const/16 v0, 0x309f

    if-gt p1, v0, :cond_3

    if-nez p2, :cond_2

    sparse-switch p1, :sswitch_data_0

    :cond_2
    return v2

    :sswitch_0
    return v3

    :cond_3
    const/16 v0, 0x30a0

    if-lt p1, v0, :cond_5

    const/16 v0, 0x30ff

    if-gt p1, v0, :cond_5

    if-nez p2, :cond_4

    sparse-switch p1, :sswitch_data_1

    :cond_4
    return v2

    :sswitch_1
    return v3

    :cond_5
    const/16 v0, 0x3400

    if-lt p1, v0, :cond_6

    const/16 v0, 0x4db5

    if-gt p1, v0, :cond_6

    return v2

    :cond_6
    const/16 v0, 0x4e00

    if-lt p1, v0, :cond_7

    const v0, 0x9fbb

    if-gt p1, v0, :cond_7

    return v2

    :cond_7
    const v0, 0xf900

    if-lt p1, v0, :cond_8

    const v0, 0xfad9

    if-gt p1, v0, :cond_8

    return v2

    :cond_8
    const v0, 0xa000

    if-lt p1, v0, :cond_9

    const v0, 0xa48f

    if-gt p1, v0, :cond_9

    return v2

    :cond_9
    const v0, 0xa490

    if-lt p1, v0, :cond_a

    const v0, 0xa4cf

    if-gt p1, v0, :cond_a

    return v2

    :cond_a
    const v0, 0xfe62

    if-lt p1, v0, :cond_b

    const v0, 0xfe66

    if-gt p1, v0, :cond_b

    return v2

    :cond_b
    const v0, 0xff10

    if-lt p1, v0, :cond_c

    const v0, 0xff19

    if-gt p1, v0, :cond_c

    return v2

    :cond_c
    iget v0, p0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    const/16 v0, 0x3001

    if-lt p1, v0, :cond_e

    const/16 v0, 0x301f

    if-gt p1, v0, :cond_e

    if-nez p2, :cond_d

    packed-switch p1, :pswitch_data_0

    :cond_d
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    :pswitch_1
    return v2

    :pswitch_2
    return v3

    :pswitch_3
    return v3

    :cond_e
    const v0, 0xff01

    if-lt p1, v0, :cond_10

    const v0, 0xff9f

    if-gt p1, v0, :cond_10

    if-nez p2, :cond_f

    sparse-switch p1, :sswitch_data_2

    :cond_f
    sparse-switch p1, :sswitch_data_3

    return v2

    :sswitch_2
    return v3

    :sswitch_3
    return v3

    :cond_10
    const/16 v0, 0x21

    if-lt p1, v0, :cond_12

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_12

    if-nez p2, :cond_11

    sparse-switch p1, :sswitch_data_4

    :cond_11
    return v2

    :sswitch_4
    return v3

    :cond_12
    const/16 v0, 0x5d

    if-eq p1, v0, :cond_13

    const/16 v0, 0x7d

    if-ne p1, v0, :cond_14

    :cond_13
    return p2

    :cond_14
    const/16 v0, 0x90

    if-eq p1, v0, :cond_13

    const/16 v0, 0xb0

    if-eq p1, v0, :cond_13

    const/16 v0, 0x2019

    if-eq p1, v0, :cond_13

    const/16 v0, 0x201d

    if-eq p1, v0, :cond_13

    const/16 v0, 0x2032

    if-eq p1, v0, :cond_13

    const/16 v0, 0x2033

    if-eq p1, v0, :cond_13

    const/16 v0, 0x309b

    if-eq p1, v0, :cond_13

    const/16 v0, 0x309c

    if-eq p1, v0, :cond_13

    const/16 v0, 0x30fb

    if-eq p1, v0, :cond_13

    :cond_15
    return v3

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

    :sswitch_data_3
    .sparse-switch
        0xff08 -> :sswitch_3
        0xff3b -> :sswitch_3
        0xff5b -> :sswitch_3
        0xff62 -> :sswitch_3
    .end sparse-switch

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

.method static native nLoadHyphenator(Ljava/nio/ByteBuffer;III)J
.end method

.method private static native nNewBuilder()J
.end method

.method private static native nSetIndents(J[I)V
.end method

.method private static native nSetLocale(JLjava/lang/String;J)V
.end method

.method private static native nSetupParagraph(J[CIFIF[IIIIZ)V
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 30

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v28, v23, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v28

    add-int/lit8 v29, v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v2, v0

    move/from16 v0, v29

    if-lt v0, v2, :cond_0

    const-class v2, Landroid/text/Layout$Directions;

    invoke-static/range {v29 .. v29}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/Layout$Directions;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-static {v2, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    move-object/from16 v0, v21

    array-length v2, v0

    new-array v0, v2, [I

    move-object/from16 v20, v0

    move-object/from16 v0, v26

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v26, v20

    :cond_0
    if-eqz p11, :cond_3

    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    const/16 v22, 0x0

    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_2

    aget-object v2, p11, v22

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    aget-object v2, p11, v22

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v22

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

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

    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    :cond_3
    if-nez v23, :cond_d

    const/16 v19, 0x1

    :goto_2
    add-int/lit8 v2, v23, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_e

    const/4 v14, 0x1

    :goto_3
    if-eqz p25, :cond_6

    if-eqz p29, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_f

    const/4 v12, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    if-nez p29, :cond_5

    :cond_4
    if-eqz v19, :cond_10

    xor-int/lit8 v2, p29, 0x1

    if-eqz v2, :cond_10

    :cond_5
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-eq v0, v2, :cond_10

    const/4 v15, 0x1

    :goto_5
    if-eqz v15, :cond_6

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

    invoke-direct/range {v2 .. v13}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z[C)V

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-nez v2, :cond_7

    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_14

    :cond_7
    const/16 v24, 0x1

    :goto_6
    if-eqz v19, :cond_9

    if-eqz p21, :cond_8

    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    :cond_8
    if-eqz p20, :cond_9

    move/from16 p4, p6

    :cond_9
    if-eqz v24, :cond_b

    if-eqz p21, :cond_a

    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    :cond_a
    if-eqz p20, :cond_b

    move/from16 p5, p7

    :cond_b
    if-eqz p15, :cond_16

    xor-int/lit8 v2, v24, 0x1

    if-eqz v2, :cond_16

    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v0, v2

    move-wide/from16 v16, v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_15

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v16

    double-to-int v0, v2

    move/from16 v18, v0

    :goto_7
    add-int/lit8 v2, v28, 0x0

    aput p2, v26, v2

    add-int/lit8 v2, v28, 0x1

    aput p8, v26, v2

    add-int/lit8 v2, v28, 0x2

    add-int v3, p5, v18

    aput v3, v26, v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-nez v2, :cond_c

    if-eqz v14, :cond_c

    if-eqz p20, :cond_17

    move/from16 v27, p7

    :goto_8
    sub-int v2, v27, p4

    add-int v2, v2, p8

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    :cond_c
    sub-int v2, p5, p4

    add-int v2, v2, v18

    add-int p8, p8, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v28

    add-int/lit8 v2, v2, 0x0

    aput p3, v26, v2

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v28

    add-int/lit8 v2, v2, 0x1

    aput p8, v26, v2

    add-int/lit8 v2, v28, 0x0

    aget v3, v26, v2

    const/high16 v4, 0x20000000

    and-int v4, v4, p14

    or-int/2addr v3, v4

    aput v3, v26, v2

    add-int/lit8 v2, v28, 0x3

    aput p14, v26, v2

    add-int/lit8 v2, v28, 0x0

    aget v3, v26, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v26, v2

    sget-object v25, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eqz p18, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v25, v2, v23

    :goto_9
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    return p8

    :cond_d
    const/16 v19, 0x0

    goto/16 :goto_2

    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_3

    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_4

    :cond_10
    if-nez v19, :cond_13

    if-nez v14, :cond_11

    xor-int/lit8 v2, p29, 0x1

    if-eqz v2, :cond_13

    :cond_11
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_12

    const/4 v15, 0x1

    goto/16 :goto_5

    :cond_12
    const/4 v15, 0x0

    goto/16 :goto_5

    :cond_13
    const/4 v15, 0x0

    goto/16 :goto_5

    :cond_14
    const/16 v24, 0x0

    goto/16 :goto_6

    :cond_15
    move-wide/from16 v0, v16

    neg-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v18, v0

    goto/16 :goto_7

    :cond_16
    const/16 v18, 0x0

    goto/16 :goto_7

    :cond_17
    move/from16 v27, p5

    goto/16 :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v23

    goto :goto_9
.end method


# virtual methods
.method generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 119

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    move/from16 v72, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    move/from16 v37, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v46, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    move/from16 v101, v0

    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v9, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    int-to-float v0, v9

    move/from16 v74, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v43, v0

    new-instance v95, Landroid/text/StaticLayout$LineBreaks;

    invoke-direct/range {v95 .. v95}, Landroid/text/StaticLayout$LineBreaks;-><init>()V

    const/4 v9, 0x4

    new-array v0, v9, [I

    move-object/from16 v108, v0

    const/16 v9, 0x10

    new-array v0, v9, [I

    move-object/from16 v85, v0

    invoke-virtual/range {v46 .. v46}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-static {v0, v9}, Landroid/text/StaticLayout$Builder;->-wrap1(Landroid/text/StaticLayout$Builder;Ljava/util/Locale;)V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    if-eqz v9, :cond_0

    const-string/jumbo v9, "ko"

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    if-lez v9, :cond_4

    invoke-direct/range {p0 .. p3}, Landroid/text/StaticLayout;->generateForCJK(Landroid/text/StaticLayout$Builder;ZZ)V

    return-void

    :cond_1
    const-string/jumbo v9, "ja"

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v9, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    goto :goto_0

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

    :cond_3
    const/4 v9, 0x4

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    const/16 v26, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v27, v9

    if-nez v9, :cond_5

    const/4 v9, 0x0

    cmpl-float v9, v28, v9

    if-eqz v9, :cond_8

    :cond_5
    const/16 v33, 0x1

    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v31, v0

    const/16 v30, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    const/16 v114, 0x0

    instance-of v9, v5, Landroid/text/Spanned;

    if-eqz v9, :cond_6

    move-object/from16 v114, v5

    check-cast v114, Landroid/text/Spanned;

    :cond_6
    move/from16 v6, v72

    :goto_2
    move/from16 v0, v37

    if-gt v6, v0, :cond_36

    const/16 v9, 0xa

    move/from16 v0, v37

    invoke-static {v5, v9, v6, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    if-gez v7, :cond_9

    move/from16 v7, v37

    :goto_3
    const/4 v15, 0x1

    move/from16 v82, v101

    move/from16 v103, v101

    const/16 v29, 0x0

    if-eqz v114, :cond_b

    const-class v9, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v114

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v106

    check-cast v106, [Landroid/text/style/LeadingMarginSpan;

    const/16 v89, 0x0

    :goto_4
    move-object/from16 v0, v106

    array-length v9, v0

    move/from16 v0, v89

    if-ge v0, v9, :cond_a

    aget-object v97, v106, v89

    aget-object v9, v106, v89

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v82, v82, v9

    aget-object v9, v106, v89

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v103, v103, v9

    move-object/from16 v0, v97

    instance-of v9, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v9, :cond_7

    move-object/from16 v98, v97

    check-cast v98, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface/range {v98 .. v98}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v9

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    :cond_7
    add-int/lit8 v89, v89, 0x1

    goto :goto_4

    :cond_8
    const/16 v33, 0x0

    goto :goto_1

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_a
    const-class v9, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v114

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v29

    check-cast v29, [Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v29

    array-length v9, v0

    if-nez v9, :cond_c

    const/16 v29, 0x0

    :cond_b
    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    iget-object v12, v4, Landroid/text/MeasuredText;->mChars:[C

    iget-object v0, v4, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v41, v0

    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v34, v0

    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v35, v0

    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v36, v0

    const/16 v17, 0x0

    if-eqz v114, :cond_11

    const-class v9, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v114

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v116

    check-cast v116, [Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v116

    array-length v9, v0

    if-lez v9, :cond_11

    move-object/from16 v0, v116

    array-length v9, v0

    new-array v0, v9, [I

    move-object/from16 v117, v0

    const/16 v89, 0x0

    :goto_5
    move-object/from16 v0, v116

    array-length v9, v0

    move/from16 v0, v89

    if-ge v0, v9, :cond_10

    aget-object v9, v116, v89

    invoke-interface {v9}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v9

    aput v9, v117, v89

    add-int/lit8 v89, v89, 0x1

    goto :goto_5

    :cond_c
    if-eqz v30, :cond_d

    move-object/from16 v0, v30

    array-length v9, v0

    move-object/from16 v0, v29

    array-length v10, v0

    if-ge v9, v10, :cond_e

    :cond_d
    move-object/from16 v0, v29

    array-length v9, v0

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v30

    :cond_e
    const/16 v89, 0x0

    :goto_6
    move-object/from16 v0, v29

    array-length v9, v0

    move/from16 v0, v89

    if-ge v0, v9, :cond_b

    aget-object v9, v29, v89

    move-object/from16 v0, v114

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v100

    move/from16 v0, v100

    if-ge v0, v6, :cond_f

    move-object/from16 v0, p0

    move/from16 v1, v100

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    aput v9, v30, v89

    :goto_7
    add-int/lit8 v89, v89, 0x1

    goto :goto_6

    :cond_f
    aput v26, v30, v89

    goto :goto_7

    :cond_10
    move-object/from16 v0, v117

    array-length v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, v117

    invoke-static {v0, v10, v9}, Ljava/util/Arrays;->sort([III)V

    move-object/from16 v17, v117

    :cond_11
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    sub-int v13, v7, v6

    move/from16 v0, v82

    int-to-float v14, v0

    move/from16 v0, v103

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v9, v0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    if-eqz v9, :cond_13

    const/16 v21, 0x1

    :goto_8
    const/16 v18, 0x14

    invoke-static/range {v10 .. v21}, Landroid/text/StaticLayout;->nSetupParagraph(J[CIFIF[IIIIZ)V

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_12

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v9, :cond_19

    :cond_12
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_14

    const/16 v93, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_15

    const/16 v104, 0x0

    :goto_a
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

    move/from16 v0, v91

    new-array v0, v0, [I

    move-object/from16 v90, v0

    const/16 v89, 0x0

    :goto_b
    move/from16 v0, v89

    move/from16 v1, v91

    if-ge v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_16

    const/16 v94, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_17

    const/16 v105, 0x0

    :goto_d
    add-int v9, v94, v105

    aput v9, v90, v89

    add-int/lit8 v89, v89, 0x1

    goto :goto_b

    :cond_13
    const/16 v21, 0x0

    goto :goto_8

    :cond_14
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v0, v9

    move/from16 v93, v0

    goto :goto_9

    :cond_15
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v0, v9

    move/from16 v104, v0

    goto :goto_a

    :cond_16
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v89

    add-int/lit8 v11, v93, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v94, v9, v10

    goto :goto_c

    :cond_17
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v89

    add-int/lit8 v11, v104, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v105, v9, v10

    goto :goto_d

    :cond_18
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v90

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    :cond_19
    const/16 v86, 0x0

    const/16 v109, 0x0

    move/from16 v113, v6

    :goto_e
    move/from16 v0, v113

    if-ge v0, v7, :cond_1d

    mul-int/lit8 v9, v86, 0x4

    move-object/from16 v0, v85

    array-length v10, v0

    if-lt v9, v10, :cond_1a

    mul-int/lit8 v9, v86, 0x4

    mul-int/lit8 v9, v9, 0x2

    new-array v0, v9, [I

    move-object/from16 v88, v0

    mul-int/lit8 v9, v86, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, v85

    move-object/from16 v1, v88

    invoke-static {v0, v10, v1, v11, v9}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v85, v88

    :cond_1a
    move-object/from16 v0, v108

    array-length v9, v0

    move/from16 v0, v109

    if-lt v0, v9, :cond_1b

    mul-int/lit8 v9, v109, 0x2

    new-array v0, v9, [I

    move-object/from16 v88, v0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v108

    move-object/from16 v1, v88

    move/from16 v2, v109

    invoke-static {v0, v9, v1, v10, v2}, Ljava/lang/System;->arraycopy([II[III)V

    move-object/from16 v108, v88

    :cond_1b
    if-nez v114, :cond_1c

    move/from16 v107, v7

    sub-int v112, v7, v113

    move-object/from16 v0, v46

    move/from16 v1, v112

    move-object/from16 v2, v31

    invoke-virtual {v4, v0, v1, v2}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    :goto_f
    mul-int/lit8 v9, v86, 0x4

    add-int/lit8 v9, v9, 0x0

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    aput v10, v85, v9

    mul-int/lit8 v9, v86, 0x4

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    aput v10, v85, v9

    mul-int/lit8 v9, v86, 0x4

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    aput v10, v85, v9

    mul-int/lit8 v9, v86, 0x4

    add-int/lit8 v9, v9, 0x3

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    aput v10, v85, v9

    add-int/lit8 v86, v86, 0x1

    aput v107, v108, v109

    add-int/lit8 v109, v109, 0x1

    move/from16 v113, v107

    goto :goto_e

    :cond_1c
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v114

    move/from16 v1, v113

    invoke-interface {v0, v1, v7, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v107

    sub-int v112, v107, v113

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v114

    move/from16 v1, v113

    move/from16 v2, v107

    invoke-interface {v0, v1, v2, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v115

    check-cast v115, [Landroid/text/style/MetricAffectingSpan;

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v115

    move-object/from16 v1, v114

    invoke-static {v0, v1, v9}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v115

    check-cast v115, [Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v46

    move-object/from16 v1, v115

    move/from16 v2, v112

    move-object/from16 v3, v31

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto :goto_f

    :cond_1d
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v41

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nGetWidths(J[F)V

    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v95

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v21, v0

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

    invoke-static/range {v18 .. v24}, Landroid/text/StaticLayout;->nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I

    move-result v78

    move-object/from16 v0, v95

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v80, v0

    move-object/from16 v0, v95

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v96, v0

    move-object/from16 v0, v95

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v84, v0

    const/16 v89, 0x0

    :goto_10
    add-int/lit8 v9, v78, -0x1

    move/from16 v0, v89

    if-ge v0, v9, :cond_1f

    aget v99, v80, v89

    :goto_11
    add-int v9, v6, v99

    if-ge v9, v7, :cond_1e

    aget v9, v41, v99

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_1e

    add-int/lit8 v99, v99, 0x1

    goto :goto_11

    :cond_1e
    aput v99, v80, v89

    aget v9, v80, v89

    if-lt v9, v7, :cond_21

    add-int/lit8 v78, v78, -0x1

    :cond_1f
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int v102, v9, v10

    if-eqz v43, :cond_25

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v43

    if-eq v0, v9, :cond_22

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_24

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v43

    if-eq v0, v9, :cond_23

    const/16 v81, 0x1

    :goto_12
    if-lez v102, :cond_29

    move/from16 v0, v102

    move/from16 v1, v78

    if-ge v0, v1, :cond_29

    if-eqz v81, :cond_29

    const/16 v118, 0x0

    const/16 v83, 0x0

    add-int/lit8 v89, v102, -0x1

    :goto_13
    move/from16 v0, v89

    move/from16 v1, v78

    if-ge v0, v1, :cond_28

    add-int/lit8 v9, v78, -0x1

    move/from16 v0, v89

    if-ne v0, v9, :cond_26

    aget v9, v96, v89

    add-float v118, v118, v9

    :cond_20
    aget v9, v84, v89

    const/high16 v10, 0x20000000

    and-int/2addr v9, v10

    or-int v83, v83, v9

    add-int/lit8 v89, v89, 0x1

    goto :goto_13

    :cond_21
    add-int/lit8 v89, v89, 0x1

    goto :goto_10

    :cond_22
    const/16 v81, 0x1

    goto :goto_12

    :cond_23
    const/16 v81, 0x0

    goto :goto_12

    :cond_24
    const/16 v81, 0x0

    goto :goto_12

    :cond_25
    const/16 v81, 0x0

    goto :goto_12

    :cond_26
    if-nez v89, :cond_27

    const/16 v92, 0x0

    :goto_14
    aget v9, v80, v89

    move/from16 v0, v92

    if-ge v0, v9, :cond_20

    aget v9, v41, v92

    add-float v118, v118, v9

    add-int/lit8 v92, v92, 0x1

    goto :goto_14

    :cond_27
    add-int/lit8 v9, v89, -0x1

    aget v92, v80, v9

    goto :goto_14

    :cond_28
    add-int/lit8 v9, v102, -0x1

    add-int/lit8 v10, v78, -0x1

    aget v10, v80, v10

    aput v10, v80, v9

    add-int/lit8 v9, v102, -0x1

    aput v118, v96, v9

    add-int/lit8 v9, v102, -0x1

    aput v83, v84, v9

    move/from16 v78, v102

    :cond_29
    move/from16 v20, v6

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v87, 0x0

    const/16 v110, 0x0

    const/16 v79, 0x0

    move/from16 v113, v6

    move/from16 v111, v110

    :goto_15
    move/from16 v0, v113

    if-ge v0, v7, :cond_35

    add-int/lit8 v110, v111, 0x1

    aget v107, v108, v111

    mul-int/lit8 v9, v87, 0x4

    add-int/lit8 v9, v9, 0x0

    aget v9, v85, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    mul-int/lit8 v9, v87, 0x4

    add-int/lit8 v9, v9, 0x1

    aget v9, v85, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    mul-int/lit8 v9, v87, 0x4

    add-int/lit8 v9, v9, 0x2

    aget v9, v85, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    mul-int/lit8 v9, v87, 0x4

    add-int/lit8 v9, v9, 0x3

    aget v9, v85, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/lit8 v87, v87, 0x1

    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, v24

    if-ge v9, v0, :cond_2a

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v24, v0

    :cond_2a
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v0, v22

    if-ge v9, v0, :cond_2b

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    :cond_2b
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, v23

    if-le v9, v0, :cond_2c

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v23, v0

    :cond_2c
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v0, v25

    if-le v9, v0, :cond_2d

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v25, v0

    :cond_2d
    :goto_16
    move/from16 v0, v79

    move/from16 v1, v78

    if-ge v0, v1, :cond_2e

    aget v9, v80, v79

    add-int/2addr v9, v6

    move/from16 v0, v113

    if-ge v9, v0, :cond_2e

    add-int/lit8 v79, v79, 0x1

    goto :goto_16

    :cond_2e
    move/from16 v0, v79

    move/from16 v1, v78

    if-ge v0, v1, :cond_34

    aget v9, v80, v79

    add-int/2addr v9, v6

    move/from16 v0, v107

    if-gt v9, v0, :cond_34

    aget v9, v80, v79

    add-int v21, v6, v9

    move/from16 v0, v21

    move/from16 v1, v37

    if-ge v0, v1, :cond_31

    const/16 v47, 0x1

    :goto_17
    move/from16 v44, v74

    if-nez v79, :cond_32

    move/from16 v0, v82

    move/from16 v1, v101

    if-eq v0, v1, :cond_32

    sub-int v9, v101, v82

    int-to-float v9, v9

    sub-float v44, v74, v9

    :cond_2f
    :goto_18
    const/4 v9, 0x0

    cmpg-float v9, v44, v9

    if-gez v9, :cond_30

    move/from16 v44, v74

    :cond_30
    aget v32, v84, v79

    aget v45, v96, v79

    move-object/from16 v18, p0

    move-object/from16 v19, v5

    move/from16 v38, p2

    move/from16 v39, p3

    move-object/from16 v40, v12

    move/from16 v42, v6

    invoke-direct/range {v18 .. v47}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v26

    move/from16 v0, v21

    move/from16 v1, v107

    if-ge v0, v1, :cond_33

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v24, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v23, v0

    :goto_19
    move/from16 v20, v21

    add-int/lit8 v79, v79, 0x1

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v9, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v9, :cond_2e

    return-void

    :cond_31
    const/16 v47, 0x0

    goto :goto_17

    :cond_32
    if-eqz v79, :cond_2f

    move/from16 v0, v103

    move/from16 v1, v101

    if-eq v0, v1, :cond_2f

    sub-int v9, v101, v103

    int-to-float v9, v9

    sub-float v44, v74, v9

    goto :goto_18

    :cond_33
    const/16 v23, 0x0

    const/16 v22, 0x0

    const/16 v25, 0x0

    const/16 v24, 0x0

    goto :goto_19

    :cond_34
    move/from16 v113, v107

    move/from16 v111, v110

    goto/16 :goto_15

    :cond_35
    move/from16 v0, v37

    if-ne v7, v0, :cond_39

    :cond_36
    move/from16 v0, v37

    move/from16 v1, v72

    if-eq v0, v1, :cond_37

    add-int/lit8 v9, v37, -0x1

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_38

    :cond_37
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v9, v10, :cond_38

    move-object/from16 v48, v4

    move-object/from16 v49, v5

    move/from16 v50, v37

    move/from16 v51, v37

    move-object/from16 v52, v8

    move-object/from16 v53, p1

    invoke-virtual/range {v48 .. v53}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v52, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v53, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v54, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v55, v0

    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v64, v0

    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v65, v0

    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v66, v0

    const/16 v75, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v62, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

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

    invoke-direct/range {v48 .. v77}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v26

    :cond_38
    return-void

    :cond_39
    move v6, v7

    goto/16 :goto_2
.end method

.method public getBottomPadding()I
    .locals 1

    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

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

    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

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

    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHeight(Z)I
    .locals 4

    const/4 v3, -0x1

    if-eqz p1, :cond_0

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-ne v0, v3, :cond_0

    const-string/jumbo v0, "StaticLayout"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "StaticLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "maxLineHeight should not be -1.  maxLines:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " lineCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/text/StaticLayout;->mLineCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    :goto_0
    return v0

    :cond_1
    invoke-super {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getHyphen(I)I
    .locals 2

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

    const/4 v3, 0x0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v2, v2, v3

    return v2

    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v2, :cond_2

    return v3

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

    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_6

    const/4 v0, 0x0

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v0, v2, v3

    :cond_4
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v1, v2, v3

    :cond_5
    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    return v2

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

    const/4 v0, 0x0

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

    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 2

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1

    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 7

    const/4 v6, 0x0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    const/4 v3, -0x1

    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_0

    :cond_1
    if-gez v3, :cond_2

    return v6

    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2

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

    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2

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

    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
